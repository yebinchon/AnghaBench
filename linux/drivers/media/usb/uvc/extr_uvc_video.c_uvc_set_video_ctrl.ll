; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_set_video_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_set_video_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, i32 }
%struct.uvc_streaming_control = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_SET_CUR = common dso_local global i32 0, align 4
@UVC_VS_PROBE_CONTROL = common dso_local global i32 0, align 4
@UVC_VS_COMMIT_CONTROL = common dso_local global i32 0, align 4
@uvc_timeout_param = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to set UVC %s control : %d (exp. %u).\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.uvc_streaming_control*, i32)* @uvc_set_video_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_set_video_ctrl(%struct.uvc_streaming* %0, %struct.uvc_streaming_control* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.uvc_streaming_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %5, align 8
  store %struct.uvc_streaming_control* %1, %struct.uvc_streaming_control** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %12 = call i32 @uvc_video_ctrl_size(%struct.uvc_streaming* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64* @kzalloc(i32 %13, i32 %14)
  store i64* %15, i64** %9, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %160

21:                                               ; preds = %3
  %22 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %23 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = load i64*, i64** %9, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = bitcast i64* %27 to i32*
  store i32 %25, i32* %28, align 4
  %29 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %30 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %29, i32 0, i32 14
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %35 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %34, i32 0, i32 13
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %40 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load i64*, i64** %9, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 4
  %45 = bitcast i64* %44 to i32*
  store i32 %42, i32* %45, align 4
  %46 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %47 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 8
  %52 = bitcast i64* %51 to i32*
  store i32 %49, i32* %52, align 4
  %53 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %54 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @cpu_to_le16(i32 %55)
  %57 = load i64*, i64** %9, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 10
  %59 = bitcast i64* %58 to i32*
  store i32 %56, i32* %59, align 4
  %60 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %61 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cpu_to_le16(i32 %62)
  %64 = load i64*, i64** %9, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 12
  %66 = bitcast i64* %65 to i32*
  store i32 %63, i32* %66, align 4
  %67 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %68 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cpu_to_le16(i32 %69)
  %71 = load i64*, i64** %9, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 14
  %73 = bitcast i64* %72 to i32*
  store i32 %70, i32* %73, align 4
  %74 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %75 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cpu_to_le16(i32 %76)
  %78 = load i64*, i64** %9, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 16
  %80 = bitcast i64* %79 to i32*
  store i32 %77, i32* %80, align 4
  %81 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %82 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 18
  %86 = call i32 @put_unaligned_le32(i32 %83, i64* %85)
  %87 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %88 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i64*, i64** %9, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 22
  %92 = call i32 @put_unaligned_le32(i32 %89, i64* %91)
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %93, 34
  br i1 %94, label %95, label %122

95:                                               ; preds = %21
  %96 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %97 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 26
  %101 = call i32 @put_unaligned_le32(i32 %98, i64* %100)
  %102 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %103 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %9, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 30
  store i64 %104, i64* %106, align 8
  %107 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %108 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %9, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 31
  store i64 %109, i64* %111, align 8
  %112 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %113 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 32
  store i64 %114, i64* %116, align 8
  %117 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %6, align 8
  %118 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %9, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 33
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %95, %21
  %123 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %124 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @UVC_SET_CUR, align 4
  %127 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %128 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* @UVC_VS_PROBE_CONTROL, align 4
  br label %136

134:                                              ; preds = %122
  %135 = load i32, i32* @UVC_VS_COMMIT_CONTROL, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = load i64*, i64** %9, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @uvc_timeout_param, align 4
  %141 = call i32 @__uvc_query_ctrl(i32 %125, i32 %126, i32 0, i32 %129, i32 %137, i64* %138, i32 %139, i32 %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %136
  %146 = load i32, i32* @KERN_ERR, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @uvc_printk(i32 %146, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %150, i32 %151, i32 %152)
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %145, %136
  %157 = load i64*, i64** %9, align 8
  %158 = call i32 @kfree(i64* %157)
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %156, %18
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @uvc_video_ctrl_size(%struct.uvc_streaming*) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i64*) #1

declare dso_local i32 @__uvc_query_ctrl(i32, i32, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @uvc_printk(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
