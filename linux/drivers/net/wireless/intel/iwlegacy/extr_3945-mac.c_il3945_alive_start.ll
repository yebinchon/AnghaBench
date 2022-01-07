; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_alive_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_alive_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.il3945_rxon_cmd = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Runtime Alive received.\0A\00", align 1
@UCODE_VALID_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Alive failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Bad runtime uCode load.\0A\00", align 1
@APMG_RFKILL_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"RFKILL status: 0x%x\0A\00", align 1
@S_RFKILL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Thermal calibration took %dus\0A\00", align 1
@S_ALIVE = common dso_local global i32 0, align 4
@RATES_MASK_3945 = common dso_local global i32 0, align 4
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@S_READY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"ALIVE processing complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il3945_alive_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_alive_start(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.il3945_rxon_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UCODE_VALID_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %114

15:                                               ; preds = %1
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = call i64 @il3945_verify_ucode(%struct.il_priv* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %114

21:                                               ; preds = %15
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = load i32, i32* @APMG_RFKILL_REG, align 4
  %24 = call i32 @il_rd_prph(%struct.il_priv* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %21
  %31 = load i32, i32* @S_RFKILL, align 4
  %32 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 3
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %39, %30
  %36 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %37 = call i64 @il3945_hw_get_temperature(%struct.il_priv* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  %42 = call i32 @udelay(i32 10)
  br label %35

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 %47, 10
  %49 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  br label %56

51:                                               ; preds = %21
  %52 = load i32, i32* @S_RFKILL, align 4
  %53 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 3
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i32, i32* @S_ALIVE, align 4
  %58 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 3
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %62 = call i32 @il_setup_watchdog(%struct.il_priv* %61)
  %63 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %64 = call i64 @il_is_rfkill(%struct.il_priv* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %121

67:                                               ; preds = %56
  %68 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %69 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ieee80211_wake_queues(i32 %70)
  %72 = load i32, i32* @RATES_MASK_3945, align 4
  %73 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %74 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %76 = call i32 @il_power_update_mode(%struct.il_priv* %75, i32 1)
  %77 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %78 = call i64 @il_is_associated(%struct.il_priv* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %67
  %81 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 5
  %83 = bitcast i32* %82 to %struct.il3945_rxon_cmd*
  store %struct.il3945_rxon_cmd* %83, %struct.il3945_rxon_cmd** %5, align 8
  %84 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %85 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %86 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.il3945_rxon_cmd*, %struct.il3945_rxon_cmd** %5, align 8
  %93 = getelementptr inbounds %struct.il3945_rxon_cmd, %struct.il3945_rxon_cmd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %99

96:                                               ; preds = %67
  %97 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %98 = call i32 @il_connection_init_rx_config(%struct.il_priv* %97)
  br label %99

99:                                               ; preds = %96, %80
  %100 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %101 = call i32 @il_send_bt_config(%struct.il_priv* %100)
  %102 = load i32, i32* @S_READY, align 4
  %103 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 3
  %105 = call i32 @set_bit(i32 %102, i32* %104)
  %106 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %107 = call i32 @il3945_commit_rxon(%struct.il_priv* %106)
  %108 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %109 = call i32 @il3945_reg_txpower_periodic(%struct.il_priv* %108)
  %110 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %111 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %112 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %111, i32 0, i32 2
  %113 = call i32 @wake_up(i32* %112)
  br label %121

114:                                              ; preds = %19, %13
  %115 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %116 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %119 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %118, i32 0, i32 0
  %120 = call i32 @queue_work(i32 %117, i32* %119)
  br label %121

121:                                              ; preds = %114, %99, %66
  ret void
}

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i64 @il3945_verify_ucode(%struct.il_priv*) #1

declare dso_local i32 @il_rd_prph(%struct.il_priv*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @il3945_hw_get_temperature(%struct.il_priv*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @il_setup_watchdog(%struct.il_priv*) #1

declare dso_local i64 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @il_power_update_mode(%struct.il_priv*, i32) #1

declare dso_local i64 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @il_connection_init_rx_config(%struct.il_priv*) #1

declare dso_local i32 @il_send_bt_config(%struct.il_priv*) #1

declare dso_local i32 @il3945_commit_rxon(%struct.il_priv*) #1

declare dso_local i32 @il3945_reg_txpower_periodic(%struct.il_priv*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
