; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tea6420.c_tea6420_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tea6420.c_tea6420_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"i=%d, o=%d, g=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"i2c_smbus_write_byte() failed, ret:%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @tea6420_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tea6420_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 4
  %18 = and i32 %17, 15
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 15
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @debug, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %21, %struct.v4l2_subdev* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %48, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 6
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 6
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = srem i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %41, %38, %35, %32, %29, %4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %84

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 1
  %54 = shl i32 %53, 5
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  switch i32 %59, label %70 [
    i32 0, label %60
    i32 2, label %63
    i32 4, label %66
    i32 6, label %69
  ]

60:                                               ; preds = %51
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, 24
  store i32 %62, i32* %12, align 4
  br label %70

63:                                               ; preds = %51
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, 16
  store i32 %65, i32* %12, align 4
  br label %70

66:                                               ; preds = %51
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, 8
  store i32 %68, i32* %12, align 4
  br label %70

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %51, %69, %66, %63, %60
  %71 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* @debug, align 4
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %77, %struct.v4l2_subdev* %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %84

83:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %76, %48
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
