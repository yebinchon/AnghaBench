; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_get_tx_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_get_tx_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_tx_context = type { i32 }
%struct.gs_can = type { i32, %struct.gs_tx_context* }

@GS_MAX_TX_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gs_tx_context* (%struct.gs_can*, i32)* @gs_get_tx_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gs_tx_context* @gs_get_tx_context(%struct.gs_can* %0, i32 %1) #0 {
  %3 = alloca %struct.gs_tx_context*, align 8
  %4 = alloca %struct.gs_can*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.gs_can* %0, %struct.gs_can** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @GS_MAX_TX_URBS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %12 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %16 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %15, i32 0, i32 1
  %17 = load %struct.gs_tx_context*, %struct.gs_tx_context** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.gs_tx_context, %struct.gs_tx_context* %17, i64 %19
  %21 = getelementptr inbounds %struct.gs_tx_context, %struct.gs_tx_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %10
  %26 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %27 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %31 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %30, i32 0, i32 1
  %32 = load %struct.gs_tx_context*, %struct.gs_tx_context** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.gs_tx_context, %struct.gs_tx_context* %32, i64 %34
  store %struct.gs_tx_context* %35, %struct.gs_tx_context** %3, align 8
  br label %42

36:                                               ; preds = %10
  %37 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %38 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %2
  store %struct.gs_tx_context* null, %struct.gs_tx_context** %3, align 8
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.gs_tx_context*, %struct.gs_tx_context** %3, align 8
  ret %struct.gs_tx_context* %43
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
