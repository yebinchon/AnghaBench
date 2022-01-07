; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_debugfs.c_iwl_dbgfs_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_debugfs.c_iwl_dbgfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_4__*, i64, %struct.dentry* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { %struct.dentry* }

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@nvm = common dso_local global i32 0, align 4
@sram = common dso_local global i32 0, align 4
@wowlan_sram = common dso_local global i32 0, align 4
@stations = common dso_local global i32 0, align 4
@channels = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@rx_handlers = common dso_local global i32 0, align 4
@qos = common dso_local global i32 0, align 4
@sleep_level_override = common dso_local global i32 0, align 4
@current_sleep_command = common dso_local global i32 0, align 4
@thermal_throttling = common dso_local global i32 0, align 4
@disable_ht40 = common dso_local global i32 0, align 4
@temperature = common dso_local global i32 0, align 4
@power_save_status = common dso_local global i32 0, align 4
@clear_ucode_statistics = common dso_local global i32 0, align 4
@missed_beacon = common dso_local global i32 0, align 4
@plcp_delta = common dso_local global i32 0, align 4
@rf_reset = common dso_local global i32 0, align 4
@ucode_rx_stats = common dso_local global i32 0, align 4
@ucode_tx_stats = common dso_local global i32 0, align 4
@ucode_general_stats = common dso_local global i32 0, align 4
@txfifo_flush = common dso_local global i32 0, align 4
@protection_mode = common dso_local global i32 0, align 4
@sensitivity = common dso_local global i32 0, align 4
@chain_noise = common dso_local global i32 0, align 4
@ucode_tracing = common dso_local global i32 0, align 4
@ucode_bt_stats = common dso_local global i32 0, align 4
@reply_tx_error = common dso_local global i32 0, align 4
@rxon_flags = common dso_local global i32 0, align 4
@rxon_filter_flags = common dso_local global i32 0, align 4
@echo_test = common dso_local global i32 0, align 4
@fw_restart = common dso_local global i32 0, align 4
@bt_traffic = common dso_local global i32 0, align 4
@calib_disabled = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"../../%pd2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"iwlwifi\00", align 1
@log_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_dbgfs_register(%struct.iwl_priv* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 2
  store %struct.dentry* %11, %struct.dentry** %13, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %14)
  store %struct.dentry* %15, %struct.dentry** %5, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %16)
  store %struct.dentry* %17, %struct.dentry** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %18)
  store %struct.dentry* %19, %struct.dentry** %7, align 8
  %20 = load i32, i32* @nvm, align 4
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call i32 @DEBUGFS_ADD_FILE(i32 %20, %struct.dentry* %21, i32 256)
  %23 = load i32, i32* @sram, align 4
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = call i32 @DEBUGFS_ADD_FILE(i32 %23, %struct.dentry* %24, i32 384)
  %26 = load i32, i32* @wowlan_sram, align 4
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = call i32 @DEBUGFS_ADD_FILE(i32 %26, %struct.dentry* %27, i32 256)
  %29 = load i32, i32* @stations, align 4
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = call i32 @DEBUGFS_ADD_FILE(i32 %29, %struct.dentry* %30, i32 256)
  %32 = load i32, i32* @channels, align 4
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = call i32 @DEBUGFS_ADD_FILE(i32 %32, %struct.dentry* %33, i32 256)
  %35 = load i32, i32* @status, align 4
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = call i32 @DEBUGFS_ADD_FILE(i32 %35, %struct.dentry* %36, i32 256)
  %38 = load i32, i32* @rx_handlers, align 4
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = call i32 @DEBUGFS_ADD_FILE(i32 %38, %struct.dentry* %39, i32 384)
  %41 = load i32, i32* @qos, align 4
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = call i32 @DEBUGFS_ADD_FILE(i32 %41, %struct.dentry* %42, i32 256)
  %44 = load i32, i32* @sleep_level_override, align 4
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = call i32 @DEBUGFS_ADD_FILE(i32 %44, %struct.dentry* %45, i32 384)
  %47 = load i32, i32* @current_sleep_command, align 4
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = call i32 @DEBUGFS_ADD_FILE(i32 %47, %struct.dentry* %48, i32 256)
  %50 = load i32, i32* @thermal_throttling, align 4
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = call i32 @DEBUGFS_ADD_FILE(i32 %50, %struct.dentry* %51, i32 256)
  %53 = load i32, i32* @disable_ht40, align 4
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = call i32 @DEBUGFS_ADD_FILE(i32 %53, %struct.dentry* %54, i32 384)
  %56 = load i32, i32* @temperature, align 4
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = call i32 @DEBUGFS_ADD_FILE(i32 %56, %struct.dentry* %57, i32 256)
  %59 = load i32, i32* @power_save_status, align 4
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = call i32 @DEBUGFS_ADD_FILE(i32 %59, %struct.dentry* %60, i32 256)
  %62 = load i32, i32* @clear_ucode_statistics, align 4
  %63 = load %struct.dentry*, %struct.dentry** %7, align 8
  %64 = call i32 @DEBUGFS_ADD_FILE(i32 %62, %struct.dentry* %63, i32 128)
  %65 = load i32, i32* @missed_beacon, align 4
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = call i32 @DEBUGFS_ADD_FILE(i32 %65, %struct.dentry* %66, i32 128)
  %68 = load i32, i32* @plcp_delta, align 4
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = call i32 @DEBUGFS_ADD_FILE(i32 %68, %struct.dentry* %69, i32 384)
  %71 = load i32, i32* @rf_reset, align 4
  %72 = load %struct.dentry*, %struct.dentry** %7, align 8
  %73 = call i32 @DEBUGFS_ADD_FILE(i32 %71, %struct.dentry* %72, i32 384)
  %74 = load i32, i32* @ucode_rx_stats, align 4
  %75 = load %struct.dentry*, %struct.dentry** %7, align 8
  %76 = call i32 @DEBUGFS_ADD_FILE(i32 %74, %struct.dentry* %75, i32 256)
  %77 = load i32, i32* @ucode_tx_stats, align 4
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  %79 = call i32 @DEBUGFS_ADD_FILE(i32 %77, %struct.dentry* %78, i32 256)
  %80 = load i32, i32* @ucode_general_stats, align 4
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = call i32 @DEBUGFS_ADD_FILE(i32 %80, %struct.dentry* %81, i32 256)
  %83 = load i32, i32* @txfifo_flush, align 4
  %84 = load %struct.dentry*, %struct.dentry** %7, align 8
  %85 = call i32 @DEBUGFS_ADD_FILE(i32 %83, %struct.dentry* %84, i32 128)
  %86 = load i32, i32* @protection_mode, align 4
  %87 = load %struct.dentry*, %struct.dentry** %7, align 8
  %88 = call i32 @DEBUGFS_ADD_FILE(i32 %86, %struct.dentry* %87, i32 384)
  %89 = load i32, i32* @sensitivity, align 4
  %90 = load %struct.dentry*, %struct.dentry** %7, align 8
  %91 = call i32 @DEBUGFS_ADD_FILE(i32 %89, %struct.dentry* %90, i32 256)
  %92 = load i32, i32* @chain_noise, align 4
  %93 = load %struct.dentry*, %struct.dentry** %7, align 8
  %94 = call i32 @DEBUGFS_ADD_FILE(i32 %92, %struct.dentry* %93, i32 256)
  %95 = load i32, i32* @ucode_tracing, align 4
  %96 = load %struct.dentry*, %struct.dentry** %7, align 8
  %97 = call i32 @DEBUGFS_ADD_FILE(i32 %95, %struct.dentry* %96, i32 384)
  %98 = load i32, i32* @ucode_bt_stats, align 4
  %99 = load %struct.dentry*, %struct.dentry** %7, align 8
  %100 = call i32 @DEBUGFS_ADD_FILE(i32 %98, %struct.dentry* %99, i32 256)
  %101 = load i32, i32* @reply_tx_error, align 4
  %102 = load %struct.dentry*, %struct.dentry** %7, align 8
  %103 = call i32 @DEBUGFS_ADD_FILE(i32 %101, %struct.dentry* %102, i32 256)
  %104 = load i32, i32* @rxon_flags, align 4
  %105 = load %struct.dentry*, %struct.dentry** %7, align 8
  %106 = call i32 @DEBUGFS_ADD_FILE(i32 %104, %struct.dentry* %105, i32 128)
  %107 = load i32, i32* @rxon_filter_flags, align 4
  %108 = load %struct.dentry*, %struct.dentry** %7, align 8
  %109 = call i32 @DEBUGFS_ADD_FILE(i32 %107, %struct.dentry* %108, i32 128)
  %110 = load i32, i32* @echo_test, align 4
  %111 = load %struct.dentry*, %struct.dentry** %7, align 8
  %112 = call i32 @DEBUGFS_ADD_FILE(i32 %110, %struct.dentry* %111, i32 128)
  %113 = load i32, i32* @fw_restart, align 4
  %114 = load %struct.dentry*, %struct.dentry** %7, align 8
  %115 = call i32 @DEBUGFS_ADD_FILE(i32 %113, %struct.dentry* %114, i32 128)
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %117 = call i64 @iwl_advanced_bt_coexist(%struct.iwl_priv* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %2
  %120 = load i32, i32* @bt_traffic, align 4
  %121 = load %struct.dentry*, %struct.dentry** %7, align 8
  %122 = call i32 @DEBUGFS_ADD_FILE(i32 %120, %struct.dentry* %121, i32 256)
  br label %123

123:                                              ; preds = %119, %2
  %124 = load i32, i32* @calib_disabled, align 4
  %125 = load %struct.dentry*, %struct.dentry** %6, align 8
  %126 = call i32 @DEBUGFS_ADD_FILE(i32 %124, %struct.dentry* %125, i32 384)
  %127 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %128 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %123
  %132 = load %struct.dentry*, %struct.dentry** %4, align 8
  %133 = getelementptr inbounds %struct.dentry, %struct.dentry* %132, i32 0, i32 0
  %134 = load %struct.dentry*, %struct.dentry** %133, align 8
  store %struct.dentry* %134, %struct.dentry** %10, align 8
  %135 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %136 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load %struct.dentry*, %struct.dentry** %140, align 8
  store %struct.dentry* %141, %struct.dentry** %9, align 8
  %142 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %143 = load %struct.dentry*, %struct.dentry** %10, align 8
  %144 = call i32 @snprintf(i8* %142, i32 100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.dentry* %143)
  %145 = load %struct.dentry*, %struct.dentry** %9, align 8
  %146 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %147 = call i32 @debugfs_create_symlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.dentry* %145, i8* %146)
  br label %148

148:                                              ; preds = %131, %123
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @DEBUGFS_ADD_FILE(i32, %struct.dentry*, i32) #1

declare dso_local i64 @iwl_advanced_bt_coexist(%struct.iwl_priv*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_symlink(i8*, %struct.dentry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
