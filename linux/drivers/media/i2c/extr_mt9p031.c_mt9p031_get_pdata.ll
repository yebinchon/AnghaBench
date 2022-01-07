; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9p031_platform_data = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mt9p031_platform_data* }
%struct.device_node = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"input-clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pixel-clock-frequency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt9p031_platform_data* (%struct.i2c_client*)* @mt9p031_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt9p031_platform_data* @mt9p031_get_pdata(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.mt9p031_platform_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9p031_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @CONFIG_OF, align 4
  %7 = call i32 @IS_ENABLED(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.mt9p031_platform_data*, %struct.mt9p031_platform_data** %18, align 8
  store %struct.mt9p031_platform_data* %19, %struct.mt9p031_platform_data** %2, align 8
  br label %50

20:                                               ; preds = %9
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.device_node* @of_graph_get_next_endpoint(i32 %24, i32* null)
  store %struct.device_node* %25, %struct.device_node** %5, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store %struct.mt9p031_platform_data* null, %struct.mt9p031_platform_data** %2, align 8
  br label %50

29:                                               ; preds = %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.mt9p031_platform_data* @devm_kzalloc(%struct.TYPE_2__* %31, i32 8, i32 %32)
  store %struct.mt9p031_platform_data* %33, %struct.mt9p031_platform_data** %4, align 8
  %34 = load %struct.mt9p031_platform_data*, %struct.mt9p031_platform_data** %4, align 8
  %35 = icmp ne %struct.mt9p031_platform_data* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %46

37:                                               ; preds = %29
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = load %struct.mt9p031_platform_data*, %struct.mt9p031_platform_data** %4, align 8
  %40 = getelementptr inbounds %struct.mt9p031_platform_data, %struct.mt9p031_platform_data* %39, i32 0, i32 1
  %41 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %40)
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = load %struct.mt9p031_platform_data*, %struct.mt9p031_platform_data** %4, align 8
  %44 = getelementptr inbounds %struct.mt9p031_platform_data, %struct.mt9p031_platform_data* %43, i32 0, i32 0
  %45 = call i32 @of_property_read_u32(%struct.device_node* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  br label %46

46:                                               ; preds = %37, %36
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = call i32 @of_node_put(%struct.device_node* %47)
  %49 = load %struct.mt9p031_platform_data*, %struct.mt9p031_platform_data** %4, align 8
  store %struct.mt9p031_platform_data* %49, %struct.mt9p031_platform_data** %2, align 8
  br label %50

50:                                               ; preds = %46, %28, %15
  %51 = load %struct.mt9p031_platform_data*, %struct.mt9p031_platform_data** %2, align 8
  ret %struct.mt9p031_platform_data* %51
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(i32, i32*) #1

declare dso_local %struct.mt9p031_platform_data* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
