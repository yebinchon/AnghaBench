; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_gain = type { i32, i32 }
%struct.et8ek8_sensor = type { i32 }
%struct.i2c_client = type { i32 }

@et8ek8_gain_table = common dso_local global %struct.et8ek8_gain* null, align 8
@ET8EK8_REG_8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et8ek8_sensor*, i64)* @et8ek8_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_set_gain(%struct.et8ek8_sensor* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.et8ek8_sensor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.et8ek8_gain, align 4
  %8 = alloca i32, align 4
  store %struct.et8ek8_sensor* %0, %struct.et8ek8_sensor** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.et8ek8_sensor*, %struct.et8ek8_sensor** %4, align 8
  %10 = getelementptr inbounds %struct.et8ek8_sensor, %struct.et8ek8_sensor* %9, i32 0, i32 0
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.et8ek8_gain*, %struct.et8ek8_gain** @et8ek8_gain_table, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.et8ek8_gain, %struct.et8ek8_gain* %12, i64 %13
  %15 = bitcast %struct.et8ek8_gain* %7 to i8*
  %16 = bitcast %struct.et8ek8_gain* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %19 = getelementptr inbounds %struct.et8ek8_gain, %struct.et8ek8_gain* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %17, i32 %18, i32 4682, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %57

27:                                               ; preds = %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %30 = getelementptr inbounds %struct.et8ek8_gain, %struct.et8ek8_gain* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %28, i32 %29, i32 4681, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %57

38:                                               ; preds = %27
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %41 = getelementptr inbounds %struct.et8ek8_gain, %struct.et8ek8_gain* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %39, i32 %40, i32 4685, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %57

49:                                               ; preds = %38
  %50 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %51 = load i32, i32* @ET8EK8_REG_8BIT, align 4
  %52 = getelementptr inbounds %struct.et8ek8_gain, %struct.et8ek8_gain* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 255
  %55 = call i32 @et8ek8_i2c_write_reg(%struct.i2c_client* %50, i32 %51, i32 4684, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %47, %36, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @et8ek8_i2c_write_reg(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
