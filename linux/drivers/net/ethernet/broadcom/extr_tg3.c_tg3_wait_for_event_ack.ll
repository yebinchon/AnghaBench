; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_wait_for_event_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_wait_for_event_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i64 }

@TG3_FW_EVENT_TIMEOUT_USEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@GRC_RX_CPU_EVENT = common dso_local global i32 0, align 4
@GRC_RX_CPU_DRIVER_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_wait_for_event_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_wait_for_event_ack(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %6 = load %struct.tg3*, %struct.tg3** %2, align 8
  %7 = getelementptr inbounds %struct.tg3, %struct.tg3* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  %10 = load i32, i32* @TG3_FW_EVENT_TIMEOUT_USEC, align 4
  %11 = call i64 @usecs_to_jiffies(i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = load i64, i64* @jiffies, align 8
  %14 = sub nsw i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %53

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @jiffies_to_usecs(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TG3_FW_EVENT_TIMEOUT_USEC, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @TG3_FW_EVENT_TIMEOUT_USEC, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, 3
  %29 = add i32 %28, 1
  store i32 %29, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %50, %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32, i32* @GRC_RX_CPU_EVENT, align 4
  %36 = call i32 @tr32(i32 %35)
  %37 = load i32, i32* @GRC_RX_CPU_DRIVER_EVENT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %53

41:                                               ; preds = %34
  %42 = load %struct.tg3*, %struct.tg3** %2, align 8
  %43 = getelementptr inbounds %struct.tg3, %struct.tg3* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @pci_channel_offline(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %53

48:                                               ; preds = %41
  %49 = call i32 @udelay(i32 8)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %30

53:                                               ; preds = %17, %47, %40, %30
  ret void
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @jiffies_to_usecs(i64) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
