; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_runtime.h_iwl_fw_runtime_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_runtime.h_iwl_fw_runtime_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.iwl_fw_ini_active_triggers*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_fw_ini_active_triggers = type { i32, i32*, i64 }

@IWL_FW_TRIGGER_ID_NUM = common dso_local global i32 0, align 4
@IWL_FW_RUNTIME_DUMP_WK_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*)* @iwl_fw_runtime_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_runtime_free(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_fw_ini_active_triggers*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %5 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @kfree(i32* %8)
  %10 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %11 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32* null, i32** %12, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %35, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @IWL_FW_TRIGGER_ID_NUM, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %21, i64 %23
  store %struct.iwl_fw_ini_active_triggers* %24, %struct.iwl_fw_ini_active_triggers** %4, align 8
  %25 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %4, align 8
  %28 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %13

38:                                               ; preds = %13
  %39 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %40 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @iwl_dbg_tlv_del_timers(i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %57, %38
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @IWL_FW_RUNTIME_DUMP_WK_NUM, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %49 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @cancel_delayed_work_sync(i32* %55)
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %43

60:                                               ; preds = %43
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iwl_dbg_tlv_del_timers(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
