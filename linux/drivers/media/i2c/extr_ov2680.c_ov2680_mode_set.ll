; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2680_dev = type { i32, i32, %struct.ov2680_ctrls }
%struct.ov2680_ctrls = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@V4L2_EXPOSURE_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*)* @ov2680_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_mode_set(%struct.ov2680_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov2680_dev*, align 8
  %4 = alloca %struct.ov2680_ctrls*, align 8
  %5 = alloca i32, align 4
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %3, align 8
  %6 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %6, i32 0, i32 2
  store %struct.ov2680_ctrls* %7, %struct.ov2680_ctrls** %4, align 8
  %8 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %9 = call i32 @ov2680_gain_set(%struct.ov2680_dev* %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %16 = call i32 @ov2680_exposure_set(%struct.ov2680_dev* %15, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %65

21:                                               ; preds = %14
  %22 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %23 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %24 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ov2680_load_regs(%struct.ov2680_dev* %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %21
  %32 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %4, align 8
  %33 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %40 = call i32 @ov2680_gain_set(%struct.ov2680_dev* %39, i32 1)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %65

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %4, align 8
  %48 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @V4L2_EXPOSURE_AUTO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %56 = call i32 @ov2680_exposure_set(%struct.ov2680_dev* %55, i32 1)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %46
  %63 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %64 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %59, %43, %29, %19, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ov2680_gain_set(%struct.ov2680_dev*, i32) #1

declare dso_local i32 @ov2680_exposure_set(%struct.ov2680_dev*, i32) #1

declare dso_local i32 @ov2680_load_regs(%struct.ov2680_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
