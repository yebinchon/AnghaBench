; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mt9t112_priv = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @mt9t112_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_s_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.mt9t112_priv*, align 8
  %7 = alloca %struct.v4l2_rect, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.mt9t112_priv* @to_mt9t112(%struct.i2c_client* %11)
  store %struct.mt9t112_priv* %12, %struct.mt9t112_priv** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 0
  %14 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 1
  %19 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %18, align 4
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 2
  %24 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 3
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 4
  %31 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mt9t112_set_params(%struct.mt9t112_priv* %31, %struct.v4l2_rect* %7, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %2
  %39 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %40 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %2
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9t112_priv* @to_mt9t112(%struct.i2c_client*) #1

declare dso_local i32 @mt9t112_set_params(%struct.mt9t112_priv*, %struct.v4l2_rect*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
