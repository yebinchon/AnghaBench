; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_dt_to_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_dt_to_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.palmas_platform_data = type { i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"ti,mux-pad1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ti,mux-pad2\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ti,power-ctrl\00", align 1
@PALMAS_POWER_CTRL_NSLEEP_MASK = common dso_local global i32 0, align 4
@PALMAS_POWER_CTRL_ENABLE1_MASK = common dso_local global i32 0, align 4
@PALMAS_POWER_CTRL_ENABLE2_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"ti,system-power-controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.palmas_platform_data*)* @palmas_dt_to_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @palmas_dt_to_pdata(%struct.i2c_client* %0, %struct.palmas_platform_data* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.palmas_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.palmas_platform_data* %1, %struct.palmas_platform_data** %4, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %4, align 8
  %18 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %4, align 8
  %29 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %4, align 8
  %32 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %4, align 8
  %42 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %51

43:                                               ; preds = %33
  %44 = load i32, i32* @PALMAS_POWER_CTRL_NSLEEP_MASK, align 4
  %45 = load i32, i32* @PALMAS_POWER_CTRL_ENABLE1_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PALMAS_POWER_CTRL_ENABLE2_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %4, align 8
  %50 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %38
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %4, align 8
  %59 = call i32 @palmas_set_pdata_irq_flag(%struct.i2c_client* %57, %struct.palmas_platform_data* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.device_node*, %struct.device_node** %5, align 8
  %62 = call i32 @of_property_read_bool(%struct.device_node* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %4, align 8
  %64 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @palmas_set_pdata_irq_flag(%struct.i2c_client*, %struct.palmas_platform_data*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
