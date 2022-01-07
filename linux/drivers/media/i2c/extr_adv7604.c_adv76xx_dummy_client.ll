; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_dummy_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_dummy_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.adv76xx_state = type { %struct.adv76xx_platform_data }
%struct.adv76xx_platform_data = type { i64* }

@adv76xx_default_addresses = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_client* (%struct.v4l2_subdev*, i32)* @adv76xx_dummy_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_client* @adv76xx_dummy_client(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.adv76xx_state*, align 8
  %7 = alloca %struct.adv76xx_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = call %struct.adv76xx_state* @to_state(%struct.v4l2_subdev* %12)
  store %struct.adv76xx_state* %13, %struct.adv76xx_state** %6, align 8
  %14 = load %struct.adv76xx_state*, %struct.adv76xx_state** %6, align 8
  %15 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %14, i32 0, i32 0
  store %struct.adv76xx_platform_data* %15, %struct.adv76xx_platform_data** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add i32 242, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %7, align 8
  %19 = icmp ne %struct.adv76xx_platform_data* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %7, align 8
  %22 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.adv76xx_platform_data*, %struct.adv76xx_platform_data** %7, align 8
  %34 = getelementptr inbounds %struct.adv76xx_platform_data, %struct.adv76xx_platform_data* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.i2c_client* @i2c_new_dummy_device(i32 %32, i64 %39)
  store %struct.i2c_client* %40, %struct.i2c_client** %9, align 8
  br label %56

41:                                               ; preds = %20, %2
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adv76xx_default_addresses, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adv76xx_default_addresses, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.i2c_client* @i2c_new_ancillary_device(%struct.i2c_client* %42, i32 %48, i32 %54)
  store %struct.i2c_client* %55, %struct.i2c_client** %9, align 8
  br label %56

56:                                               ; preds = %41, %29
  %57 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %58 = call i32 @IS_ERR(%struct.i2c_client* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 1
  %67 = call i32 @io_write(%struct.v4l2_subdev* %61, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %60, %56
  %69 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  ret %struct.i2c_client* %69
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv76xx_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy_device(i32, i64) #1

declare dso_local %struct.i2c_client* @i2c_new_ancillary_device(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
