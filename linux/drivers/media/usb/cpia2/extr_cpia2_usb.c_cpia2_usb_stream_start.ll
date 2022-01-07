; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_cpia2_usb_stream_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_usb.c_cpia2_usb_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_4__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Flushing buffers\0A\00", align 1
@FRAME_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cpia2_usb_change_streaming_alternate() = %d!\0A\00", align 1
@USBIF_CMDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [120 x i8] c"cpia2_usb_change_streaming_alternate(%d) =%d has already failed. Then tried to call set_alternate(USBIF_CMDONLY) = %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_usb_stream_start(%struct.camera_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %11 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %106

15:                                               ; preds = %2
  %16 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %17 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %15
  %21 = call i32 @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %44, %20
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %25 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load i32, i32* @FRAME_EMPTY, align 4
  %30 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %31 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %30, i32 0, i32 7
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %29, i32* %36, align 8
  %37 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 7
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %22

47:                                               ; preds = %22
  %48 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %49 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %48, i32 0, i32 7
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 0
  %52 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 5
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %55 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %60 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %62 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %47, %15
  %64 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %65 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %7, align 4
  %69 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %70 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @cpia2_usb_change_streaming_alternate(%struct.camera_data* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %63
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %83 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  %86 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %87 = load i32, i32* @USBIF_CMDONLY, align 4
  %88 = call i32 @set_alternate(%struct.camera_data* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %78
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %78
  br label %104

97:                                               ; preds = %63
  %98 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %99 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %101 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %103 = call i32 @cpia2_usb_stream_resume(%struct.camera_data* %102)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %97, %96
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %14
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @cpia2_usb_change_streaming_alternate(%struct.camera_data*, i32) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i32 @set_alternate(%struct.camera_data*, i32) #1

declare dso_local i32 @cpia2_usb_stream_resume(%struct.camera_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
