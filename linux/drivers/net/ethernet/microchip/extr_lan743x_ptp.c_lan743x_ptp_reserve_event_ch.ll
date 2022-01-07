; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_reserve_event_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_reserve_event_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@LAN743X_PTP_NUMBER_OF_EVENT_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_ptp_reserve_event_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_ptp_reserve_event_ch(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca %struct.lan743x_ptp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %6 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %6, i32 0, i32 0
  store %struct.lan743x_ptp* %7, %struct.lan743x_ptp** %3, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %11 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @LAN743X_PTP_NUMBER_OF_EVENT_CHANNELS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %20 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %27 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %13

35:                                               ; preds = %23, %13
  %36 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %37 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
