; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_armcp_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_armcp_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.asic_fixed_properties, %struct.goya_device* }
%struct.asic_fixed_properties = type { i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.goya_device = type { i32 }

@HW_CAP_CPU_Q = common dso_local global i32 0, align 4
@DRAM_PHYS_DEFAULT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"F/W reported invalid DRAM size %llu. Trying to use default size\0A\00", align 1
@GOYA_DEFAULT_CARD_NAME = common dso_local global i32 0, align 4
@CARD_NAME_MAX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goya_armcp_info_get(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.goya_device*, align 8
  %5 = alloca %struct.asic_fixed_properties*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 2
  %10 = load %struct.goya_device*, %struct.goya_device** %9, align 8
  store %struct.goya_device* %10, %struct.goya_device** %4, align 8
  %11 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 1
  store %struct.asic_fixed_properties* %12, %struct.asic_fixed_properties** %5, align 8
  %13 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %14 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HW_CAP_CPU_Q, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

20:                                               ; preds = %1
  %21 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %22 = call i32 @hl_fw_armcp_info_get(%struct.hl_device* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %77

27:                                               ; preds = %20
  %28 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %29 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le64_to_cpu(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @is_power_of_2(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @DRAM_PHYS_DEFAULT_SIZE, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39, %35
  %44 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %45 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i64, i64* @DRAM_PHYS_DEFAULT_SIZE, align 8
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %43, %39
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %53 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %55 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %60 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %50, %27
  %62 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %63 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strlen(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %61
  %69 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %5, align 8
  %70 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GOYA_DEFAULT_CARD_NAME, align 4
  %74 = load i32, i32* @CARD_NAME_MAX_LEN, align 4
  %75 = call i32 @strncpy(i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %61
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %25, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @hl_fw_armcp_info_get(%struct.hl_device*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
