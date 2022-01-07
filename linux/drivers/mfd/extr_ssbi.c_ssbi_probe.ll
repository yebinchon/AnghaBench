; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ssbi.c_ssbi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ssbi.c_ssbi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.ssbi = type { i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"qcom,controller-type\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Missing qcom,controller-type property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SSBI controller type: '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ssbi\00", align 1
@MSM_SBI_CTRL_SSBI = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"ssbi2\00", align 1
@MSM_SBI_CTRL_SSBI2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"pmic-arbiter\00", align 1
@MSM_SBI_CTRL_PMIC_ARBITER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Unknown qcom,controller-type\0A\00", align 1
@ssbi_pa_read_bytes = common dso_local global i32 0, align 4
@ssbi_pa_write_bytes = common dso_local global i32 0, align 4
@ssbi_read_bytes = common dso_local global i32 0, align 4
@ssbi_write_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ssbi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssbi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.ssbi*, align 8
  %7 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ssbi* @devm_kzalloc(%struct.TYPE_6__* %13, i32 24, i32 %14)
  store %struct.ssbi* %15, %struct.ssbi** %6, align 8
  %16 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %17 = icmp ne %struct.ssbi* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %118

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %5, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = call i32 @devm_ioremap_resource(%struct.TYPE_6__* %26, %struct.resource* %27)
  %29 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %30 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %32 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %38 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %118

41:                                               ; preds = %21
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.ssbi* %43)
  %45 = load %struct.device_node*, %struct.device_node** %4, align 8
  %46 = call i8* @of_get_property(%struct.device_node* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_6__* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %118

55:                                               ; preds = %41
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @dev_info(%struct.TYPE_6__* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i64, i64* @MSM_SBI_CTRL_SSBI, align 8
  %65 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %66 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %91

67:                                               ; preds = %55
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* @MSM_SBI_CTRL_SSBI2, align 8
  %73 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %74 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %90

75:                                               ; preds = %67
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, i64* @MSM_SBI_CTRL_PMIC_ARBITER, align 8
  %81 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %82 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %89

83:                                               ; preds = %75
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(%struct.TYPE_6__* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %118

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90, %63
  %92 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %93 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MSM_SBI_CTRL_PMIC_ARBITER, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i32, i32* @ssbi_pa_read_bytes, align 4
  %99 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %100 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @ssbi_pa_write_bytes, align 4
  %102 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %103 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  br label %111

104:                                              ; preds = %91
  %105 = load i32, i32* @ssbi_read_bytes, align 4
  %106 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %107 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @ssbi_write_bytes, align 4
  %109 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %110 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %104, %97
  %112 = load %struct.ssbi*, %struct.ssbi** %6, align 8
  %113 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %112, i32 0, i32 1
  %114 = call i32 @spin_lock_init(i32* %113)
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @devm_of_platform_populate(%struct.TYPE_6__* %116)
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %111, %83, %49, %36, %18
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.ssbi* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ssbi*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
