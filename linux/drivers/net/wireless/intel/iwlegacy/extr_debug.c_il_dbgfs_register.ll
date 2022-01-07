; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_debug.c_il_dbgfs_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_debug.c_il_dbgfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.TYPE_6__*, i32, %struct.dentry*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.dentry = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dentry* }

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@nvm = common dso_local global i32 0, align 4
@sram = common dso_local global i32 0, align 4
@stations = common dso_local global i32 0, align 4
@channels = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@qos = common dso_local global i32 0, align 4
@disable_ht40 = common dso_local global i32 0, align 4
@rx_stats = common dso_local global i32 0, align 4
@tx_stats = common dso_local global i32 0, align 4
@rx_queue = common dso_local global i32 0, align 4
@tx_queue = common dso_local global i32 0, align 4
@power_save_status = common dso_local global i32 0, align 4
@clear_ucode_stats = common dso_local global i32 0, align 4
@clear_traffic_stats = common dso_local global i32 0, align 4
@fh_reg = common dso_local global i32 0, align 4
@missed_beacon = common dso_local global i32 0, align 4
@force_reset = common dso_local global i32 0, align 4
@ucode_rx_stats = common dso_local global i32 0, align 4
@ucode_tx_stats = common dso_local global i32 0, align 4
@ucode_general_stats = common dso_local global i32 0, align 4
@sensitivity = common dso_local global i32 0, align 4
@chain_noise = common dso_local global i32 0, align 4
@rxon_flags = common dso_local global i32 0, align 4
@rxon_filter_flags = common dso_local global i32 0, align 4
@wd_timeout = common dso_local global i32 0, align 4
@disable_sensitivity = common dso_local global i32 0, align 4
@disable_chain_noise = common dso_local global i32 0, align 4
@disable_tx_power = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_dbgfs_register(%struct.il_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 5
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = call %struct.dentry* @debugfs_create_dir(i8* %17, %struct.dentry* %18)
  store %struct.dentry* %19, %struct.dentry** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 4
  store %struct.dentry* %20, %struct.dentry** %22, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %23)
  store %struct.dentry* %24, %struct.dentry** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %25)
  store %struct.dentry* %26, %struct.dentry** %8, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %27)
  store %struct.dentry* %28, %struct.dentry** %9, align 8
  %29 = load i32, i32* @nvm, align 4
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = call i32 @DEBUGFS_ADD_FILE(i32 %29, %struct.dentry* %30, i32 256)
  %32 = load i32, i32* @sram, align 4
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = call i32 @DEBUGFS_ADD_FILE(i32 %32, %struct.dentry* %33, i32 384)
  %35 = load i32, i32* @stations, align 4
  %36 = load %struct.dentry*, %struct.dentry** %7, align 8
  %37 = call i32 @DEBUGFS_ADD_FILE(i32 %35, %struct.dentry* %36, i32 256)
  %38 = load i32, i32* @channels, align 4
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = call i32 @DEBUGFS_ADD_FILE(i32 %38, %struct.dentry* %39, i32 256)
  %41 = load i32, i32* @status, align 4
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = call i32 @DEBUGFS_ADD_FILE(i32 %41, %struct.dentry* %42, i32 256)
  %44 = load i32, i32* @interrupt, align 4
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = call i32 @DEBUGFS_ADD_FILE(i32 %44, %struct.dentry* %45, i32 384)
  %47 = load i32, i32* @qos, align 4
  %48 = load %struct.dentry*, %struct.dentry** %7, align 8
  %49 = call i32 @DEBUGFS_ADD_FILE(i32 %47, %struct.dentry* %48, i32 256)
  %50 = load i32, i32* @disable_ht40, align 4
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = call i32 @DEBUGFS_ADD_FILE(i32 %50, %struct.dentry* %51, i32 384)
  %53 = load i32, i32* @rx_stats, align 4
  %54 = load %struct.dentry*, %struct.dentry** %9, align 8
  %55 = call i32 @DEBUGFS_ADD_FILE(i32 %53, %struct.dentry* %54, i32 256)
  %56 = load i32, i32* @tx_stats, align 4
  %57 = load %struct.dentry*, %struct.dentry** %9, align 8
  %58 = call i32 @DEBUGFS_ADD_FILE(i32 %56, %struct.dentry* %57, i32 256)
  %59 = load i32, i32* @rx_queue, align 4
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = call i32 @DEBUGFS_ADD_FILE(i32 %59, %struct.dentry* %60, i32 256)
  %62 = load i32, i32* @tx_queue, align 4
  %63 = load %struct.dentry*, %struct.dentry** %9, align 8
  %64 = call i32 @DEBUGFS_ADD_FILE(i32 %62, %struct.dentry* %63, i32 256)
  %65 = load i32, i32* @power_save_status, align 4
  %66 = load %struct.dentry*, %struct.dentry** %9, align 8
  %67 = call i32 @DEBUGFS_ADD_FILE(i32 %65, %struct.dentry* %66, i32 256)
  %68 = load i32, i32* @clear_ucode_stats, align 4
  %69 = load %struct.dentry*, %struct.dentry** %9, align 8
  %70 = call i32 @DEBUGFS_ADD_FILE(i32 %68, %struct.dentry* %69, i32 128)
  %71 = load i32, i32* @clear_traffic_stats, align 4
  %72 = load %struct.dentry*, %struct.dentry** %9, align 8
  %73 = call i32 @DEBUGFS_ADD_FILE(i32 %71, %struct.dentry* %72, i32 128)
  %74 = load i32, i32* @fh_reg, align 4
  %75 = load %struct.dentry*, %struct.dentry** %9, align 8
  %76 = call i32 @DEBUGFS_ADD_FILE(i32 %74, %struct.dentry* %75, i32 256)
  %77 = load i32, i32* @missed_beacon, align 4
  %78 = load %struct.dentry*, %struct.dentry** %9, align 8
  %79 = call i32 @DEBUGFS_ADD_FILE(i32 %77, %struct.dentry* %78, i32 128)
  %80 = load i32, i32* @force_reset, align 4
  %81 = load %struct.dentry*, %struct.dentry** %9, align 8
  %82 = call i32 @DEBUGFS_ADD_FILE(i32 %80, %struct.dentry* %81, i32 384)
  %83 = load i32, i32* @ucode_rx_stats, align 4
  %84 = load %struct.dentry*, %struct.dentry** %9, align 8
  %85 = call i32 @DEBUGFS_ADD_FILE(i32 %83, %struct.dentry* %84, i32 256)
  %86 = load i32, i32* @ucode_tx_stats, align 4
  %87 = load %struct.dentry*, %struct.dentry** %9, align 8
  %88 = call i32 @DEBUGFS_ADD_FILE(i32 %86, %struct.dentry* %87, i32 256)
  %89 = load i32, i32* @ucode_general_stats, align 4
  %90 = load %struct.dentry*, %struct.dentry** %9, align 8
  %91 = call i32 @DEBUGFS_ADD_FILE(i32 %89, %struct.dentry* %90, i32 256)
  %92 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %93 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %2
  %99 = load i32, i32* @sensitivity, align 4
  %100 = load %struct.dentry*, %struct.dentry** %9, align 8
  %101 = call i32 @DEBUGFS_ADD_FILE(i32 %99, %struct.dentry* %100, i32 256)
  br label %102

102:                                              ; preds = %98, %2
  %103 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @chain_noise, align 4
  %111 = load %struct.dentry*, %struct.dentry** %9, align 8
  %112 = call i32 @DEBUGFS_ADD_FILE(i32 %110, %struct.dentry* %111, i32 256)
  br label %113

113:                                              ; preds = %109, %102
  %114 = load i32, i32* @rxon_flags, align 4
  %115 = load %struct.dentry*, %struct.dentry** %9, align 8
  %116 = call i32 @DEBUGFS_ADD_FILE(i32 %114, %struct.dentry* %115, i32 128)
  %117 = load i32, i32* @rxon_filter_flags, align 4
  %118 = load %struct.dentry*, %struct.dentry** %9, align 8
  %119 = call i32 @DEBUGFS_ADD_FILE(i32 %117, %struct.dentry* %118, i32 128)
  %120 = load i32, i32* @wd_timeout, align 4
  %121 = load %struct.dentry*, %struct.dentry** %9, align 8
  %122 = call i32 @DEBUGFS_ADD_FILE(i32 %120, %struct.dentry* %121, i32 128)
  %123 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %124 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %113
  %130 = load i32, i32* @disable_sensitivity, align 4
  %131 = load %struct.dentry*, %struct.dentry** %8, align 8
  %132 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %133 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %132, i32 0, i32 3
  %134 = call i32 @DEBUGFS_ADD_BOOL(i32 %130, %struct.dentry* %131, i32* %133)
  br label %135

135:                                              ; preds = %129, %113
  %136 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %137 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i32, i32* @disable_chain_noise, align 4
  %144 = load %struct.dentry*, %struct.dentry** %8, align 8
  %145 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %146 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %145, i32 0, i32 1
  %147 = call i32 @DEBUGFS_ADD_BOOL(i32 %143, %struct.dentry* %144, i32* %146)
  br label %148

148:                                              ; preds = %142, %135
  %149 = load i32, i32* @disable_tx_power, align 4
  %150 = load %struct.dentry*, %struct.dentry** %8, align 8
  %151 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %152 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %151, i32 0, i32 0
  %153 = call i32 @DEBUGFS_ADD_BOOL(i32 %149, %struct.dentry* %150, i32* %152)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @DEBUGFS_ADD_FILE(i32, %struct.dentry*, i32) #1

declare dso_local i32 @DEBUGFS_ADD_BOOL(i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
