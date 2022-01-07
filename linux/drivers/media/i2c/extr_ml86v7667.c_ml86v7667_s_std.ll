; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ml86v7667.c_ml86v7667_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ml86v7667.c_ml86v7667_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ml86v7667_priv = type { i32, i32 }
%struct.i2c_client = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@MRA_NTSC_BT601 = common dso_local global i32 0, align 4
@MRA_PAL_BT601 = common dso_local global i32 0, align 4
@MRA_REG = common dso_local global i32 0, align 4
@MRA_INPUT_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ml86v7667_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ml86v7667_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ml86v7667_priv*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.ml86v7667_priv* @to_ml86v7667(%struct.v4l2_subdev* %10)
  store %struct.ml86v7667_priv* %11, %struct.ml86v7667_priv** %6, align 8
  %12 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %12, i32 0, i32 1
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @V4L2_STD_525_60, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @MRA_NTSC_BT601, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @MRA_PAL_BT601, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %9, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %26 = load i32, i32* @MRA_REG, align 4
  %27 = load i32, i32* @MRA_INPUT_MODE_MASK, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %6, align 8
  %37 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.ml86v7667_priv* @to_ml86v7667(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @ml86v7667_mask_set(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
