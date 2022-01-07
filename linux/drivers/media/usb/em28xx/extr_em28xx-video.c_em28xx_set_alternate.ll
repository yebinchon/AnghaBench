; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_set_alternate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_set_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i64, i32*, i32, %struct.TYPE_2__*, i32, i32, i64, %struct.em28xx_v4l2* }
%struct.TYPE_2__ = type { i32 }
%struct.em28xx_v4l2 = type { i32, i32 }
%struct.usb_device = type { i32 }

@alt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"alternate forced to %d\0A\00", align 1
@EM28XX_BULK_PACKET_MULTIPLIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"minimum isoc packet size: %u (alt=%d)\0A\00", align 1
@EM28XX_NUM_ISOC_PACKETS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"setting alternate %d with wMaxPacketSize=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot change alternate number to %d (error=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_set_alternate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_set_alternate(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_v4l2*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 8
  %11 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %10, align 8
  store %struct.em28xx_v4l2* %11, %struct.em28xx_v4l2** %4, align 8
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.TYPE_2__* %14)
  store %struct.usb_device* %15, %struct.usb_device** %5, align 8
  %16 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %17 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 2
  %20 = add nsw i32 %19, 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i64, i64* @alt, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %1
  %26 = load i64, i64* @alt, align 8
  %27 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, ...) @em28xx_videodbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* @alt, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %39 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %109

40:                                               ; preds = %25, %1
  %41 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %42 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %109

46:                                               ; preds = %40
  %47 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %48 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 2
  %51 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %4, align 8
  %52 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = icmp sgt i32 %54, 345600
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = mul i32 %57, 2
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %46
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %105, %59
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %64 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %108

67:                                               ; preds = %60
  %68 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp uge i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %80 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %108

81:                                               ; preds = %67
  %82 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %83 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %90 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %93 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ugt i32 %88, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %81
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %102 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %81
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %60

108:                                              ; preds = %77, %60
  br label %109

109:                                              ; preds = %108, %45, %31
  %110 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %111 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %116 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %115, i32 0, i32 3
  store i32 512, i32* %116, align 8
  %117 = load i32, i32* @EM28XX_BULK_PACKET_MULTIPLIER, align 4
  %118 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %119 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  br label %140

120:                                              ; preds = %109
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %123 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i8*, i32, ...) @em28xx_videodbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %127 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %130 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %136 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @EM28XX_NUM_ISOC_PACKETS, align 4
  %138 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %139 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %120, %114
  %141 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %142 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %145 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i8*, i32, ...) @em28xx_videodbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %146)
  %148 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %149 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %150 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %153 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @usb_set_interface(%struct.usb_device* %148, i32 %151, i32 %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %140
  %159 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %160 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %159, i32 0, i32 4
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %164 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %170

169:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %158
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.TYPE_2__*) #1

declare dso_local i32 @em28xx_videodbg(i8*, i32, ...) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
