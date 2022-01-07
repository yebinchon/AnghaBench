; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_videobuf_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_videobuf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.videobuf_queue = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { %struct.vpfe_device* }
%struct.vpfe_device = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vpfe_buffer_setup\0A\00", align 1
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@config_params = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"count=%d, size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @vpfe_videobuf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_videobuf_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vpfe_fh*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 0
  %11 = load %struct.vpfe_fh*, %struct.vpfe_fh** %10, align 8
  store %struct.vpfe_fh* %11, %struct.vpfe_fh** %7, align 8
  %12 = load %struct.vpfe_fh*, %struct.vpfe_fh** %7, align 8
  %13 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %12, i32 0, i32 0
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %13, align 8
  store %struct.vpfe_device* %14, %struct.vpfe_device** %8, align 8
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %17 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %16, i32 0, i32 1
  %18 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %15, i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %20 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %27 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %3
  %32 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %33 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_params, i32 0, i32 0), align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_params, i32 0, i32 0), align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %31, %3
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_params, i32 0, i32 1), align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_params, i32 0, i32 1), align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* @debug, align 4
  %53 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %54 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %53, i32 0, i32 1
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %52, i32* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %58)
  ret i32 0
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
