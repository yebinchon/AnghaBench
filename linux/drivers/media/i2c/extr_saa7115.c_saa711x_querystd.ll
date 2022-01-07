; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_querystd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i64 }

@R_1F_STATUS_BYTE_2_VD_DEC = common dso_local global i32 0, align 4
@SAA7115 = common dso_local global i64 0, align 8
@R_1E_STATUS_BYTE_1_VD_DEC = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Status byte 1 (0x1e)=0x%02x\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Status byte 2 (0x1f)=0x%02x\0A\00", align 1
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"detected std mask = %08Lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @saa711x_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_querystd(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.saa711x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.saa711x_state* %9, %struct.saa711x_state** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = load i32, i32* @R_1F_STATUS_BYTE_2_VD_DEC, align 4
  %12 = call i32 @saa711x_read(%struct.v4l2_subdev* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %14 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SAA7115, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %2
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load i32, i32* @R_1E_STATUS_BYTE_1_VD_DEC, align 4
  %21 = call i32 @saa711x_read(%struct.v4l2_subdev* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @debug, align 4
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @v4l2_dbg(i32 1, i32 %22, %struct.v4l2_subdev* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 3
  switch i32 %27, label %51 [
    i32 1, label %28
    i32 2, label %33
    i32 3, label %46
  ]

28:                                               ; preds = %18
  %29 = load i32, i32* @V4L2_STD_NTSC, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %54

33:                                               ; preds = %18
  %34 = load i32, i32* @V4L2_STD_PAL, align 4
  %35 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %54

46:                                               ; preds = %18
  %47 = load i32, i32* @V4L2_STD_SECAM, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %54

51:                                               ; preds = %18
  %52 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46, %33, %28
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* @debug, align 4
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @v4l2_dbg(i32 1, i32 %56, %struct.v4l2_subdev* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 64
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %65 = load i32*, i32** %4, align 8
  store i32 %64, i32* %65, align 4
  br label %81

66:                                               ; preds = %55
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @V4L2_STD_525_60, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %80

75:                                               ; preds = %66
  %76 = load i32, i32* @V4L2_STD_625_50, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %63
  %82 = load i32, i32* @debug, align 4
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @v4l2_dbg(i32 1, i32 %82, %struct.v4l2_subdev* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  ret i32 0
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
