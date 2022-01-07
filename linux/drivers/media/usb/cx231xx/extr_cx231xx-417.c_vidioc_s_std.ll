; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }

@cx231xx_tvnorms = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"encodernorm set to NTSC\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"encodernorm set to PAL\0A\00", align 1
@V4L2_STD_PAL_B = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"exit vidioc_s_std() i=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %12, align 8
  store %struct.cx231xx_fh* %13, %struct.cx231xx_fh** %8, align 8
  %14 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %15 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %14, i32 0, i32 0
  %16 = load %struct.cx231xx*, %struct.cx231xx** %15, align 8
  store %struct.cx231xx* %16, %struct.cx231xx** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %34, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cx231xx_tvnorms, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cx231xx_tvnorms, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %23, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %17

37:                                               ; preds = %32, %17
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cx231xx_tvnorms, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %39)
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %94

45:                                               ; preds = %37
  %46 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cx231xx_tvnorms, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = bitcast %struct.TYPE_5__* %47 to i8*
  %53 = bitcast %struct.TYPE_5__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %55 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 45056
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %45
  %61 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @V4L2_STD_NTSC, align 4
  %63 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %66 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 480, i32* %67, align 4
  %68 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 1
  %70 = call i32 @cx2341x_handler_set_50hz(i32* %69, i32 0)
  br label %82

71:                                               ; preds = %45
  %72 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @V4L2_STD_PAL_B, align 4
  %74 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %75 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %77 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 576, i32* %78, align 4
  %79 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %80 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %79, i32 0, i32 1
  %81 = call i32 @cx2341x_handler_set_50hz(i32* %80, i32 1)
  br label %82

82:                                               ; preds = %71, %60
  %83 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %84 = load i32, i32* @video, align 4
  %85 = load i32, i32* @s_std, align 4
  %86 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @call_all(%struct.cx231xx* %83, i32 %84, i32 %85, i32 %88)
  %90 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %91 = call i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx* %90)
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i32, i8*, ...) @dprintk(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %82, %42
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @cx2341x_handler_set_50hz(i32*, i32) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32, i32) #1

declare dso_local i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
