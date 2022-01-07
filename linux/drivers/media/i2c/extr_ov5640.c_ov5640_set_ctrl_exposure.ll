; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_ctrl_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_ctrl_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { %struct.ov5640_ctrls }
%struct.ov5640_ctrls = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@OV5640_REG_AEC_PK_VTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, i32)* @ov5640_set_ctrl_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_ctrl_exposure(%struct.ov5640_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov5640_ctrls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %10, i32 0, i32 0
  store %struct.ov5640_ctrls* %11, %struct.ov5640_ctrls** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %6, align 8
  %17 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ov5640_set_autoexposure(%struct.ov5640_dev* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %31
  %35 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %6, align 8
  %36 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %34
  %42 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %43 = load i32, i32* @OV5640_REG_AEC_PK_VTS, align 4
  %44 = call i32 @ov5640_read_reg16(%struct.ov5640_dev* %42, i32 %43, i64* %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %79

49:                                               ; preds = %41
  %50 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %51 = call i32 @ov5640_get_vts(%struct.ov5640_dev* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %79

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %9, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %9, align 8
  store i32 0, i32* %8, align 4
  %61 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %6, align 8
  %62 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %56
  %69 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %70 = load %struct.ov5640_ctrls*, %struct.ov5640_ctrls** %6, align 8
  %71 = getelementptr inbounds %struct.ov5640_ctrls, %struct.ov5640_ctrls* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ov5640_set_exposure(%struct.ov5640_dev* %69, i64 %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %68, %56
  br label %77

77:                                               ; preds = %76, %34, %31
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %54, %47, %28
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @ov5640_set_autoexposure(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_read_reg16(%struct.ov5640_dev*, i32, i64*) #1

declare dso_local i32 @ov5640_get_vts(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_set_exposure(%struct.ov5640_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
