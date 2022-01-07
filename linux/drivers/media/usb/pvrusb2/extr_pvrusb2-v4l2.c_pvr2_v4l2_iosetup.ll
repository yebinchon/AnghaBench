; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_iosetup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-v4l2.c_pvr2_v4l2_iosetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_v4l2_fh = type { i64, %struct.TYPE_7__*, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.pvr2_stream* }
%struct.pvr2_stream = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pvr2_v4l2_notify = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_v4l2_fh*)* @pvr2_v4l2_iosetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_v4l2_iosetup(%struct.pvr2_v4l2_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_v4l2_fh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_stream*, align 8
  %6 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_v4l2_fh* %0, %struct.pvr2_v4l2_fh** %3, align 8
  %7 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %8 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

12:                                               ; preds = %1
  %13 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %14 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %89

22:                                               ; preds = %12
  %23 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %24 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %23, i32 0, i32 2
  %25 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %26 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = call i32 @pvr2_channel_claim_stream(%struct.TYPE_9__* %24, %struct.TYPE_8__* %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %89

34:                                               ; preds = %22
  %35 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %36 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i64 @pvr2_channel_create_mpeg_stream(%struct.TYPE_8__* %39)
  %41 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %42 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %44 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %34
  %48 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %49 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %48, i32 0, i32 2
  %50 = call i32 @pvr2_channel_claim_stream(%struct.TYPE_9__* %49, %struct.TYPE_8__* null)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %89

53:                                               ; preds = %34
  %54 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %55 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %58, align 8
  store %struct.pvr2_hdw* %59, %struct.pvr2_hdw** %6, align 8
  %60 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %61 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.pvr2_stream*, %struct.pvr2_stream** %65, align 8
  store %struct.pvr2_stream* %66, %struct.pvr2_stream** %5, align 8
  %67 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %68 = load i64, i64* @pvr2_v4l2_notify, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %71 = call i32 @pvr2_stream_set_callback(%struct.pvr2_stream* %67, i32 %69, %struct.pvr2_v4l2_fh* %70)
  %72 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %73 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %74 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pvr2_hdw_set_stream_type(%struct.pvr2_hdw* %72, i32 %77)
  %79 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %80 = call i32 @pvr2_hdw_set_streaming(%struct.pvr2_hdw* %79, i32 1)
  store i32 %80, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %53
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %89

84:                                               ; preds = %53
  %85 = load %struct.pvr2_v4l2_fh*, %struct.pvr2_v4l2_fh** %3, align 8
  %86 = getelementptr inbounds %struct.pvr2_v4l2_fh, %struct.pvr2_v4l2_fh* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @pvr2_ioread_set_enabled(i64 %87, i32 1)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %84, %82, %47, %32, %19, %11
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @pvr2_channel_claim_stream(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i64 @pvr2_channel_create_mpeg_stream(%struct.TYPE_8__*) #1

declare dso_local i32 @pvr2_stream_set_callback(%struct.pvr2_stream*, i32, %struct.pvr2_v4l2_fh*) #1

declare dso_local i32 @pvr2_hdw_set_stream_type(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_hdw_set_streaming(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_ioread_set_enabled(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
