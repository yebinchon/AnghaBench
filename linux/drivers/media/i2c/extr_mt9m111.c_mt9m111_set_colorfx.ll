; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_set_colorfx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_set_colorfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_control = type { i32, i32, i32, i32 }
%struct.mt9m111 = type { i32 }
%struct.i2c_client = type { i32 }

@mt9m111_set_colorfx.colorfx = internal constant [5 x %struct.v4l2_control] [%struct.v4l2_control { i32 130, i32 0, i32 0, i32 0 }, %struct.v4l2_control { i32 132, i32 1, i32 0, i32 0 }, %struct.v4l2_control { i32 129, i32 2, i32 0, i32 0 }, %struct.v4l2_control { i32 131, i32 3, i32 0, i32 0 }, %struct.v4l2_control { i32 128, i32 4, i32 0, i32 0 }], align 16
@MT9M111_EFFECTS_MODE = common dso_local global i32 0, align 4
@MT9M111_EFFECTS_MODE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m111*, i32)* @mt9m111_set_colorfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_colorfx(%struct.mt9m111* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt9m111*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.mt9m111* %0, %struct.mt9m111** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %9 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %8, i32 0, i32 0
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ARRAY_SIZE(%struct.v4l2_control* getelementptr inbounds ([5 x %struct.v4l2_control], [5 x %struct.v4l2_control]* @mt9m111_set_colorfx.colorfx, i64 0, i64 0))
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x %struct.v4l2_control], [5 x %struct.v4l2_control]* @mt9m111_set_colorfx.colorfx, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %25 = load i32, i32* @MT9M111_EFFECTS_MODE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x %struct.v4l2_control], [5 x %struct.v4l2_control]* @mt9m111_set_colorfx.colorfx, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MT9M111_EFFECTS_MODE_MASK, align 4
  %32 = call i32 @mt9m111_reg_mask(%struct.i2c_client* %24, i32 %25, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.v4l2_control*) #1

declare dso_local i32 @mt9m111_reg_mask(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
