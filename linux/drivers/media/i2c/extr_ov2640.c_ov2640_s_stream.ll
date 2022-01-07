; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ov2640_priv = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov2640_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2640_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.ov2640_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call %struct.ov2640_priv* @to_ov2640(%struct.i2c_client* %10)
  store %struct.ov2640_priv* %11, %struct.ov2640_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %16 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %29 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ov2640_set_params(%struct.i2c_client* %27, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %38, i32 0, i32 2
  %40 = call i32 @__v4l2_ctrl_handler_setup(i32* %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %26
  br label %42

42:                                               ; preds = %41, %23
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %49 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %52 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov2640_priv* @to_ov2640(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov2640_set_params(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
