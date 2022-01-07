; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c__iwl_fw_dbg_ini_collect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c__iwl_fw_dbg_ini_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.iwl_fw_ini_active_triggers* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.iwl_fw_ini_active_triggers = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"WRT: Trigger %d is not active, aborting dump\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"WRT: Force restart: trigger %d fired.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IWL_FW_RUNTIME_DUMP_WK_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"WRT: Collecting data: ini trigger %d fired.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_iwl_fw_dbg_ini_collect(%struct.iwl_fw_runtime* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_fw_ini_active_triggers*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @iwl_fw_ini_trigger_on(%struct.iwl_fw_runtime* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %135

21:                                               ; preds = %2
  %22 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @iwl_fw_ini_trigger_on(%struct.iwl_fw_runtime* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @IWL_WARN(%struct.iwl_fw_runtime* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %135

32:                                               ; preds = %21
  %33 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %36, i64 %38
  store %struct.iwl_fw_ini_active_triggers* %39, %struct.iwl_fw_ini_active_triggers** %6, align 8
  %40 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %6, align 8
  %41 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le32_to_cpu(i32 %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %135

55:                                               ; preds = %32
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %7, align 8
  %58 = call i32 @cpu_to_le32(i64 %57)
  %59 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %6, align 8
  %60 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load %struct.iwl_fw_ini_active_triggers*, %struct.iwl_fw_ini_active_triggers** %6, align 8
  %64 = getelementptr inbounds %struct.iwl_fw_ini_active_triggers, %struct.iwl_fw_ini_active_triggers* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le32_to_cpu(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %55
  %71 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @IWL_WARN(%struct.iwl_fw_runtime* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %75 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @iwl_force_nmi(i32 %76)
  store i32 0, i32* %3, align 4
  br label %135

78:                                               ; preds = %55
  %79 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %80 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %135

87:                                               ; preds = %78
  %88 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %89 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @ffz(i64 %91)
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @IWL_FW_RUNTIME_DUMP_WK_NUM, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %110, label %96

96:                                               ; preds = %87
  %97 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %98 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %106 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = call i64 @test_and_set_bit(i32 %104, i64* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %96, %87
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %135

113:                                              ; preds = %96
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %116 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 %114, i32* %121, align 4
  %122 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @IWL_WARN(%struct.iwl_fw_runtime* %122, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %126 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @usecs_to_jiffies(i64 %132)
  %134 = call i32 @schedule_delayed_work(i32* %131, i32 %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %113, %110, %84, %70, %54, %26, %18
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_fw_ini_trigger_on(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_fw_runtime*, i8*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @iwl_force_nmi(i32) #1

declare dso_local i64 @ffz(i64) #1

declare dso_local i64 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
