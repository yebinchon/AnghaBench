; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_check_ani.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_check_ani.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__*, %struct.ath_hw* }
%struct.TYPE_2__ = type { %struct.ath_beacon_config }
%struct.ath_beacon_config = type { i32 }
%struct.ath_hw = type { i64 }
%struct.ath_common = type { i32 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@ATH_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ATH_OP_ANI_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_check_ani(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath_beacon_config*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 1
  %8 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  store %struct.ath_hw* %8, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  %11 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %4, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ath_beacon_config* %16, %struct.ath_beacon_config** %5, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %24 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %79

28:                                               ; preds = %22
  br label %65

29:                                               ; preds = %1
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %37 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ATH_OP_PRIM_STA_VIF, align 4
  %42 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %43 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %42, i32 0, i32 0
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %79

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %35
  br label %64

49:                                               ; preds = %29
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* @ATH_OP_PRIM_STA_VIF, align 4
  %57 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %58 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %57, i32 0, i32 0
  %59 = call i32 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %79

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %28
  %66 = load i32, i32* @ATH_OP_ANI_RUN, align 4
  %67 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %68 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %67, i32 0, i32 0
  %69 = call i32 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @ATH_OP_ANI_RUN, align 4
  %73 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %74 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %73, i32 0, i32 0
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %77 = call i32 @ath_start_ani(%struct.ath_softc* %76)
  br label %78

78:                                               ; preds = %71, %65
  br label %86

79:                                               ; preds = %61, %46, %27
  %80 = load i32, i32* @ATH_OP_ANI_RUN, align 4
  %81 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %82 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %81, i32 0, i32 0
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  %84 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %85 = call i32 @ath_stop_ani(%struct.ath_softc* %84)
  br label %86

86:                                               ; preds = %79, %78
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ath_start_ani(%struct.ath_softc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath_stop_ani(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
