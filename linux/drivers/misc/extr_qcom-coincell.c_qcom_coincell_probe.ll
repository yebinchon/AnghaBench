; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_qcom-coincell.c_qcom_coincell_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_qcom-coincell.c_qcom_coincell_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.qcom_coincell = type { %struct.TYPE_2__*, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unable to get regmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"qcom,charger-disable\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"qcom,rset-ohms\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"can't find 'qcom,rset-ohms' in DT block\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"qcom,vset-millivolts\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"can't find 'qcom,vset-millivolts' in DT block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_coincell_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_coincell_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.qcom_coincell, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %5, i32 0, i32 0
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %16, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_get_regmap(i32 %20, i32* null)
  %22 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %5, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %5, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %5, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @dev_err(%struct.TYPE_2__* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %74

32:                                               ; preds = %1
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %5, i32 0, i32 1
  %35 = call i32 @of_property_read_u32(%struct.device_node* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %2, align 4
  br label %74

40:                                               ; preds = %32
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = call i32 @of_property_read_bool(%struct.device_node* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %40
  %49 = load %struct.device_node*, %struct.device_node** %4, align 8
  %50 = call i32 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %5, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @dev_err(%struct.TYPE_2__* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  br label %74

58:                                               ; preds = %48
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = call i32 @of_property_read_u32(%struct.device_node* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %5, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @dev_err(%struct.TYPE_2__* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %74

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %40
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @qcom_coincell_chgr_config(%struct.qcom_coincell* %5, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %63, %53, %38, %26
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @qcom_coincell_chgr_config(%struct.qcom_coincell*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
