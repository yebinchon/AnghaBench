; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ov2640_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov2640_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2640_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.ov2640_priv*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = call %struct.ov2640_priv* @to_ov2640(%struct.i2c_client* %9)
  store %struct.ov2640_priv* %10, %struct.ov2640_priv** %6, align 8
  %11 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %15 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ov2640_set_power(%struct.ov2640_priv* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 -1
  %31 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %32 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %36 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.ov2640_priv*, %struct.ov2640_priv** %6, align 8
  %42 = getelementptr inbounds %struct.ov2640_priv, %struct.ov2640_priv* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov2640_priv* @to_ov2640(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov2640_set_power(%struct.ov2640_priv*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
