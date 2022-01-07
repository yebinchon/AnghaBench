; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_sta2x11_vip_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_sta2x11_vip_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32* }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.sta2x11_vip = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, %struct.vip_config*, i32, i32, i32, i32, %struct.pci_dev* }
%struct.vip_config = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"26-bit DMA addressing not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"VIP slot disabled\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@formats_50 = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"BAR #0 at 0x%lx 0x%lx irq %d\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@vip_irq = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@video_dev_template = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"no I2C adapter found\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"adv7180\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"no decoder found\0A\00", align 1
@core = common dso_local global i32 0, align 4
@init = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"STA2X11 Video Input Port (VIP) loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sta2x11_vip_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta2x11_vip_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sta2x11_vip*, align 8
  %8 = alloca %struct.vip_config*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call i32 @DMA_BIT_MASK(i32 26)
  %12 = call i64 @dma_set_mask(i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %344

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pci_enable_device(%struct.pci_dev* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %344

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call %struct.vip_config* @dev_get_platdata(i32* %29)
  store %struct.vip_config* %30, %struct.vip_config** %8, align 8
  %31 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %32 = icmp ne %struct.vip_config* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %342

39:                                               ; preds = %27
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %43 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %46 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @vip_gpio_reserve(i32* %41, i32 %44, i32 0, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %342

52:                                               ; preds = %39
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %56 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %59 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vip_gpio_reserve(i32* %54, i32 %57, i32 0, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %52
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %68 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %71 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @vip_gpio_release(i32* %66, i32 %69, i32 %72)
  br label %342

74:                                               ; preds = %52
  %75 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %76 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @gpio_is_valid(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = call i32 @usleep_range(i32 5000, i32 25000)
  %82 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %83 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gpio_direction_output(i32 %84, i32 1)
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %88 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @gpio_is_valid(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = call i32 @usleep_range(i32 5000, i32 25000)
  %94 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %95 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @gpio_direction_output(i32 %96, i32 1)
  br label %98

98:                                               ; preds = %92, %86
  %99 = call i32 @usleep_range(i32 5000, i32 25000)
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call %struct.sta2x11_vip* @kzalloc(i32 80, i32 %100)
  store %struct.sta2x11_vip* %101, %struct.sta2x11_vip** %7, align 8
  %102 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %103 = icmp ne %struct.sta2x11_vip* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %323

107:                                              ; preds = %98
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %110 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %109, i32 0, i32 11
  store %struct.pci_dev* %108, %struct.pci_dev** %110, align 8
  %111 = load i32, i32* @V4L2_STD_PAL, align 4
  %112 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %113 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** @formats_50, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %118 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 8
  %119 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %120 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %121 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %120, i32 0, i32 6
  store %struct.vip_config* %119, %struct.vip_config** %121, align 8
  %122 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %123 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %122, i32 0, i32 7
  %124 = call i32 @mutex_init(i32* %123)
  %125 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %126 = call i32 @sta2x11_vip_init_controls(%struct.sta2x11_vip* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %107
  br label %320

130:                                              ; preds = %107
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 0
  %133 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %134 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %133, i32 0, i32 0
  %135 = call i32 @v4l2_device_register(i32* %132, i32* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %320

139:                                              ; preds = %130
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %143 = call i64 @pci_resource_start(%struct.pci_dev* %142, i32 0)
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %145 = call i64 @pci_resource_len(%struct.pci_dev* %144, i32 0)
  %146 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @dev_dbg(i32* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %143, i64 %145, i32 %148)
  %150 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %151 = call i32 @pci_set_master(%struct.pci_dev* %150)
  %152 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %153 = load i32, i32* @KBUILD_MODNAME, align 4
  %154 = call i32 @pci_request_regions(%struct.pci_dev* %152, i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %139
  br label %316

158:                                              ; preds = %139
  %159 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %160 = call i32 @pci_iomap(%struct.pci_dev* %159, i32 0, i32 256)
  %161 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %162 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %164 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %158
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %6, align 4
  br label %313

170:                                              ; preds = %158
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = call i32 @pci_enable_msi(%struct.pci_dev* %171)
  %173 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %174 = call i32 @sta2x11_vip_init_buffer(%struct.sta2x11_vip* %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %304

178:                                              ; preds = %170
  %179 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %180 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %179, i32 0, i32 8
  %181 = call i32 @spin_lock_init(i32* %180)
  %182 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %183 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i64, i64* @vip_irq, align 8
  %186 = trunc i64 %185 to i32
  %187 = load i32, i32* @IRQF_SHARED, align 4
  %188 = load i32, i32* @KBUILD_MODNAME, align 4
  %189 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %190 = call i32 @request_irq(i32 %184, i32 %186, i32 %187, i32 %188, %struct.sta2x11_vip* %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %178
  %194 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %195 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %194, i32 0, i32 0
  %196 = call i32 @dev_err(i32* %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %197 = load i32, i32* @ENODEV, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %6, align 4
  br label %301

199:                                              ; preds = %178
  %200 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %201 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %200, i32 0, i32 3
  %202 = bitcast %struct.TYPE_5__* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 bitcast (%struct.TYPE_5__* @video_dev_template to i8*), i64 24, i1 false)
  %203 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %204 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %203, i32 0, i32 0
  %205 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %206 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  store i32* %204, i32** %207, align 8
  %208 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %209 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %208, i32 0, i32 2
  %210 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %211 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  store i32* %209, i32** %212, align 8
  %213 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %214 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %213, i32 0, i32 7
  %215 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %216 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  store i32* %214, i32** %217, align 8
  %218 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %219 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %218, i32 0, i32 3
  %220 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %221 = call i32 @video_set_drvdata(%struct.TYPE_5__* %219, %struct.sta2x11_vip* %220)
  %222 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %223 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %222, i32 0, i32 3
  %224 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %225 = call i32 @video_register_device(%struct.TYPE_5__* %223, i32 %224, i32 -1)
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* %6, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %199
  br label %292

229:                                              ; preds = %199
  %230 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %231 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %230, i32 0, i32 6
  %232 = load %struct.vip_config*, %struct.vip_config** %231, align 8
  %233 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @i2c_get_adapter(i32 %234)
  %236 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %237 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 4
  %238 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %239 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %229
  %243 = load i32, i32* @ENODEV, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %6, align 4
  %245 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %246 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %245, i32 0, i32 0
  %247 = call i32 @dev_err(i32* %246, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %288

248:                                              ; preds = %229
  %249 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %250 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %249, i32 0, i32 0
  %251 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %252 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %255 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %254, i32 0, i32 6
  %256 = load %struct.vip_config*, %struct.vip_config** %255, align 8
  %257 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @v4l2_i2c_new_subdev(i32* %250, i32 %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %258, i32* null)
  %260 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %261 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %260, i32 0, i32 4
  store i32 %259, i32* %261, align 8
  %262 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %263 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %248
  %267 = load i32, i32* @ENODEV, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %6, align 4
  %269 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %270 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %269, i32 0, i32 0
  %271 = call i32 @dev_err(i32* %270, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %288

272:                                              ; preds = %248
  %273 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %274 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @i2c_put_adapter(i32 %275)
  %277 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %278 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @core, align 4
  %281 = load i32, i32* @init, align 4
  %282 = call i32 @v4l2_subdev_call(i32 %279, i32 %280, i32 %281, i32 0)
  %283 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %284 = call i32 @sta2x11_vip_init_register(%struct.sta2x11_vip* %283)
  %285 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %286 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %285, i32 0, i32 0
  %287 = call i32 @dev_info(i32* %286, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %344

288:                                              ; preds = %266, %242
  %289 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %290 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %289, i32 0, i32 3
  %291 = call i32 @video_set_drvdata(%struct.TYPE_5__* %290, %struct.sta2x11_vip* null)
  br label %292

292:                                              ; preds = %288, %228
  %293 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %294 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %293, i32 0, i32 3
  %295 = call i32 @video_unregister_device(%struct.TYPE_5__* %294)
  %296 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %297 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %300 = call i32 @free_irq(i32 %298, %struct.sta2x11_vip* %299)
  br label %301

301:                                              ; preds = %292, %193
  %302 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %303 = call i32 @pci_disable_msi(%struct.pci_dev* %302)
  br label %304

304:                                              ; preds = %301, %177
  %305 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %306 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %305, i32 0, i32 2
  %307 = call i32 @vb2_queue_release(i32* %306)
  %308 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %309 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %310 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @pci_iounmap(%struct.pci_dev* %308, i32 %311)
  br label %313

313:                                              ; preds = %304, %167
  %314 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %315 = call i32 @pci_release_regions(%struct.pci_dev* %314)
  br label %316

316:                                              ; preds = %313, %157
  %317 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %318 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %317, i32 0, i32 0
  %319 = call i32 @v4l2_device_unregister(i32* %318)
  br label %320

320:                                              ; preds = %316, %138, %129
  %321 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %7, align 8
  %322 = call i32 @kfree(%struct.sta2x11_vip* %321)
  br label %323

323:                                              ; preds = %320, %104
  %324 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %325 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %324, i32 0, i32 0
  %326 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %327 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %330 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @vip_gpio_release(i32* %325, i32 %328, i32 %331)
  %333 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %334 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %333, i32 0, i32 0
  %335 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %336 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.vip_config*, %struct.vip_config** %8, align 8
  %339 = getelementptr inbounds %struct.vip_config, %struct.vip_config* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @vip_gpio_release(i32* %334, i32 %337, i32 %340)
  br label %342

342:                                              ; preds = %323, %64, %51, %33
  %343 = load i32, i32* %6, align 4
  store i32 %343, i32* %3, align 4
  br label %344

344:                                              ; preds = %342, %272, %25, %14
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local i64 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.vip_config* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @vip_gpio_reserve(i32*, i32, i32, i32) #1

declare dso_local i32 @vip_gpio_release(i32*, i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local %struct.sta2x11_vip* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sta2x11_vip_init_controls(%struct.sta2x11_vip*) #1

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @sta2x11_vip_init_buffer(%struct.sta2x11_vip*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.sta2x11_vip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_5__*, %struct.sta2x11_vip*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_get_adapter(i32) #1

declare dso_local i32 @v4l2_i2c_new_subdev(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @i2c_put_adapter(i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @sta2x11_vip_init_register(%struct.sta2x11_vip*) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_5__*) #1

declare dso_local i32 @free_irq(i32, %struct.sta2x11_vip*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @vb2_queue_release(i32*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.sta2x11_vip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
