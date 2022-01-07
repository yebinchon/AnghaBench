; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32, i32 }
%struct.stm32_dcmi = type { %struct.dma_chan*, %struct.TYPE_32__, %struct.TYPE_37__, %struct.TYPE_36__*, i32, %struct.clk*, i32, %struct.TYPE_29__*, %struct.TYPE_31__, %struct.vb2_queue, i32, %struct.clk*, i32, i32, i32, i32, %struct.clk*, i32, %struct.TYPE_33__ }
%struct.dma_chan = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_32__* }
%struct.TYPE_36__ = type { i32, %struct.TYPE_30__, i32*, i32*, i32 (%struct.TYPE_36__*)*, i32, %struct.vb2_queue*, %struct.TYPE_37__*, i32* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.vb2_queue = type { i32, i32, i32, %struct.TYPE_29__*, i32, i32*, i32*, %struct.stm32_dcmi*, i32*, i32 }
%struct.clk = type { i32 }
%struct.TYPE_33__ = type { i32, i32, i32 }

@stm32_dcmi_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not find a match in devicetree\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not get reset control\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not find the endpoint\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Could not parse the endpoint\0A\00", align 1
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"CSI bus not supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Could not get resource\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Could not map registers\0A\00", align 1
@dcmi_irq_callback = common dso_local global i32 0, align 4
@dcmi_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Unable to request irq %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Unable to get mclk\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Unable to request DMA channel, defer probing\0A\00", align 1
@STOPPED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@dcmi_fops = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i8* null, align 8
@dcmi_ioctl_ops = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed to init media entity pad\0A\00", align 1
@MEDIA_ENT_FL_DEFAULT = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Device registered as %s\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@dcmi_video_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"Failed to initialize vb2 queue\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Failed to assert the reset line\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Failed to deassert the reset line\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Probe done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dcmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %7 = alloca %struct.stm32_dcmi*, align 8
  %8 = alloca %struct.vb2_queue*, align 8
  %9 = alloca %struct.dma_chan*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  store %struct.of_device_id* null, %struct.of_device_id** %5, align 8
  %17 = bitcast %struct.v4l2_fwnode_endpoint* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @stm32_dcmi_of_match, align 4
  %19 = call i32 @of_match_ptr(i32 %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.of_device_id* @of_match_device(i32 %19, %struct.TYPE_29__* %21)
  store %struct.of_device_id* %22, %struct.of_device_id** %5, align 8
  %23 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %24 = icmp ne %struct.of_device_id* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %503

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.stm32_dcmi* @devm_kzalloc(%struct.TYPE_29__* %33, i32 208, i32 %34)
  store %struct.stm32_dcmi* %35, %struct.stm32_dcmi** %7, align 8
  %36 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %37 = icmp ne %struct.stm32_dcmi* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %503

41:                                               ; preds = %31
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call %struct.clk* @devm_reset_control_get_exclusive(%struct.TYPE_29__* %43, i32* null)
  %45 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %46 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %45, i32 0, i32 5
  store %struct.clk* %44, %struct.clk** %46, align 8
  %47 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %48 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %47, i32 0, i32 5
  %49 = load %struct.clk*, %struct.clk** %48, align 8
  %50 = call i64 @IS_ERR(%struct.clk* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %57 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %56, i32 0, i32 5
  %58 = load %struct.clk*, %struct.clk** %57, align 8
  %59 = call i32 @PTR_ERR(%struct.clk* %58)
  store i32 %59, i32* %2, align 4
  br label %503

60:                                               ; preds = %41
  %61 = load %struct.device_node*, %struct.device_node** %4, align 8
  %62 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %61, i32* null)
  store %struct.device_node* %62, %struct.device_node** %4, align 8
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = icmp ne %struct.device_node* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %503

71:                                               ; preds = %60
  %72 = load %struct.device_node*, %struct.device_node** %4, align 8
  %73 = call i32 @of_fwnode_handle(%struct.device_node* %72)
  %74 = call i32 @v4l2_fwnode_endpoint_parse(i32 %73, %struct.v4l2_fwnode_endpoint* %6)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = call i32 @of_node_put(%struct.device_node* %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %2, align 4
  br label %503

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %503

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %101 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %100, i32 0, i32 18
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  %103 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %108 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %107, i32 0, i32 18
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %6, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %115 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %114, i32 0, i32 18
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = call i32 @platform_get_irq(%struct.platform_device* %117, i32 0)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %95
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  br label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @ENXIO, align 4
  %128 = sub nsw i32 0, %127
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i32 [ %125, %124 ], [ %128, %126 ]
  store i32 %130, i32* %2, align 4
  br label %503

131:                                              ; preds = %95
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = load i32, i32* @IORESOURCE_MEM, align 4
  %134 = call i32 @platform_get_resource(%struct.platform_device* %132, i32 %133, i32 0)
  %135 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %136 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %135, i32 0, i32 17
  store i32 %134, i32* %136, align 8
  %137 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %138 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %137, i32 0, i32 17
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %131
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %503

147:                                              ; preds = %131
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %151 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %150, i32 0, i32 17
  %152 = load i32, i32* %151, align 8
  %153 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_29__* %149, i32 %152)
  %154 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %155 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %154, i32 0, i32 16
  store %struct.clk* %153, %struct.clk** %155, align 8
  %156 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %157 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %156, i32 0, i32 16
  %158 = load %struct.clk*, %struct.clk** %157, align 8
  %159 = call i64 @IS_ERR(%struct.clk* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %147
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %165 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %166 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %165, i32 0, i32 16
  %167 = load %struct.clk*, %struct.clk** %166, align 8
  %168 = call i32 @PTR_ERR(%struct.clk* %167)
  store i32 %168, i32* %2, align 4
  br label %503

169:                                              ; preds = %147
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @dcmi_irq_callback, align 4
  %174 = load i32, i32* @dcmi_irq_thread, align 4
  %175 = load i32, i32* @IRQF_ONESHOT, align 4
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i32 @dev_name(%struct.TYPE_29__* %177)
  %179 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %180 = call i32 @devm_request_threaded_irq(%struct.TYPE_29__* %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %178, %struct.stm32_dcmi* %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %169
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load i32, i32* %11, align 4
  %187 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %12, align 4
  store i32 %188, i32* %2, align 4
  br label %503

189:                                              ; preds = %169
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = call %struct.clk* @devm_clk_get(%struct.TYPE_29__* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.clk* %192, %struct.clk** %10, align 8
  %193 = load %struct.clk*, %struct.clk** %10, align 8
  %194 = call i64 @IS_ERR(%struct.clk* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %189
  %197 = load %struct.clk*, %struct.clk** %10, align 8
  %198 = call i32 @PTR_ERR(%struct.clk* %197)
  %199 = load i32, i32* @EPROBE_DEFER, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp ne i32 %198, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %204, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %206

206:                                              ; preds = %202, %196
  %207 = load %struct.clk*, %struct.clk** %10, align 8
  %208 = call i32 @PTR_ERR(%struct.clk* %207)
  store i32 %208, i32* %2, align 4
  br label %503

209:                                              ; preds = %189
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = call %struct.dma_chan* @dma_request_slave_channel(%struct.TYPE_29__* %211, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store %struct.dma_chan* %212, %struct.dma_chan** %9, align 8
  %213 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %214 = icmp ne %struct.dma_chan* %213, null
  br i1 %214, label %221, label %215

215:                                              ; preds = %209
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = call i32 @dev_info(%struct.TYPE_29__* %217, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %219 = load i32, i32* @EPROBE_DEFER, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %2, align 4
  br label %503

221:                                              ; preds = %209
  %222 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %223 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %222, i32 0, i32 15
  %224 = call i32 @spin_lock_init(i32* %223)
  %225 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %226 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %225, i32 0, i32 6
  %227 = call i32 @mutex_init(i32* %226)
  %228 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %229 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %228, i32 0, i32 14
  %230 = call i32 @mutex_init(i32* %229)
  %231 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %232 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %231, i32 0, i32 13
  %233 = call i32 @init_completion(i32* %232)
  %234 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %235 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %234, i32 0, i32 12
  %236 = call i32 @INIT_LIST_HEAD(i32* %235)
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %240 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %239, i32 0, i32 7
  store %struct.TYPE_29__* %238, %struct.TYPE_29__** %240, align 8
  %241 = load %struct.clk*, %struct.clk** %10, align 8
  %242 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %243 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %242, i32 0, i32 11
  store %struct.clk* %241, %struct.clk** %243, align 8
  %244 = load i32, i32* @STOPPED, align 4
  %245 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %246 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %245, i32 0, i32 10
  store i32 %244, i32* %246, align 8
  %247 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %248 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %249 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %248, i32 0, i32 0
  store %struct.dma_chan* %247, %struct.dma_chan** %249, align 8
  %250 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %251 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %250, i32 0, i32 9
  store %struct.vb2_queue* %251, %struct.vb2_queue** %8, align 8
  %252 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %253 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %252, i32 0, i32 1
  %254 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %255 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %255, i32 0, i32 0
  store %struct.TYPE_32__* %253, %struct.TYPE_32__** %256, align 8
  %257 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %258 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i8*, i8** @DRV_NAME, align 8
  %262 = call i32 @strscpy(i32 %260, i8* %261, i32 4)
  %263 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %264 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load i8*, i8** @DRV_NAME, align 8
  %268 = call i32 @snprintf(i32 %266, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %267)
  %269 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %270 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %269, i32 0, i32 0
  %271 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %272 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %272, i32 0, i32 0
  store %struct.TYPE_29__* %270, %struct.TYPE_29__** %273, align 8
  %274 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %275 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %274, i32 0, i32 1
  %276 = call i32 @media_device_init(%struct.TYPE_32__* %275)
  %277 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %278 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %277, i32 0, i32 0
  %279 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %280 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %279, i32 0, i32 2
  %281 = call i32 @v4l2_device_register(%struct.TYPE_29__* %278, %struct.TYPE_37__* %280)
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* %12, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %221
  br label %494

285:                                              ; preds = %221
  %286 = call %struct.TYPE_36__* (...) @video_device_alloc()
  %287 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %288 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %287, i32 0, i32 3
  store %struct.TYPE_36__* %286, %struct.TYPE_36__** %288, align 8
  %289 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %290 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %289, i32 0, i32 3
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %290, align 8
  %292 = icmp ne %struct.TYPE_36__* %291, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %285
  %294 = load i32, i32* @ENOMEM, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %12, align 4
  br label %490

296:                                              ; preds = %285
  %297 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %298 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %297, i32 0, i32 3
  %299 = load %struct.TYPE_36__*, %struct.TYPE_36__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %299, i32 0, i32 8
  store i32* @dcmi_fops, i32** %300, align 8
  %301 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %302 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %301, i32 0, i32 2
  %303 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %304 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %303, i32 0, i32 3
  %305 = load %struct.TYPE_36__*, %struct.TYPE_36__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %305, i32 0, i32 7
  store %struct.TYPE_37__* %302, %struct.TYPE_37__** %306, align 8
  %307 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %308 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %307, i32 0, i32 9
  %309 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %310 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %309, i32 0, i32 3
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %311, i32 0, i32 6
  store %struct.vb2_queue* %308, %struct.vb2_queue** %312, align 8
  %313 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %314 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %313, i32 0, i32 3
  %315 = load %struct.TYPE_36__*, %struct.TYPE_36__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 8
  %318 = load i8*, i8** @KBUILD_MODNAME, align 8
  %319 = call i32 @strscpy(i32 %317, i8* %318, i32 4)
  %320 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %321 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %320, i32 0, i32 3
  %322 = load %struct.TYPE_36__*, %struct.TYPE_36__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %322, i32 0, i32 4
  store i32 (%struct.TYPE_36__*)* @video_device_release, i32 (%struct.TYPE_36__*)** %323, align 8
  %324 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %325 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %324, i32 0, i32 3
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %326, i32 0, i32 3
  store i32* @dcmi_ioctl_ops, i32** %327, align 8
  %328 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %329 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %328, i32 0, i32 6
  %330 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %331 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %330, i32 0, i32 3
  %332 = load %struct.TYPE_36__*, %struct.TYPE_36__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %332, i32 0, i32 2
  store i32* %329, i32** %333, align 8
  %334 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %335 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %338 = or i32 %336, %337
  %339 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %340 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %339, i32 0, i32 3
  %341 = load %struct.TYPE_36__*, %struct.TYPE_36__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %341, i32 0, i32 0
  store i32 %338, i32* %342, align 8
  %343 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %344 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %343, i32 0, i32 3
  %345 = load %struct.TYPE_36__*, %struct.TYPE_36__** %344, align 8
  %346 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %347 = call i32 @video_set_drvdata(%struct.TYPE_36__* %345, %struct.stm32_dcmi* %346)
  %348 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %349 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %350 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %349, i32 0, i32 8
  %351 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %350, i32 0, i32 0
  store i32 %348, i32* %351, align 8
  %352 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %353 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %352, i32 0, i32 3
  %354 = load %struct.TYPE_36__*, %struct.TYPE_36__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %354, i32 0, i32 1
  %356 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %357 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %356, i32 0, i32 8
  %358 = call i32 @media_entity_pads_init(%struct.TYPE_30__* %355, i32 1, %struct.TYPE_31__* %357)
  store i32 %358, i32* %12, align 4
  %359 = load i32, i32* %12, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %296
  %362 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %363 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %362, i32 0, i32 7
  %364 = load %struct.TYPE_29__*, %struct.TYPE_29__** %363, align 8
  %365 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %364, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %485

366:                                              ; preds = %296
  %367 = load i32, i32* @MEDIA_ENT_FL_DEFAULT, align 4
  %368 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %369 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %368, i32 0, i32 3
  %370 = load %struct.TYPE_36__*, %struct.TYPE_36__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %373, %367
  store i32 %374, i32* %372, align 4
  %375 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %376 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %375, i32 0, i32 3
  %377 = load %struct.TYPE_36__*, %struct.TYPE_36__** %376, align 8
  %378 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %379 = call i32 @video_register_device(%struct.TYPE_36__* %377, i32 %378, i32 -1)
  store i32 %379, i32* %12, align 4
  %380 = load i32, i32* %12, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %366
  %383 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %384 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %383, i32 0, i32 7
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %384, align 8
  %386 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %385, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  br label %479

387:                                              ; preds = %366
  %388 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %389 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %388, i32 0, i32 7
  %390 = load %struct.TYPE_29__*, %struct.TYPE_29__** %389, align 8
  %391 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %392 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %391, i32 0, i32 3
  %393 = load %struct.TYPE_36__*, %struct.TYPE_36__** %392, align 8
  %394 = call i32 @video_device_node_name(%struct.TYPE_36__* %393)
  %395 = call i32 @dev_dbg(%struct.TYPE_29__* %390, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %394)
  %396 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %397 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %398 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %397, i32 0, i32 9
  store i32 %396, i32* %398, align 8
  %399 = load i32, i32* @VB2_MMAP, align 4
  %400 = load i32, i32* @VB2_READ, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* @VB2_DMABUF, align 4
  %403 = or i32 %401, %402
  %404 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %405 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 8
  %406 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %407 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %406, i32 0, i32 6
  %408 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %409 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %408, i32 0, i32 8
  store i32* %407, i32** %409, align 8
  %410 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %411 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %412 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %411, i32 0, i32 7
  store %struct.stm32_dcmi* %410, %struct.stm32_dcmi** %412, align 8
  %413 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %414 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %413, i32 0, i32 1
  store i32 4, i32* %414, align 4
  %415 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %416 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %415, i32 0, i32 6
  store i32* @dcmi_video_qops, i32** %416, align 8
  %417 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %418 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %417, i32 0, i32 5
  store i32* @vb2_dma_contig_memops, i32** %418, align 8
  %419 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %420 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %421 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %420, i32 0, i32 4
  store i32 %419, i32* %421, align 8
  %422 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %423 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %422, i32 0, i32 2
  store i32 2, i32* %423, align 8
  %424 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %425 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %424, i32 0, i32 0
  %426 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %427 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %426, i32 0, i32 3
  store %struct.TYPE_29__* %425, %struct.TYPE_29__** %427, align 8
  %428 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %429 = call i32 @vb2_queue_init(%struct.vb2_queue* %428)
  store i32 %429, i32* %12, align 4
  %430 = load i32, i32* %12, align 4
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %387
  %433 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %434 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %433, i32 0, i32 0
  %435 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %434, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %479

436:                                              ; preds = %387
  %437 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %438 = call i32 @dcmi_graph_init(%struct.stm32_dcmi* %437)
  store i32 %438, i32* %12, align 4
  %439 = load i32, i32* %12, align 4
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %436
  br label %479

442:                                              ; preds = %436
  %443 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %444 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %443, i32 0, i32 5
  %445 = load %struct.clk*, %struct.clk** %444, align 8
  %446 = call i32 @reset_control_assert(%struct.clk* %445)
  store i32 %446, i32* %12, align 4
  %447 = load i32, i32* %12, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %442
  %450 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %451 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %450, i32 0, i32 0
  %452 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %451, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  br label %475

453:                                              ; preds = %442
  %454 = call i32 @usleep_range(i32 3000, i32 5000)
  %455 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %456 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %455, i32 0, i32 5
  %457 = load %struct.clk*, %struct.clk** %456, align 8
  %458 = call i32 @reset_control_deassert(%struct.clk* %457)
  store i32 %458, i32* %12, align 4
  %459 = load i32, i32* %12, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %453
  %462 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %463 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %462, i32 0, i32 0
  %464 = call i32 (%struct.TYPE_29__*, i8*, ...) @dev_err(%struct.TYPE_29__* %463, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  br label %475

465:                                              ; preds = %453
  %466 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %467 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %466, i32 0, i32 0
  %468 = call i32 @dev_info(%struct.TYPE_29__* %467, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %469 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %470 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %471 = call i32 @platform_set_drvdata(%struct.platform_device* %469, %struct.stm32_dcmi* %470)
  %472 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %473 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %472, i32 0, i32 0
  %474 = call i32 @pm_runtime_enable(%struct.TYPE_29__* %473)
  store i32 0, i32* %2, align 4
  br label %503

475:                                              ; preds = %461, %449
  %476 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %477 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %476, i32 0, i32 4
  %478 = call i32 @v4l2_async_notifier_cleanup(i32* %477)
  br label %479

479:                                              ; preds = %475, %441, %432, %382
  %480 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %481 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %480, i32 0, i32 3
  %482 = load %struct.TYPE_36__*, %struct.TYPE_36__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %482, i32 0, i32 1
  %484 = call i32 @media_entity_cleanup(%struct.TYPE_30__* %483)
  br label %485

485:                                              ; preds = %479, %361
  %486 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %487 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %486, i32 0, i32 3
  %488 = load %struct.TYPE_36__*, %struct.TYPE_36__** %487, align 8
  %489 = call i32 @video_device_release(%struct.TYPE_36__* %488)
  br label %490

490:                                              ; preds = %485, %293
  %491 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %492 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %491, i32 0, i32 2
  %493 = call i32 @v4l2_device_unregister(%struct.TYPE_37__* %492)
  br label %494

494:                                              ; preds = %490, %284
  %495 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %496 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %495, i32 0, i32 1
  %497 = call i32 @media_device_cleanup(%struct.TYPE_32__* %496)
  %498 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %7, align 8
  %499 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %498, i32 0, i32 0
  %500 = load %struct.dma_chan*, %struct.dma_chan** %499, align 8
  %501 = call i32 @dma_release_channel(%struct.dma_chan* %500)
  %502 = load i32, i32* %12, align 4
  store i32 %502, i32* %2, align 4
  br label %503

503:                                              ; preds = %494, %465, %215, %206, %183, %161, %141, %129, %89, %79, %65, %52, %38, %25
  %504 = load i32, i32* %2, align 4
  ret i32 %504
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_29__*) #2

declare dso_local i32 @of_match_ptr(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_29__*, i8*, ...) #2

declare dso_local %struct.stm32_dcmi* @devm_kzalloc(%struct.TYPE_29__*, i32, i32) #2

declare dso_local %struct.clk* @devm_reset_control_get_exclusive(%struct.TYPE_29__*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i32 @PTR_ERR(%struct.clk*) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, i32*) #2

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #2

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_29__*, i32) #2

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_29__*, i32, i32, i32, i32, i32, %struct.stm32_dcmi*) #2

declare dso_local i32 @dev_name(%struct.TYPE_29__*) #2

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_29__*, i8*) #2

declare dso_local %struct.dma_chan* @dma_request_slave_channel(%struct.TYPE_29__*, i8*) #2

declare dso_local i32 @dev_info(%struct.TYPE_29__*, i8*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @strscpy(i32, i8*, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #2

declare dso_local i32 @media_device_init(%struct.TYPE_32__*) #2

declare dso_local i32 @v4l2_device_register(%struct.TYPE_29__*, %struct.TYPE_37__*) #2

declare dso_local %struct.TYPE_36__* @video_device_alloc(...) #2

declare dso_local i32 @video_device_release(%struct.TYPE_36__*) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_36__*, %struct.stm32_dcmi*) #2

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_30__*, i32, %struct.TYPE_31__*) #2

declare dso_local i32 @video_register_device(%struct.TYPE_36__*, i32, i32) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_29__*, i8*, i32) #2

declare dso_local i32 @video_device_node_name(%struct.TYPE_36__*) #2

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #2

declare dso_local i32 @dcmi_graph_init(%struct.stm32_dcmi*) #2

declare dso_local i32 @reset_control_assert(%struct.clk*) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @reset_control_deassert(%struct.clk*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_dcmi*) #2

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_29__*) #2

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #2

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_30__*) #2

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_37__*) #2

declare dso_local i32 @media_device_cleanup(%struct.TYPE_32__*) #2

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
