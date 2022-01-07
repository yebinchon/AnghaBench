; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_ps_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_ps_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.sk_buff = type { i32 }
%struct.ath_common = type { i32 }

@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Reconfigure beacon timers based on synchronized timestamp\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Received DTIM beacon indicating buffered broadcast/multicast frame(s)\0A\00", align 1
@PS_WAIT_FOR_CAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"PS wait for CAB frames timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.sk_buff*)* @ath_rx_ps_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rx_ps_beacon(%struct.ath_softc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(i32 %9)
  store %struct.ath_common* %10, %struct.ath_common** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 36
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %90

16:                                               ; preds = %2
  %17 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PS_BEACON_SYNC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %16
  %30 = load i32, i32* @PS_BEACON_SYNC, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %37 = load i32, i32* @PS, align 4
  %38 = call i32 @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %29
  %42 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON_ONCE(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %54 = call i32 @ath9k_set_beacon(%struct.ath_softc* %53)
  br label %55

55:                                               ; preds = %52, %41, %29
  %56 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %57 = call i32 @ath9k_p2p_beacon_sync(%struct.ath_softc* %56)
  br label %58

58:                                               ; preds = %55, %16
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i64 @ath_beacon_dtim_pending_cab(%struct.sk_buff* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %64 = load i32, i32* @PS, align 4
  %65 = call i32 @ath_dbg(%struct.ath_common* %63, i32 %64, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %67 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %90

73:                                               ; preds = %58
  %74 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load i32, i32* @PS_WAIT_FOR_CAB, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %88 = load i32, i32* @PS, align 4
  %89 = call i32 @ath_dbg(%struct.ath_common* %87, i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %15, %62, %80, %73
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ath9k_set_beacon(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_p2p_beacon_sync(%struct.ath_softc*) #1

declare dso_local i64 @ath_beacon_dtim_pending_cab(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
