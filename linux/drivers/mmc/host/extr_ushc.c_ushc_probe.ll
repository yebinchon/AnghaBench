; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.ushc_data = type { i32, %struct.mmc_host*, i32*, %struct.TYPE_10__*, %struct.usb_device*, i32*, i32*, %struct.TYPE_10__*, i32*, i32*, i32 }
%struct.TYPE_10__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ushc_ops = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@USHC_GET_CAPS_HIGH_SPD = common dso_local global i32 0, align 4
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@int_callback = common dso_local global i32 0, align 4
@USHC_CBW_SIGNATURE = common dso_local global i32 0, align 4
@cbw_callback = common dso_local global i32 0, align 4
@csw_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ushc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ushc_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.mmc_host*, align 8
  %8 = alloca %struct.ushc_data*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %280

22:                                               ; preds = %2
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 1
  %25 = call %struct.mmc_host* @mmc_alloc_host(i32 88, i32* %24)
  store %struct.mmc_host* %25, %struct.mmc_host** %7, align 8
  %26 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %27 = icmp eq %struct.mmc_host* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %280

31:                                               ; preds = %22
  %32 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %33 = call %struct.ushc_data* @mmc_priv(%struct.mmc_host* %32)
  store %struct.ushc_data* %33, %struct.ushc_data** %8, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %36 = call i32 @usb_set_intfdata(%struct.usb_interface* %34, %struct.ushc_data* %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %39 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %38, i32 0, i32 4
  store %struct.usb_device* %37, %struct.usb_device** %39, align 8
  %40 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %41 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %42 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %41, i32 0, i32 1
  store %struct.mmc_host* %40, %struct.mmc_host** %42, align 8
  %43 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %44 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %43, i32 0, i32 10
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %47 = call i32 @ushc_hw_reset(%struct.ushc_data* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %31
  br label %276

51:                                               ; preds = %31
  %52 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %53 = call i32 @ushc_hw_get_caps(%struct.ushc_data* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %276

57:                                               ; preds = %51
  %58 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %59 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %58, i32 0, i32 9
  store i32* @ushc_ops, i32** %59, align 8
  %60 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %61 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %60, i32 0, i32 0
  store i32 400000, i32* %61, align 8
  %62 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %63 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %62, i32 0, i32 1
  store i32 50000000, i32* %63, align 4
  %64 = load i32, i32* @MMC_VDD_32_33, align 4
  %65 = load i32, i32* @MMC_VDD_33_34, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %70 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %73 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %75 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @USHC_GET_CAPS_HIGH_SPD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %57
  %81 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  br label %83

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %86 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %90 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %89, i32 0, i32 4
  store i32 261632, i32* %90, align 8
  %91 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %92 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %91, i32 0, i32 5
  store i32 1, i32* %92, align 4
  %93 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %94 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %93, i32 0, i32 6
  store i32 261632, i32* %94, align 8
  %95 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %96 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %95, i32 0, i32 7
  store i32 512, i32* %96, align 4
  %97 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %98 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %97, i32 0, i32 8
  store i32 511, i32* %98, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i8* @usb_alloc_urb(i32 0, i32 %99)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %103 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %102, i32 0, i32 2
  store i32* %101, i32** %103, align 8
  %104 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %105 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %83
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %9, align 4
  br label %276

111:                                              ; preds = %83
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i8* @kzalloc(i32 4, i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %116 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %115, i32 0, i32 9
  store i32* %114, i32** %116, align 8
  %117 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %118 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %117, i32 0, i32 9
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %9, align 4
  br label %276

124:                                              ; preds = %111
  %125 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %126 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %129 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %128, i32 0, i32 4
  %130 = load %struct.usb_device*, %struct.usb_device** %129, align 8
  %131 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %132 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %133 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @usb_rcvintpipe(%struct.usb_device* %131, i32 %140)
  %142 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %143 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %142, i32 0, i32 9
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @int_callback, align 4
  %146 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %147 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %148 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %147, i32 0, i32 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @usb_fill_int_urb(i32* %127, %struct.usb_device* %130, i32 %141, i32* %144, i32 4, i32 %145, %struct.ushc_data* %146, i32 %155)
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @usb_alloc_urb(i32 0, i32 %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %161 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %160, i32 0, i32 8
  store i32* %159, i32** %161, align 8
  %162 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %163 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %162, i32 0, i32 8
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %124
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %9, align 4
  br label %276

169:                                              ; preds = %124
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i8* @kzalloc(i32 4, i32 %170)
  %172 = bitcast i8* %171 to %struct.TYPE_10__*
  %173 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %174 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %173, i32 0, i32 7
  store %struct.TYPE_10__* %172, %struct.TYPE_10__** %174, align 8
  %175 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %176 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %175, i32 0, i32 7
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = icmp eq %struct.TYPE_10__* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %169
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %9, align 4
  br label %276

182:                                              ; preds = %169
  %183 = load i32, i32* @USHC_CBW_SIGNATURE, align 4
  %184 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %185 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %184, i32 0, i32 7
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 4
  %188 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %189 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %188, i32 0, i32 8
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %192 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %191, i32 0, i32 4
  %193 = load %struct.usb_device*, %struct.usb_device** %192, align 8
  %194 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %195 = call i32 @usb_sndbulkpipe(%struct.usb_device* %194, i32 2)
  %196 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %197 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %196, i32 0, i32 7
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = load i32, i32* @cbw_callback, align 4
  %200 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %201 = call i32 @usb_fill_bulk_urb(i32* %190, %struct.usb_device* %193, i32 %195, %struct.TYPE_10__* %198, i32 4, i32 %199, %struct.ushc_data* %200)
  %202 = load i32, i32* @GFP_KERNEL, align 4
  %203 = call i8* @usb_alloc_urb(i32 0, i32 %202)
  %204 = bitcast i8* %203 to i32*
  %205 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %206 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %205, i32 0, i32 6
  store i32* %204, i32** %206, align 8
  %207 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %208 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %207, i32 0, i32 6
  %209 = load i32*, i32** %208, align 8
  %210 = icmp eq i32* %209, null
  br i1 %210, label %211, label %214

211:                                              ; preds = %182
  %212 = load i32, i32* @ENOMEM, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %9, align 4
  br label %276

214:                                              ; preds = %182
  %215 = load i32, i32* @GFP_KERNEL, align 4
  %216 = call i8* @usb_alloc_urb(i32 0, i32 %215)
  %217 = bitcast i8* %216 to i32*
  %218 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %219 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %218, i32 0, i32 5
  store i32* %217, i32** %219, align 8
  %220 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %221 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %220, i32 0, i32 5
  %222 = load i32*, i32** %221, align 8
  %223 = icmp eq i32* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %214
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %9, align 4
  br label %276

227:                                              ; preds = %214
  %228 = load i32, i32* @GFP_KERNEL, align 4
  %229 = call i8* @kzalloc(i32 4, i32 %228)
  %230 = bitcast i8* %229 to %struct.TYPE_10__*
  %231 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %232 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %231, i32 0, i32 3
  store %struct.TYPE_10__* %230, %struct.TYPE_10__** %232, align 8
  %233 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %234 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %233, i32 0, i32 3
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = icmp eq %struct.TYPE_10__* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %227
  %238 = load i32, i32* @ENOMEM, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %9, align 4
  br label %276

240:                                              ; preds = %227
  %241 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %242 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %241, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %245 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %244, i32 0, i32 4
  %246 = load %struct.usb_device*, %struct.usb_device** %245, align 8
  %247 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %248 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %247, i32 6)
  %249 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %250 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %249, i32 0, i32 3
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = load i32, i32* @csw_callback, align 4
  %253 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %254 = call i32 @usb_fill_bulk_urb(i32* %243, %struct.usb_device* %246, i32 %248, %struct.TYPE_10__* %251, i32 4, i32 %252, %struct.ushc_data* %253)
  %255 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %256 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %255, i32 0, i32 1
  %257 = load %struct.mmc_host*, %struct.mmc_host** %256, align 8
  %258 = call i32 @mmc_add_host(%struct.mmc_host* %257)
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %240
  br label %276

262:                                              ; preds = %240
  %263 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %264 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* @GFP_KERNEL, align 4
  %267 = call i32 @usb_submit_urb(i32* %265, i32 %266)
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %262
  %271 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %272 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %271, i32 0, i32 1
  %273 = load %struct.mmc_host*, %struct.mmc_host** %272, align 8
  %274 = call i32 @mmc_remove_host(%struct.mmc_host* %273)
  br label %276

275:                                              ; preds = %262
  store i32 0, i32* %3, align 4
  br label %280

276:                                              ; preds = %270, %261, %237, %224, %211, %179, %166, %121, %108, %56, %50
  %277 = load %struct.ushc_data*, %struct.ushc_data** %8, align 8
  %278 = call i32 @ushc_clean_up(%struct.ushc_data* %277)
  %279 = load i32, i32* %9, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %276, %275, %28, %19
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32*) #1

declare dso_local %struct.ushc_data* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ushc_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ushc_hw_reset(%struct.ushc_data*) #1

declare dso_local i32 @ushc_hw_get_caps(%struct.ushc_data*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32*, %struct.usb_device*, i32, i32*, i32, i32, %struct.ushc_data*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, %struct.usb_device*, i32, %struct.TYPE_10__*, i32, i32, %struct.ushc_data*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @ushc_clean_up(%struct.ushc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
