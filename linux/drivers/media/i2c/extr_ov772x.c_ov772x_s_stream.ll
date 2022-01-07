; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ov772x_priv = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@COM2 = common dso_local global i32 0, align 4
@SOFT_SLEEP_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"format %d, win %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov772x_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.ov772x_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = call %struct.ov772x_priv* @to_ov772x(%struct.v4l2_subdev* %10)
  store %struct.ov772x_priv* %11, %struct.ov772x_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %13 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %16 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @COM2, align 4
  %26 = load i32, i32* @SOFT_SLEEP_MODE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @SOFT_SLEEP_MODE, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 0, %29 ], [ %31, %30 ]
  %34 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %59

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %45 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %50 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %41, %38
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %58 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %37, %20
  %60 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %61 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov772x_priv* @to_ov772x(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
