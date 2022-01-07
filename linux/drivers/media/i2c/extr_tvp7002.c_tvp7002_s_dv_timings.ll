; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp7002.c_tvp7002_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dv_timings = type { i64, %struct.v4l2_bt_timings }
%struct.tvp7002 = type { %struct.TYPE_4__* }

@V4L2_DV_BT_656_1120 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NUM_TIMINGS = common dso_local global i32 0, align 4
@tvp7002_timings = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)* @tvp7002_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp7002_s_dv_timings(%struct.v4l2_subdev* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.tvp7002*, align 8
  %7 = alloca %struct.v4l2_bt_timings*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_bt_timings*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.tvp7002* @to_tvp7002(%struct.v4l2_subdev* %10)
  store %struct.tvp7002* %11, %struct.tvp7002** %6, align 8
  %12 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %12, i32 0, i32 1
  store %struct.v4l2_bt_timings* %13, %struct.v4l2_bt_timings** %7, align 8
  %14 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_DV_BT_656_1120, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NUM_TIMINGS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tvp7002_timings, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.v4l2_bt_timings* %33, %struct.v4l2_bt_timings** %9, align 8
  %34 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %7, align 8
  %35 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %9, align 8
  %36 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %36, i32 0, i32 1
  %38 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %38, i32 0, i32 0
  %40 = ptrtoint i32* %37 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcmp(%struct.v4l2_bt_timings* %34, %struct.v4l2_bt_timings* %35, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %27
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tvp7002_timings, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = load %struct.tvp7002*, %struct.tvp7002** %6, align 8
  %53 = getelementptr inbounds %struct.tvp7002, %struct.tvp7002* %52, i32 0, i32 0
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tvp7002_timings, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tvp7002_write_inittab(%struct.v4l2_subdev* %54, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %23

66:                                               ; preds = %23
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %47, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.tvp7002* @to_tvp7002(%struct.v4l2_subdev*) #1

declare dso_local i32 @memcmp(%struct.v4l2_bt_timings*, %struct.v4l2_bt_timings*, i32) #1

declare dso_local i32 @tvp7002_write_inittab(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
