; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_ini_region_cfg = type { i32, i32 }
%struct.iwl_fw_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iwl_fw_ini_region_cfg** }
%struct.iwl_fw_ini_trigger = type { i32*, i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"WRT: Unassigned region id %d, skipping\0A\00", align 1
@IWL_FW_INI_DBG_DOMAIN_ALWAYS_ON = common dso_local global i64 0, align 8
@iwl_dump_ini_region_ops = common dso_local global %struct.iwl_fw_ini_region_cfg** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_trigger*, %struct.list_head*)* @iwl_dump_ini_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dump_ini_trigger(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_trigger* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca %struct.iwl_fw_ini_trigger*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iwl_fw_ini_region_cfg*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store %struct.iwl_fw_ini_trigger* %1, %struct.iwl_fw_ini_trigger** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %82, %3
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_fw_ini_trigger, %struct.iwl_fw_ini_trigger* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @le32_to_cpu(i32 %17)
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %20, label %85

20:                                               ; preds = %12
  %21 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_fw_ini_trigger, %struct.iwl_fw_ini_trigger* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32_to_cpu(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.iwl_fw_ini_region_cfg**, %struct.iwl_fw_ini_region_cfg*** %32, align 8
  %34 = call i64 @ARRAY_SIZE(%struct.iwl_fw_ini_region_cfg** %33)
  %35 = icmp uge i64 %29, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %20
  br label %82

40:                                               ; preds = %20
  %41 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.iwl_fw_ini_region_cfg**, %struct.iwl_fw_ini_region_cfg*** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %44, i64 %45
  %47 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %46, align 8
  store %struct.iwl_fw_ini_region_cfg* %47, %struct.iwl_fw_ini_region_cfg** %11, align 8
  %48 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %11, align 8
  %49 = icmp ne %struct.iwl_fw_ini_region_cfg* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @IWL_WARN(%struct.iwl_fw_runtime* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %82

54:                                               ; preds = %40
  %55 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %11, align 8
  %56 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le32_to_cpu(i32 %57)
  %59 = load i64, i64* @IWL_FW_INI_DBG_DOMAIN_ALWAYS_ON, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %82

62:                                               ; preds = %54
  %63 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %11, align 8
  %64 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg, %struct.iwl_fw_ini_region_cfg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @le32_to_cpu(i32 %65)
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.iwl_fw_ini_region_cfg**, %struct.iwl_fw_ini_region_cfg*** @iwl_dump_ini_region_ops, align 8
  %69 = call i64 @ARRAY_SIZE(%struct.iwl_fw_ini_region_cfg** %68)
  %70 = icmp uge i64 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %82

72:                                               ; preds = %62
  %73 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %74 = load %struct.list_head*, %struct.list_head** %6, align 8
  %75 = load %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %11, align 8
  %76 = load %struct.iwl_fw_ini_region_cfg**, %struct.iwl_fw_ini_region_cfg*** @iwl_dump_ini_region_ops, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg** %76, i64 %77
  %79 = call i64 @iwl_dump_ini_mem(%struct.iwl_fw_runtime* %73, %struct.list_head* %74, %struct.iwl_fw_ini_region_cfg* %75, %struct.iwl_fw_ini_region_cfg** %78)
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %72, %71, %61, %50, %39
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %12

85:                                               ; preds = %12
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %90 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %5, align 8
  %91 = load %struct.list_head*, %struct.list_head** %6, align 8
  %92 = call i64 @iwl_dump_ini_info(%struct.iwl_fw_runtime* %89, %struct.iwl_fw_ini_trigger* %90, %struct.list_head* %91)
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %8, align 8
  br label %95

95:                                               ; preds = %88, %85
  %96 = load i64, i64* %8, align 8
  ret i64 %96
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.iwl_fw_ini_region_cfg**) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_fw_runtime*, i8*, i64) #1

declare dso_local i64 @iwl_dump_ini_mem(%struct.iwl_fw_runtime*, %struct.list_head*, %struct.iwl_fw_ini_region_cfg*, %struct.iwl_fw_ini_region_cfg**) #1

declare dso_local i64 @iwl_dump_ini_info(%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_trigger*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
