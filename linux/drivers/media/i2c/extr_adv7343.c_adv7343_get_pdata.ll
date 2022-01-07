; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7343.c_adv7343_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7343.c_adv7343_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7343_platform_data = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.i2c_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.adv7343_platform_data* }
%struct.device_node = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"adi,power-mode-sleep-mode\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"adi,power-mode-pll-ctrl\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"adi,dac-enable\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"adi,sd-dac-enable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adv7343_platform_data* (%struct.i2c_client*)* @adv7343_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adv7343_platform_data* @adv7343_get_pdata(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.adv7343_platform_data*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adv7343_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @CONFIG_OF, align 4
  %7 = call i32 @IS_ENABLED(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.adv7343_platform_data*, %struct.adv7343_platform_data** %18, align 8
  store %struct.adv7343_platform_data* %19, %struct.adv7343_platform_data** %2, align 8
  br label %64

20:                                               ; preds = %9
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.device_node* @of_graph_get_next_endpoint(i32 %24, i32* null)
  store %struct.device_node* %25, %struct.device_node** %5, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store %struct.adv7343_platform_data* null, %struct.adv7343_platform_data** %2, align 8
  br label %64

29:                                               ; preds = %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.adv7343_platform_data* @devm_kzalloc(%struct.TYPE_6__* %31, i32 32, i32 %32)
  store %struct.adv7343_platform_data* %33, %struct.adv7343_platform_data** %4, align 8
  %34 = load %struct.adv7343_platform_data*, %struct.adv7343_platform_data** %4, align 8
  %35 = icmp ne %struct.adv7343_platform_data* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %60

37:                                               ; preds = %29
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i8* @of_property_read_bool(%struct.device_node* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.adv7343_platform_data*, %struct.adv7343_platform_data** %4, align 8
  %41 = getelementptr inbounds %struct.adv7343_platform_data, %struct.adv7343_platform_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = call i8* @of_property_read_bool(%struct.device_node* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.adv7343_platform_data*, %struct.adv7343_platform_data** %4, align 8
  %46 = getelementptr inbounds %struct.adv7343_platform_data, %struct.adv7343_platform_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = load %struct.adv7343_platform_data*, %struct.adv7343_platform_data** %4, align 8
  %50 = getelementptr inbounds %struct.adv7343_platform_data, %struct.adv7343_platform_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @of_property_read_u32_array(%struct.device_node* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 6)
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = load %struct.adv7343_platform_data*, %struct.adv7343_platform_data** %4, align 8
  %56 = getelementptr inbounds %struct.adv7343_platform_data, %struct.adv7343_platform_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @of_property_read_u32_array(%struct.device_node* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 2)
  br label %60

60:                                               ; preds = %37, %36
  %61 = load %struct.device_node*, %struct.device_node** %5, align 8
  %62 = call i32 @of_node_put(%struct.device_node* %61)
  %63 = load %struct.adv7343_platform_data*, %struct.adv7343_platform_data** %4, align 8
  store %struct.adv7343_platform_data* %63, %struct.adv7343_platform_data** %2, align 8
  br label %64

64:                                               ; preds = %60, %28, %15
  %65 = load %struct.adv7343_platform_data*, %struct.adv7343_platform_data** %2, align 8
  ret %struct.adv7343_platform_data* %65
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(i32, i32*) #1

declare dso_local %struct.adv7343_platform_data* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
