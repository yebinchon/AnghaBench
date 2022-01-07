; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_g_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_g_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.tuner = type { i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32 (%struct.TYPE_4__*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* @tuner_g_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_g_frequency(%struct.v4l2_subdev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_frequency*, align 8
  %6 = alloca %struct.tuner*, align 8
  %7 = alloca %struct.dvb_tuner_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.tuner* @to_tuner(%struct.v4l2_subdev* %9)
  store %struct.tuner* %10, %struct.tuner** %6, align 8
  %11 = load %struct.tuner*, %struct.tuner** %6, align 8
  %12 = getelementptr inbounds %struct.tuner, %struct.tuner* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.dvb_tuner_ops* %14, %struct.dvb_tuner_ops** %7, align 8
  %15 = load %struct.tuner*, %struct.tuner** %6, align 8
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @check_mode(%struct.tuner* %15, i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tuner*, %struct.tuner** %6, align 8
  %29 = getelementptr inbounds %struct.tuner, %struct.tuner* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %24
  %33 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %7, align 8
  %34 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_4__*, i32*)* %35, null
  br i1 %36, label %37, label %65

37:                                               ; preds = %32
  %38 = load %struct.tuner*, %struct.tuner** %6, align 8
  %39 = getelementptr inbounds %struct.tuner, %struct.tuner* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %37
  %43 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %7, align 8
  %44 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %44, align 8
  %46 = load %struct.tuner*, %struct.tuner** %6, align 8
  %47 = getelementptr inbounds %struct.tuner, %struct.tuner* %46, i32 0, i32 3
  %48 = call i32 %45(%struct.TYPE_4__* %47, i32* %8)
  %49 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %50 = load %struct.tuner*, %struct.tuner** %6, align 8
  %51 = getelementptr inbounds %struct.tuner, %struct.tuner* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %55, 2
  %57 = call i32 @DIV_ROUND_CLOSEST(i32 %56, i32 125)
  br label %61

58:                                               ; preds = %42
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @DIV_ROUND_CLOSEST(i32 %59, i32 62500)
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i32 [ %57, %54 ], [ %60, %58 ]
  %63 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %83

65:                                               ; preds = %37, %32, %24
  %66 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %67 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.tuner*, %struct.tuner** %6, align 8
  %73 = getelementptr inbounds %struct.tuner, %struct.tuner* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  br label %79

75:                                               ; preds = %65
  %76 = load %struct.tuner*, %struct.tuner** %6, align 8
  %77 = getelementptr inbounds %struct.tuner, %struct.tuner* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ %74, %71 ], [ %78, %75 ]
  %81 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %61
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %23
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.tuner* @to_tuner(%struct.v4l2_subdev*) #1

declare dso_local i32 @check_mode(%struct.tuner*, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
