; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.firmware = type { i32 }
%struct.hexline = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"writing to address 0x%08x (buffer: 0x%02x %02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"firmware download failed at %d with %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"firmware started successfully.\00", align 1
@EIO = common dso_local global i32 0, align 4
@nb_packet_buffer_size = common dso_local global i32 0, align 4
@REQUEST_GET_VERSION = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@dib0700_device_count = common dso_local global i32 0, align 4
@dib0700_devices = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_download_firmware(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.hexline, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 260, i32 %14)
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %237

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %82, %21
  %23 = load %struct.firmware*, %struct.firmware** %5, align 8
  %24 = call i32 @dvb_usb_get_hexline(%struct.firmware* %23, %struct.hexline* %6, i32* %7)
  store i32 %24, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @deb_fwdata(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32* %54, i32 %56, i32 %58)
  %60 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 4, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %69 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %70 = call i32 @usb_sndbulkpipe(%struct.usb_device* %69, i32 1)
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 5
  %75 = call i32 @usb_bulk_msg(%struct.usb_device* %68, i32 %70, i32* %71, i32 %74, i32* %9, i32 1000)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %26
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  br label %233

82:                                               ; preds = %26
  br label %22

83:                                               ; preds = %22
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %88 = call i32 @dib0700_jumpram(%struct.usb_device* %87, i32 1879048192)
  store i32 %88, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = call i32 @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %92 = call i32 @msleep(i32 500)
  br label %93

93:                                               ; preds = %90, %86
  br label %97

94:                                               ; preds = %83
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %94, %93
  %98 = load i32, i32* @nb_packet_buffer_size, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 1, i32* @nb_packet_buffer_size, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %103 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %104 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %103, i32 0)
  %105 = load i32, i32* @REQUEST_GET_VERSION, align 4
  %106 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %107 = load i32, i32* @USB_DIR_IN, align 4
  %108 = or i32 %106, %107
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %111 = call i32 @usb_control_msg(%struct.usb_device* %102, i32 %104, i32 %105, i32 %108, i32 0, i32 0, i32* %109, i32 16, i32 %110)
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 24
  %116 = load i32*, i32** %12, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 9
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 16
  %120 = or i32 %115, %119
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 10
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 8
  %125 = or i32 %120, %124
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 11
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %125, %128
  store i32 %129, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %229, %101
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @dib0700_device_count, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %232

134:                                              ; preds = %130
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %225, %134
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dib0700_devices, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %136, %142
  br i1 %143, label %144, label %228

144:                                              ; preds = %135
  %145 = load i32, i32* %13, align 4
  %146 = icmp sge i32 %145, 66049
  br i1 %146, label %147, label %166

147:                                              ; preds = %144
  %148 = load i32, i32* @nb_packet_buffer_size, align 4
  %149 = mul nsw i32 188, %148
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dib0700_devices, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i32 %149, i32* %165, align 4
  br label %224

166:                                              ; preds = %144
  %167 = load i32, i32* @nb_packet_buffer_size, align 4
  %168 = mul nsw i32 188, %167
  %169 = add nsw i32 %168, 94
  %170 = sdiv i32 %169, 512
  %171 = mul nsw i32 %170, 512
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dib0700_devices, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  store i32 %171, i32* %187, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dib0700_devices, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %204, 512
  br i1 %205, label %206, label %223

206:                                              ; preds = %166
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dib0700_devices, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i64 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  store i32 512, i32* %222, align 4
  br label %223

223:                                              ; preds = %206, %166
  br label %224

224:                                              ; preds = %223, %147
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %135

228:                                              ; preds = %135
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  br label %130

232:                                              ; preds = %130
  br label %233

233:                                              ; preds = %232, %78
  %234 = load i32*, i32** %12, align 8
  %235 = call i32 @kfree(i32* %234)
  %236 = load i32, i32* %8, align 4
  store i32 %236, i32* %3, align 4
  br label %237

237:                                              ; preds = %233, %18
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dvb_usb_get_hexline(%struct.firmware*, %struct.hexline*, i32*) #1

declare dso_local i32 @deb_fwdata(i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @err(i8*, i32, i32) #1

declare dso_local i32 @dib0700_jumpram(%struct.usb_device*, i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
