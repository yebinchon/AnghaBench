; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_mailbox.c_octeon_mbox_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_mailbox.c_octeon_mbox_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.octeon_mbox** }
%struct.octeon_mbox = type { i32, i32, i32, %struct.octeon_mbox_cmd }
%struct.octeon_mbox_cmd = type { i32 }

@OCTEON_MBOX_STATE_RESPONSE_PENDING = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_IDLE = common dso_local global i32 0, align 4
@OCTEON_PFVFSIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_mbox_cancel(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.octeon_mbox*, align 8
  %7 = alloca %struct.octeon_mbox_cmd*, align 8
  %8 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 0
  %11 = load %struct.octeon_mbox**, %struct.octeon_mbox*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.octeon_mbox*, %struct.octeon_mbox** %11, i64 %13
  %15 = load %struct.octeon_mbox*, %struct.octeon_mbox** %14, align 8
  store %struct.octeon_mbox* %15, %struct.octeon_mbox** %6, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.octeon_mbox*, %struct.octeon_mbox** %6, align 8
  %17 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %16, i32 0, i32 1
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.octeon_mbox*, %struct.octeon_mbox** %6, align 8
  %21 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %20, i32 0, i32 3
  store %struct.octeon_mbox_cmd* %21, %struct.octeon_mbox_cmd** %7, align 8
  %22 = load %struct.octeon_mbox*, %struct.octeon_mbox** %6, align 8
  %23 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_PENDING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.octeon_mbox*, %struct.octeon_mbox** %6, align 8
  %30 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %29, i32 0, i32 1
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  store i32 1, i32* %3, align 4
  br label %48

33:                                               ; preds = %2
  %34 = load i32, i32* @OCTEON_MBOX_STATE_IDLE, align 4
  %35 = load %struct.octeon_mbox*, %struct.octeon_mbox** %6, align 8
  %36 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %7, align 8
  %38 = call i32 @memset(%struct.octeon_mbox_cmd* %37, i32 0, i32 4)
  %39 = load i32, i32* @OCTEON_PFVFSIG, align 4
  %40 = load %struct.octeon_mbox*, %struct.octeon_mbox** %6, align 8
  %41 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @writeq(i32 %39, i32 %42)
  %44 = load %struct.octeon_mbox*, %struct.octeon_mbox** %6, align 8
  %45 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %44, i32 0, i32 1
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %33, %28
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.octeon_mbox_cmd*, i32, i32) #1

declare dso_local i32 @writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
