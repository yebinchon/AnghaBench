; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_fwdbg.h_iwl_fw_ini_trigger_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_fwdbg.h_iwl_fw_ini_trigger_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.iwl_fw_ini_trigger*, i32 }
%struct.iwl_fw_ini_trigger = type { i32 }

@IWL_FW_TRIGGER_ID_INVALID = common dso_local global i32 0, align 4
@IWL_FW_TRIGGER_ID_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Trigger %d fired in no-collect window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, i32)* @iwl_fw_ini_trigger_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fw_ini_trigger_on(%struct.iwl_fw_runtime* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_fw_ini_trigger*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @iwl_trans_dbg_ini_valid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IWL_FW_TRIGGER_ID_INVALID, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IWL_FW_TRIGGER_ID_NUM, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21, %17, %13, %2
  store i32 0, i32* %3, align 4
  br label %57

33:                                               ; preds = %21
  %34 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %41, align 8
  store %struct.iwl_fw_ini_trigger* %42, %struct.iwl_fw_ini_trigger** %6, align 8
  %43 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_fw_ini_trigger, %struct.iwl_fw_ini_trigger* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @iwl_fw_dbg_no_trig_window(%struct.iwl_fw_runtime* %47, i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %33
  %53 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @IWL_WARN(%struct.iwl_fw_runtime* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52, %32
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @iwl_trans_dbg_ini_valid(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @iwl_fw_dbg_no_trig_window(%struct.iwl_fw_runtime*, i32, i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_fw_runtime*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
