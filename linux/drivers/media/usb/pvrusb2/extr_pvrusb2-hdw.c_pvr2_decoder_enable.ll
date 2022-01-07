; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_decoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_decoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i64, i32 }

@PVR2_TRACE_CHIPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"subdev v4l2 stream=%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@audio = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"***WARNING*** No decoder present\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"flag_decoder_missed\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32)* @pvr2_decoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_decoder_enable(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @PVR2_TRACE_CHIPS, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %11 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %13 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %12, i32 0, i32 2
  %14 = load i32, i32* @video, align 4
  %15 = load i32, i32* @s_stream, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @v4l2_device_call_all(i32* %13, i32 0, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %19 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %18, i32 0, i32 2
  %20 = load i32, i32* @audio, align 4
  %21 = load i32, i32* @s_stream, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @v4l2_device_call_all(i32* %19, i32 0, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

29:                                               ; preds = %2
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %31 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %36 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %38 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @trace_stbit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %34, %29
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %28
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @trace_stbit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
