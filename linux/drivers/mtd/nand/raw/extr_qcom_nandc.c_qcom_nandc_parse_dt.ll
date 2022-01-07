; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_qcom_nandc.c_qcom_nandc_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.qcom_nand_controller = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"qcom,cmd-crci\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"command CRCI unspecified\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"qcom,data-crci\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"data CRCI unspecified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_nandc_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_nandc_parse_dt(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qcom_nand_controller*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.qcom_nand_controller* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.qcom_nand_controller* %8, %struct.qcom_nand_controller** %4, align 8
  %9 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %10 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %15 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %1
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %22, i32 0, i32 2
  %24 = call i32 @of_property_read_u32(%struct.device_node* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %29 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @dev_err(%struct.TYPE_4__* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %48

33:                                               ; preds = %20
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %36 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %35, i32 0, i32 1
  %37 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.qcom_nand_controller*, %struct.qcom_nand_controller** %4, align 8
  %42 = getelementptr inbounds %struct.qcom_nand_controller, %struct.qcom_nand_controller* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @dev_err(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %40, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.qcom_nand_controller* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
