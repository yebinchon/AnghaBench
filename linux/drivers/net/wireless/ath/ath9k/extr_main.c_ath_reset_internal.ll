; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath_reset_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath_reset_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ath_hw*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.ath9k_hw_cal_data }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath_hw = type { %struct.ath9k_channel* }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Reset to %u MHz, HT40: %d fastcc: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to reset channel, reset status %d\0A\00", align 1
@RESET_TYPE_BB_HANG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ath9k_channel*)* @ath_reset_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_reset_internal(%struct.ath_softc* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_hw_cal_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 5
  %12 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  store %struct.ath_hw* %12, %struct.ath_hw** %5, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %6, align 8
  store %struct.ath9k_hw_cal_data* null, %struct.ath9k_hw_cal_data** %7, align 8
  store i32 1, i32* %8, align 4
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = call i32 @__ath_cancel_work(%struct.ath_softc* %15)
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @disable_irq(i32 %19)
  %21 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 0
  %23 = call i32 @tasklet_disable(i32* %22)
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 1
  %26 = call i32 @tasklet_disable(i32* %25)
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %37 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store %struct.ath9k_hw_cal_data* %40, %struct.ath9k_hw_cal_data** %7, align 8
  br label %41

41:                                               ; preds = %36, %2
  %42 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %43 = icmp ne %struct.ath9k_channel* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 0
  %47 = load %struct.ath9k_channel*, %struct.ath9k_channel** %46, align 8
  store %struct.ath9k_channel* %47, %struct.ath9k_channel** %4, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %50 = call i32 @ath_prepare_reset(%struct.ath_softc* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = call i64 (...) @ath9k_is_chanctx_enabled()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %58, i32 0, i32 6
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %68, i32 0, i32 6
  %70 = call i32 @spin_unlock_bh(i32* %69)
  %71 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %72 = load i32, i32* @CONFIG, align 4
  %73 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %74 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %77 = call i32 @IS_CHAN_HT40(%struct.ath9k_channel* %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ath_dbg(%struct.ath_common* %71, i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %77, i32 %78)
  %80 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %81 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %82 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ath9k_hw_reset(%struct.ath_hw* %80, %struct.ath9k_channel* %81, %struct.ath9k_hw_cal_data* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %57
  %88 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @ath_err(%struct.ath_common* %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %92 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %91)
  %93 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %94 = load i32, i32* @RESET_TYPE_BB_HANG, align 4
  %95 = call i32 @ath9k_queue_reset(%struct.ath_softc* %93, i32 %94)
  br label %120

96:                                               ; preds = %57
  %97 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %98 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %97, i32 0, i32 5
  %99 = load %struct.ath_hw*, %struct.ath_hw** %98, align 8
  %100 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %103, i32 0, i32 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %111 = call i32 @ath9k_mci_set_txpower(%struct.ath_softc* %110, i32 1, i32 0)
  br label %112

112:                                              ; preds = %109, %102, %96
  %113 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %114 = call i32 @ath_complete_reset(%struct.ath_softc* %113, i32 1)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %116, %112
  br label %120

120:                                              ; preds = %119, %87
  %121 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %122 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @enable_irq(i32 %123)
  %125 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %126 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %125, i32 0, i32 2
  %127 = call i32 @spin_unlock_bh(i32* %126)
  %128 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %129 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %128, i32 0, i32 1
  %130 = call i32 @tasklet_enable(i32* %129)
  %131 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %132 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %131, i32 0, i32 0
  %133 = call i32 @tasklet_enable(i32* %132)
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @__ath_cancel_work(%struct.ath_softc*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath_prepare_reset(%struct.ath_softc*) #1

declare dso_local i64 @ath9k_is_chanctx_enabled(...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_reset(%struct.ath_hw*, %struct.ath9k_channel*, %struct.ath9k_hw_cal_data*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_mci_set_txpower(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath_complete_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
