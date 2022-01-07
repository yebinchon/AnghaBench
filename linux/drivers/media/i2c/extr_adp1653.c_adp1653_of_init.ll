; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_of_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adp1653.c_adp1653_of_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adp1653_flash = type { %struct.adp1653_platform_data* }
%struct.adp1653_platform_data = type { i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"flash-timeout-us\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"flash-max-microamp\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"led-max-microamp\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"indicator\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Error getting GPIO\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Required property not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.adp1653_flash*, %struct.device_node*)* @adp1653_of_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp1653_of_init(%struct.i2c_client* %0, %struct.adp1653_flash* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.adp1653_flash*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.adp1653_platform_data*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.adp1653_flash* %1, %struct.adp1653_flash** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.adp1653_platform_data* @devm_kzalloc(i32* %11, i32 20, i32 %12)
  store %struct.adp1653_platform_data* %13, %struct.adp1653_platform_data** %8, align 8
  %14 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %15 = icmp ne %struct.adp1653_platform_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %107

19:                                               ; preds = %3
  %20 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %21 = load %struct.adp1653_flash*, %struct.adp1653_flash** %6, align 8
  %22 = getelementptr inbounds %struct.adp1653_flash, %struct.adp1653_flash* %21, i32 0, i32 0
  store %struct.adp1653_platform_data* %20, %struct.adp1653_platform_data** %22, align 8
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %24, %struct.device_node** %9, align 8
  %25 = load %struct.device_node*, %struct.device_node** %9, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %107

30:                                               ; preds = %19
  %31 = load %struct.device_node*, %struct.device_node** %9, align 8
  %32 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %33 = getelementptr inbounds %struct.adp1653_platform_data, %struct.adp1653_platform_data* %32, i32 0, i32 0
  %34 = call i64 @of_property_read_u32(%struct.device_node* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %99

37:                                               ; preds = %30
  %38 = load %struct.device_node*, %struct.device_node** %9, align 8
  %39 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %40 = getelementptr inbounds %struct.adp1653_platform_data, %struct.adp1653_platform_data* %39, i32 0, i32 1
  %41 = call i64 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %99

44:                                               ; preds = %37
  %45 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %46 = getelementptr inbounds %struct.adp1653_platform_data, %struct.adp1653_platform_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 1000
  store i32 %48, i32* %46, align 4
  %49 = load %struct.device_node*, %struct.device_node** %9, align 8
  %50 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %51 = getelementptr inbounds %struct.adp1653_platform_data, %struct.adp1653_platform_data* %50, i32 0, i32 2
  %52 = call i64 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %99

55:                                               ; preds = %44
  %56 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %57 = getelementptr inbounds %struct.adp1653_platform_data, %struct.adp1653_platform_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 1000
  store i32 %59, i32* %57, align 4
  %60 = load %struct.device_node*, %struct.device_node** %9, align 8
  %61 = call i32 @of_node_put(%struct.device_node* %60)
  %62 = load %struct.device_node*, %struct.device_node** %7, align 8
  %63 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store %struct.device_node* %63, %struct.device_node** %9, align 8
  %64 = load %struct.device_node*, %struct.device_node** %9, align 8
  %65 = icmp ne %struct.device_node* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %107

69:                                               ; preds = %55
  %70 = load %struct.device_node*, %struct.device_node** %9, align 8
  %71 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %72 = getelementptr inbounds %struct.adp1653_platform_data, %struct.adp1653_platform_data* %71, i32 0, i32 3
  %73 = call i64 @of_property_read_u32(%struct.device_node* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %99

76:                                               ; preds = %69
  %77 = load %struct.device_node*, %struct.device_node** %9, align 8
  %78 = call i32 @of_node_put(%struct.device_node* %77)
  %79 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %82 = call i32 @devm_gpiod_get(i32* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %84 = getelementptr inbounds %struct.adp1653_platform_data, %struct.adp1653_platform_data* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %86 = getelementptr inbounds %struct.adp1653_platform_data, %struct.adp1653_platform_data* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %76
  %91 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %94 = load %struct.adp1653_platform_data*, %struct.adp1653_platform_data** %8, align 8
  %95 = getelementptr inbounds %struct.adp1653_platform_data, %struct.adp1653_platform_data* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @PTR_ERR(i32 %96)
  store i32 %97, i32* %4, align 4
  br label %107

98:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %107

99:                                               ; preds = %75, %54, %43, %36
  %100 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %103 = load %struct.device_node*, %struct.device_node** %9, align 8
  %104 = call i32 @of_node_put(%struct.device_node* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %99, %98, %90, %66, %27, %16
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.adp1653_platform_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
