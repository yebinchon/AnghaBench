; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_7__*, %struct.ath_hw* }
%struct.TYPE_7__ = type { i32, %struct.ath9k_hw_cal_data }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath_hw = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32 }

@ATH_MCI_CONFIG_CONCUR_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_mci_set_txpower(%struct.ath_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_hw_mci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath9k_hw_cal_data*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 1
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %7, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 1
  %16 = load %struct.ath_hw*, %struct.ath_hw** %15, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.ath9k_hw_mci* %18, %struct.ath9k_hw_mci** %8, align 8
  %19 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %20 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %23 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATH_MCI_CONFIG_CONCUR_TX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %30 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %122

31:                                               ; preds = %3
  %32 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @IS_CHAN_2GHZ(%struct.TYPE_8__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %122

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %104

41:                                               ; preds = %38
  %42 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store %struct.ath9k_hw_cal_data* %45, %struct.ath9k_hw_cal_data** %10, align 8
  %46 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i64 @IS_CHAN_HT40PLUS(%struct.TYPE_8__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %41
  %52 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %58 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %51
  %62 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %68 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 20
  %71 = icmp sle i32 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %122

73:                                               ; preds = %61, %51, %41
  %74 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = call i64 @IS_CHAN_HT40MINUS(%struct.TYPE_8__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %73
  %80 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %81 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %86 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %79
  %90 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %91 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %10, align 8
  %96 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 20
  %99 = icmp sge i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %122

101:                                              ; preds = %89, %79, %73
  %102 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %103 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  br label %108

104:                                              ; preds = %38
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %107 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %111 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %116 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %117 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw* %115, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %28, %37, %72, %100, %114, %108
  ret void
}

declare dso_local i32 @IS_CHAN_2GHZ(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_CHAN_HT40PLUS(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_CHAN_HT40MINUS(%struct.TYPE_8__*) #1

declare dso_local i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
