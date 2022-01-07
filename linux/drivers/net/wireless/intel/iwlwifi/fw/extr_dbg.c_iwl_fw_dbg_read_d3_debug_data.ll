; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_read_d3_debug_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_read_d3_debug_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.iwl_cfg* }
%struct.iwl_cfg = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to allocate memory for D3 debug data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_fw_dbg_read_d3_debug_data(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  %3 = alloca %struct.iwl_cfg*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %4 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  store %struct.iwl_cfg* %8, %struct.iwl_cfg** %3, align 8
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %10 = call i32 @iwl_fw_dbg_is_d3_debug_enabled(%struct.iwl_fw_runtime* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %13
  %20 = load %struct.iwl_cfg*, %struct.iwl_cfg** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @kmalloc(i32 %22, i32 %23)
  %25 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %26 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %29 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %19
  %34 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %35 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %52

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %13
  %38 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.iwl_cfg*, %struct.iwl_cfg** %3, align 8
  %42 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %45 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iwl_cfg*, %struct.iwl_cfg** %3, align 8
  %49 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @iwl_trans_read_mem_bytes(%struct.TYPE_4__* %40, i32 %43, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %37, %33, %12
  ret void
}

declare dso_local i32 @iwl_fw_dbg_is_d3_debug_enabled(%struct.iwl_fw_runtime*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_fw_runtime*, i8*) #1

declare dso_local i32 @iwl_trans_read_mem_bytes(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
