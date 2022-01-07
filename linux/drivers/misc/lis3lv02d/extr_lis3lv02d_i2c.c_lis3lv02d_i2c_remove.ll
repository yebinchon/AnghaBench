; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d_i2c.c_lis3lv02d_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d_i2c.c_lis3lv02d_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.lis3lv02d_platform_data* }
%struct.lis3lv02d_platform_data = type { i32 (...)* }
%struct.lis3lv02d = type { i32 }

@lis3_dev = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lis3lv02d_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3lv02d_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lis3lv02d*, align 8
  %4 = alloca %struct.lis3lv02d_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.lis3lv02d* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.lis3lv02d* %6, %struct.lis3lv02d** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %9, align 8
  store %struct.lis3lv02d_platform_data* %10, %struct.lis3lv02d_platform_data** %4, align 8
  %11 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %12 = icmp ne %struct.lis3lv02d_platform_data* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %14, i32 0, i32 0
  %16 = load i32 (...)*, i32 (...)** %15, align 8
  %17 = icmp ne i32 (...)* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.lis3lv02d_platform_data*, %struct.lis3lv02d_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.lis3lv02d_platform_data, %struct.lis3lv02d_platform_data* %19, i32 0, i32 0
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = call i32 (...) %21()
  br label %23

23:                                               ; preds = %18, %13, %1
  %24 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %25 = call i32 @lis3lv02d_joystick_disable(%struct.lis3lv02d* %24)
  %26 = call i32 @lis3lv02d_remove_fs(%struct.TYPE_5__* @lis3_dev)
  %27 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %28 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lis3_dev, i32 0, i32 0), align 4
  %32 = call i32 @regulator_bulk_free(i32 %30, i32 %31)
  ret i32 0
}

declare dso_local %struct.lis3lv02d* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @lis3lv02d_joystick_disable(%struct.lis3lv02d*) #1

declare dso_local i32 @lis3lv02d_remove_fs(%struct.TYPE_5__*) #1

declare dso_local i32 @regulator_bulk_free(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
