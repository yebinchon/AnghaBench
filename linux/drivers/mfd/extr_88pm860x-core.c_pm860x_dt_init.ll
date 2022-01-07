; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_pm860x_dt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_pm860x_dt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.pm860x_platform_data = type { i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"marvell,88pm860x-irq-read-clr\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"marvell,88pm860x-slave-addr\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Not found \22marvell,88pm860x-slave-addr\22 property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.device*, %struct.pm860x_platform_data*)* @pm860x_dt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm860x_dt_init(%struct.device_node* %0, %struct.device* %1, %struct.pm860x_platform_data* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.pm860x_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.pm860x_platform_data* %2, %struct.pm860x_platform_data** %6, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = call i64 @of_get_property(%struct.device_node* %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* null)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %13 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %17 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %16, i32 0, i32 1
  %18 = call i32 @of_property_read_u32(%struct.device_node* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %25 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %14
  ret i32 0
}

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
