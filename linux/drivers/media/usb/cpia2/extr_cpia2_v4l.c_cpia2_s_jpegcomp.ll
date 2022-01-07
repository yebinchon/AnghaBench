; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_s_jpegcomp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_s_jpegcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_jpegcompression = type { i32, i32, i32, i32, i32, i32 }
%struct.camera_data = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"S_JPEGCOMP APP_len:%d COM_len:%d\0A\00", align 1
@V4L2_JPEG_MARKER_DHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Bad APPn Params n=%d len=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Bad COM_len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_jpegcompression*)* @cpia2_s_jpegcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_s_jpegcomp(%struct.file* %0, i8* %1, %struct.v4l2_jpegcompression* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_jpegcompression*, align 8
  %8 = alloca %struct.camera_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_jpegcompression* %2, %struct.v4l2_jpegcompression** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.camera_data* @video_drvdata(%struct.file* %9)
  store %struct.camera_data* %10, %struct.camera_data** %8, align 8
  %11 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V4L2_JPEG_MARKER_DHT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %27 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %3
  %35 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %34
  %40 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ule i64 %43, 4
  br i1 %44, label %45, label %76

45:                                               ; preds = %39
  %46 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %53, 15
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %60 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %65 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %67 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memcpy(i32 %68, i32 %71, i32 %74)
  br label %86

76:                                               ; preds = %50, %45, %39, %34
  %77 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i32, ...) @LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %131

86:                                               ; preds = %55
  br label %90

87:                                               ; preds = %3
  %88 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %89 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %86
  %91 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %130

95:                                               ; preds = %90
  %96 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %95
  %101 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ule i64 %104, 4
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %111 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %113 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @memcpy(i32 %114, i32 %117, i32 %120)
  br label %129

122:                                              ; preds = %100, %95
  %123 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, i32, ...) @LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %131

129:                                              ; preds = %106
  br label %130

130:                                              ; preds = %129, %90
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %122, %76
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @LOG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
