; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tw32_mailbox_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tw32_mailbox_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 (%struct.tg3*, i32)*, i32 (%struct.tg3*, i32, i32)* }

@FLUSH_POSTED_WRITES = common dso_local global i32 0, align 4
@MBOX_WRITE_REORDER = common dso_local global i32 0, align 4
@ICH_WORKAROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32, i32)* @tw32_mailbox_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw32_mailbox_flush(%struct.tg3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tg3*, %struct.tg3** %4, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 1
  %9 = load i32 (%struct.tg3*, i32, i32)*, i32 (%struct.tg3*, i32, i32)** %8, align 8
  %10 = load %struct.tg3*, %struct.tg3** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 %9(%struct.tg3* %10, i32 %11, i32 %12)
  %14 = load %struct.tg3*, %struct.tg3** %4, align 8
  %15 = load i32, i32* @FLUSH_POSTED_WRITES, align 4
  %16 = call i64 @tg3_flag(%struct.tg3* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load %struct.tg3*, %struct.tg3** %4, align 8
  %20 = load i32, i32* @MBOX_WRITE_REORDER, align 4
  %21 = call i64 @tg3_flag(%struct.tg3* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = load %struct.tg3*, %struct.tg3** %4, align 8
  %25 = load i32, i32* @ICH_WORKAROUND, align 4
  %26 = call i64 @tg3_flag(%struct.tg3* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23, %3
  %29 = load %struct.tg3*, %struct.tg3** %4, align 8
  %30 = getelementptr inbounds %struct.tg3, %struct.tg3* %29, i32 0, i32 0
  %31 = load i32 (%struct.tg3*, i32)*, i32 (%struct.tg3*, i32)** %30, align 8
  %32 = load %struct.tg3*, %struct.tg3** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 %31(%struct.tg3* %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %23, %18
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
