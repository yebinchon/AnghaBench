; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_amradio_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_amradio_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amradio_device = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BUFFER_LENGTH = common dso_local global i32 0, align 4
@USB_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cmd %02x failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AMRADIO_GET_READY_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"follow-up to cmd %02x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amradio_device*, i32, i32, i32*, i32, i32)* @amradio_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amradio_send_cmd(%struct.amradio_device* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amradio_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amradio_device* %0, %struct.amradio_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %17 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %21 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 85, i32* %23, align 4
  %24 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %25 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 170, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %30 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %35 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %40 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  store i32 %38, i32* %42, align 4
  %43 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %44 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %6
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %6
  %53 = phi i1 [ true, %6 ], [ %51, %49 ]
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 8, i32 0
  %56 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %57 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 7
  store i32 %55, i32* %59, align 4
  %60 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %61 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %64 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usb_sndintpipe(i32 %65, i32 2)
  %67 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %68 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @BUFFER_LENGTH, align 4
  %71 = load i32, i32* @USB_TIMEOUT, align 4
  %72 = call i32 @usb_bulk_msg(i32 %62, i32 %66, i32* %69, i32 %70, i32* %15, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %52
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @BUFFER_LENGTH, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75, %52
  %80 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %81 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %80, i32 0, i32 1
  %82 = call i64 @video_is_registered(%struct.TYPE_2__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %86 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @amradio_dev_warn(i32* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %14, align 4
  br label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  br label %98

98:                                               ; preds = %95, %93
  %99 = phi i32 [ %94, %93 ], [ %97, %95 ]
  store i32 %99, i32* %7, align 4
  br label %190

100:                                              ; preds = %75
  %101 = load i32*, i32** %11, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %190

107:                                              ; preds = %103, %100
  %108 = load i32*, i32** %11, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %139

110:                                              ; preds = %107
  %111 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %112 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @memcpy(i32* %113, i32* %114, i32 %115)
  %117 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %118 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %12, align 4
  %124 = sub nsw i32 8, %123
  %125 = call i32 @memset(i32* %122, i32 0, i32 %124)
  %126 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %127 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %130 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @usb_sndintpipe(i32 %131, i32 2)
  %133 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %134 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* @BUFFER_LENGTH, align 4
  %137 = load i32, i32* @USB_TIMEOUT, align 4
  %138 = call i32 @usb_bulk_msg(i32 %128, i32 %132, i32* %135, i32 %136, i32* %15, i32 %137)
  store i32 %138, i32* %14, align 4
  br label %157

139:                                              ; preds = %107
  %140 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %141 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @memset(i32* %142, i32 0, i32 8)
  %144 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %145 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %148 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @usb_rcvbulkpipe(i32 %149, i32 129)
  %151 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %152 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @BUFFER_LENGTH, align 4
  %155 = load i32, i32* @USB_TIMEOUT, align 4
  %156 = call i32 @usb_bulk_msg(i32 %146, i32 %150, i32* %153, i32 %154, i32* %15, i32 %155)
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %139, %110
  %158 = load i32, i32* %14, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @BUFFER_LENGTH, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  store i32 0, i32* %7, align 4
  br label %190

165:                                              ; preds = %160, %157
  %166 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %167 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %166, i32 0, i32 1
  %168 = call i64 @video_is_registered(%struct.TYPE_2__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %165
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @AMRADIO_GET_READY_FLAG, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %176 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @amradio_dev_warn(i32* %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %174, %170, %165
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i32, i32* %14, align 4
  br label %188

185:                                              ; preds = %180
  %186 = load i32, i32* @EIO, align 4
  %187 = sub nsw i32 0, %186
  br label %188

188:                                              ; preds = %185, %183
  %189 = phi i32 [ %184, %183 ], [ %187, %185 ]
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %188, %164, %106, %98
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i64 @video_is_registered(%struct.TYPE_2__*) #1

declare dso_local i32 @amradio_dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
