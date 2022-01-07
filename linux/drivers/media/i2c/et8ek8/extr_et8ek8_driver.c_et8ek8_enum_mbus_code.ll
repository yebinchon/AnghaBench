; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_enum_mbus_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_enum_mbus_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i64 }
%struct.et8ek8_reglist = type { i64, %struct.et8ek8_mode }
%struct.et8ek8_mode = type { i64 }

@meta_reglist = common dso_local global i32 0, align 4
@MAX_FMTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ET8EK8_REGLIST_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_mbus_code_enum*)* @et8ek8_enum_mbus_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_enum_mbus_code(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_mbus_code_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_mbus_code_enum*, align 8
  %8 = alloca %struct.et8ek8_reglist**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.et8ek8_mode*, align 8
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_mbus_code_enum* %2, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %15 = call %struct.et8ek8_reglist** @et8ek8_reglist_first(i32* @meta_reglist)
  store %struct.et8ek8_reglist** %15, %struct.et8ek8_reglist*** %8, align 8
  %16 = load i32, i32* @MAX_FMTS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAX_FMTS, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %95

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %89, %28
  %30 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %31 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %30, align 8
  %32 = icmp ne %struct.et8ek8_reglist* %31, null
  br i1 %32, label %33, label %92

33:                                               ; preds = %29
  %34 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %35 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %34, align 8
  %36 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %35, i32 0, i32 1
  store %struct.et8ek8_mode* %36, %struct.et8ek8_mode** %13, align 8
  %37 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %38 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %37, align 8
  %39 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ET8EK8_REGLIST_MODE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %89

44:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %19, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %13, align 8
  %55 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %63

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %45

63:                                               ; preds = %58, %45
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %89

68:                                               ; preds = %63
  %69 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %13, align 8
  %76 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %95

80:                                               ; preds = %68
  %81 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %13, align 8
  %82 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %19, i64 %85
  store i64 %83, i64* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %80, %67, %43
  %90 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %8, align 8
  %91 = getelementptr inbounds %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %90, i32 1
  store %struct.et8ek8_reglist** %91, %struct.et8ek8_reglist*** %8, align 8
  br label %29

92:                                               ; preds = %29
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %74, %25
  %96 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.et8ek8_reglist** @et8ek8_reglist_first(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
