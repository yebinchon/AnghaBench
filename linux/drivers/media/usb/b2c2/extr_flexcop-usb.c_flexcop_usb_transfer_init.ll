; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_transfer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_transfer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_usb = type { i32, i32, %struct.urb**, i32*, i32, i32, %struct.TYPE_9__* }
%struct.urb = type { i32, i32, i32, %struct.TYPE_10__*, i32*, i32, i32, i32, %struct.flexcop_usb*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@B2C2_USB_NUM_ISO_URB = common dso_local global i32 0, align 4
@B2C2_USB_FRAMES_PER_ISO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"creating %d iso-urbs with %d frames each of %d bytes size = %d.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"initializing and submitting urb no. %d (buf_offset: %d).\0A\00", align 1
@flexcop_usb_urb_complete = common dso_local global i32 0, align 4
@B2C2_USB_DATA_PIPE = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"urb no: %d, frame: %d, frame_offset: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"submitting urb %d failed with %d.\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"submitted urb no. %d.\0A\00", align 1
@FC_SRAM_DEST_MEDIA = common dso_local global i32 0, align 4
@FC_SRAM_DEST_NET = common dso_local global i32 0, align 4
@FC_SRAM_DEST_CAO = common dso_local global i32 0, align 4
@FC_SRAM_DEST_CAI = common dso_local global i32 0, align 4
@FC_SRAM_DEST_TARGET_WAN_USB = common dso_local global i32 0, align 4
@FC_WAN_SPEED_8MBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_usb*)* @flexcop_usb_transfer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_transfer_init(%struct.flexcop_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.urb*, align 8
  store %struct.flexcop_usb* %0, %struct.flexcop_usb** %3, align 8
  %12 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %13 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %12, i32 0, i32 6
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @B2C2_USB_NUM_ISO_URB, align 4
  %25 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %29 = load i32, i32* @B2C2_USB_NUM_ISO_URB, align 4
  %30 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, i32, ...) @deb_ts(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %35 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %40 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %39, i32 0, i32 5
  %41 = call i32* @usb_alloc_coherent(i32 %36, i32 %37, i32 %38, i32* %40)
  %42 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %43 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %45 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %223

51:                                               ; preds = %1
  %52 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %53 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @memset(i32* %54, i32 0, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %59 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %86, %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @B2C2_USB_NUM_ISO_URB, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call %struct.urb* @usb_alloc_urb(i32 %65, i32 %66)
  %68 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %69 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %68, i32 0, i32 2
  %70 = load %struct.urb**, %struct.urb*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.urb*, %struct.urb** %70, i64 %72
  store %struct.urb* %67, %struct.urb** %73, align 8
  %74 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %75 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %74, i32 0, i32 2
  %76 = load %struct.urb**, %struct.urb*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.urb*, %struct.urb** %76, i64 %78
  %80 = load %struct.urb*, %struct.urb** %79, align 8
  %81 = icmp eq %struct.urb* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %64
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %219

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %60

89:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %194, %89
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @B2C2_USB_NUM_ISO_URB, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %197

94:                                               ; preds = %90
  store i32 0, i32* %10, align 4
  %95 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %96 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %95, i32 0, i32 2
  %97 = load %struct.urb**, %struct.urb*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.urb*, %struct.urb** %97, i64 %99
  %101 = load %struct.urb*, %struct.urb** %100, align 8
  store %struct.urb* %101, %struct.urb** %11, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i8*, i32, ...) @deb_ts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %106 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.urb*, %struct.urb** %11, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 9
  store i32 %107, i32* %109, align 8
  %110 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %111 = load %struct.urb*, %struct.urb** %11, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 8
  store %struct.flexcop_usb* %110, %struct.flexcop_usb** %112, align 8
  %113 = load i32, i32* @flexcop_usb_urb_complete, align 4
  %114 = load %struct.urb*, %struct.urb** %11, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @B2C2_USB_DATA_PIPE, align 4
  %117 = load %struct.urb*, %struct.urb** %11, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @URB_ISO_ASAP, align 4
  %120 = load %struct.urb*, %struct.urb** %11, align 8
  %121 = getelementptr inbounds %struct.urb, %struct.urb* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.urb*, %struct.urb** %11, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %125 = load %struct.urb*, %struct.urb** %11, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load %struct.urb*, %struct.urb** %11, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %133 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load %struct.urb*, %struct.urb** %11, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 4
  store i32* %137, i32** %139, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %173, %94
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %145
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 (i8*, i32, ...) @deb_ts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.urb*, %struct.urb** %11, align 8
  %156 = getelementptr inbounds %struct.urb, %struct.urb* %155, i32 0, i32 3
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  store i32 %154, i32* %161, align 4
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.urb*, %struct.urb** %11, align 8
  %164 = getelementptr inbounds %struct.urb, %struct.urb* %163, i32 0, i32 3
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  store i32 %162, i32* %169, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %149
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %145

176:                                              ; preds = %145
  %177 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %178 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %177, i32 0, i32 2
  %179 = load %struct.urb**, %struct.urb*** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.urb*, %struct.urb** %179, i64 %181
  %183 = load %struct.urb*, %struct.urb** %182, align 8
  %184 = load i32, i32* @GFP_ATOMIC, align 4
  %185 = call i32 @usb_submit_urb(%struct.urb* %183, i32 %184)
  store i32 %185, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %176
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %189)
  br label %219

191:                                              ; preds = %176
  %192 = load i32, i32* %6, align 4
  %193 = call i32 (i8*, i32, ...) @deb_ts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %90

197:                                              ; preds = %90
  %198 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %199 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @FC_SRAM_DEST_MEDIA, align 4
  %202 = load i32, i32* @FC_SRAM_DEST_NET, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @FC_SRAM_DEST_CAO, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @FC_SRAM_DEST_CAI, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @FC_SRAM_DEST_TARGET_WAN_USB, align 4
  %209 = call i32 @flexcop_sram_set_dest(i32 %200, i32 %207, i32 %208)
  %210 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %211 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @FC_WAN_SPEED_8MBITS, align 4
  %214 = call i32 @flexcop_wan_set_speed(i32 %212, i32 %213)
  %215 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %216 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @flexcop_sram_ctrl(i32 %217, i32 1, i32 1, i32 1)
  store i32 0, i32* %2, align 4
  br label %223

219:                                              ; preds = %187, %82
  %220 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %221 = call i32 @flexcop_usb_transfer_exit(%struct.flexcop_usb* %220)
  %222 = load i32, i32* %8, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %219, %197, %48
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @deb_ts(i8*, i32, ...) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @err(i8*, i32, i32) #1

declare dso_local i32 @flexcop_sram_set_dest(i32, i32, i32) #1

declare dso_local i32 @flexcop_wan_set_speed(i32, i32) #1

declare dso_local i32 @flexcop_sram_ctrl(i32, i32, i32, i32) #1

declare dso_local i32 @flexcop_usb_transfer_exit(%struct.flexcop_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
