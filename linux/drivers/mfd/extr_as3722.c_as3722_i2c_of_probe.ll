; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_as3722.c_as3722_i2c_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_as3722.c_as3722_i2c_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.as3722 = type { i32, i8*, i8*, i8* }
%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Device Tree not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid IRQ: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ams,enable-internal-int-pullup\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ams,enable-internal-i2c-pullup\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ams,enable-ac-ok-power-on\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"IRQ flags are 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.as3722*)* @as3722_i2c_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_i2c_of_probe(%struct.i2c_client* %0, %struct.as3722* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.as3722*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.irq_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.as3722* %1, %struct.as3722** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.irq_data* @irq_get_irq_data(i32 %23)
  store %struct.irq_data* %24, %struct.irq_data** %7, align 8
  %25 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %26 = icmp ne %struct.irq_data* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %20
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = call i8* @of_property_read_bool(%struct.device_node* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.as3722*, %struct.as3722** %5, align 8
  %40 = getelementptr inbounds %struct.as3722, %struct.as3722* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = call i8* @of_property_read_bool(%struct.device_node* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.as3722*, %struct.as3722** %5, align 8
  %44 = getelementptr inbounds %struct.as3722, %struct.as3722* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %6, align 8
  %46 = call i8* @of_property_read_bool(%struct.device_node* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.as3722*, %struct.as3722** %5, align 8
  %48 = getelementptr inbounds %struct.as3722, %struct.as3722* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %50 = call i32 @irqd_get_trigger_type(%struct.irq_data* %49)
  %51 = load %struct.as3722*, %struct.as3722** %5, align 8
  %52 = getelementptr inbounds %struct.as3722, %struct.as3722* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load %struct.as3722*, %struct.as3722** %5, align 8
  %56 = getelementptr inbounds %struct.as3722, %struct.as3722* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_dbg(%struct.TYPE_3__* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %36, %27, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
