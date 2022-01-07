; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_decode_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_decode_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_urb = type { %struct.uvc_streaming*, %struct.urb* }
%struct.uvc_streaming = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i32 }
%struct.urb = type { i32, i32, i32* }
%struct.uvc_buffer = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@UVC_BUF_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_urb*, %struct.uvc_buffer*, %struct.uvc_buffer*)* @uvc_video_decode_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_decode_bulk(%struct.uvc_urb* %0, %struct.uvc_buffer* %1, %struct.uvc_buffer* %2) #0 {
  %4 = alloca %struct.uvc_urb*, align 8
  %5 = alloca %struct.uvc_buffer*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.uvc_streaming*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uvc_urb* %0, %struct.uvc_urb** %4, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %5, align 8
  store %struct.uvc_buffer* %2, %struct.uvc_buffer** %6, align 8
  %12 = load %struct.uvc_urb*, %struct.uvc_urb** %4, align 8
  %13 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %12, i32 0, i32 1
  %14 = load %struct.urb*, %struct.urb** %13, align 8
  store %struct.urb* %14, %struct.urb** %7, align 8
  %15 = load %struct.uvc_urb*, %struct.uvc_urb** %4, align 8
  %16 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %15, i32 0, i32 0
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %16, align 8
  store %struct.uvc_streaming* %17, %struct.uvc_streaming** %8, align 8
  %18 = load %struct.urb*, %struct.urb** %7, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %24 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %182

29:                                               ; preds = %22, %3
  %30 = load %struct.urb*, %struct.urb** %7, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  %33 = load %struct.urb*, %struct.urb** %7, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %39 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %37
  store i64 %42, i64* %40, align 8
  %43 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %44 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %109

48:                                               ; preds = %29
  %49 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %50 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %109, label %54

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %69, %54
  %56 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %57 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @uvc_video_decode_start(%struct.uvc_streaming* %56, %struct.uvc_buffer* %57, i32* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %67 = call i32 @uvc_video_next_buffers(%struct.uvc_streaming* %66, %struct.uvc_buffer** %5, %struct.uvc_buffer** %6)
  br label %68

68:                                               ; preds = %65, %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %55, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %79 = icmp eq %struct.uvc_buffer* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77, %74
  %81 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %82 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  br label %108

84:                                               ; preds = %77
  %85 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %86 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @memcpy(i32 %88, i32* %89, i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %94 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %97 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @uvc_video_decode_meta(%struct.uvc_streaming* %96, %struct.uvc_buffer* %97, i32* %98, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %9, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %84, %80
  br label %109

109:                                              ; preds = %108, %48, %29
  %110 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %111 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %109
  %116 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %117 = icmp ne %struct.uvc_buffer* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.uvc_urb*, %struct.uvc_urb** %4, align 8
  %120 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @uvc_video_decode_data(%struct.uvc_urb* %119, %struct.uvc_buffer* %120, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %115, %109
  %125 = load %struct.urb*, %struct.urb** %7, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.urb*, %struct.urb** %7, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %124
  %133 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %134 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %138 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %136, %140
  br i1 %141, label %142, label %182

142:                                              ; preds = %132, %124
  %143 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %144 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %172, label %148

148:                                              ; preds = %142
  %149 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %150 = icmp ne %struct.uvc_buffer* %149, null
  br i1 %150, label %151, label %172

151:                                              ; preds = %148
  %152 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %153 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %154 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %155 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %159 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @uvc_video_decode_end(%struct.uvc_streaming* %152, %struct.uvc_buffer* %153, i32 %157, i64 %161)
  %163 = load %struct.uvc_buffer*, %struct.uvc_buffer** %5, align 8
  %164 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @UVC_BUF_STATE_READY, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %151
  %169 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %170 = call i32 @uvc_video_next_buffers(%struct.uvc_streaming* %169, %struct.uvc_buffer** %5, %struct.uvc_buffer** %6)
  br label %171

171:                                              ; preds = %168, %151
  br label %172

172:                                              ; preds = %171, %148, %142
  %173 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %174 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  %176 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %177 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  store i32 0, i32* %178, align 8
  %179 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %180 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  br label %182

182:                                              ; preds = %28, %172, %132
  ret void
}

declare dso_local i32 @uvc_video_decode_start(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_video_next_buffers(%struct.uvc_streaming*, %struct.uvc_buffer**, %struct.uvc_buffer**) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @uvc_video_decode_meta(%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_video_decode_data(%struct.uvc_urb*, %struct.uvc_buffer*, i32*, i32) #1

declare dso_local i32 @uvc_video_decode_end(%struct.uvc_streaming*, %struct.uvc_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
