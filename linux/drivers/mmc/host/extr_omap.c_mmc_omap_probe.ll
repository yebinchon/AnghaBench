; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.omap_mmc_platform_data* }
%struct.omap_mmc_platform_data = type { i32, i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.mmc_omap_host = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32*, %struct.TYPE_11__*, i32, i32, %struct.omap_mmc_platform_data*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"platform data missing\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"no slots\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@mmc_omap_slot_release_work = common dso_local global i32 0, align 4
@mmc_omap_send_stop_work = common dso_local global i32 0, align 4
@mmc_omap_abort_command = common dso_local global i32 0, align 4
@mmc_omap_cmd_timer = common dso_local global i32 0, align 4
@mmc_omap_clk_timer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"TX DMA channel request failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"RX DMA channel request failed\0A\00", align 1
@mmc_omap_irq = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"mmc_omap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmc_omap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_omap_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_mmc_platform_data*, align 8
  %5 = alloca %struct.mmc_omap_host*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %12, align 8
  store %struct.omap_mmc_platform_data* %13, %struct.omap_mmc_platform_data** %4, align 8
  store %struct.mmc_omap_host* null, %struct.mmc_omap_host** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %4, align 8
  %15 = icmp eq %struct.omap_mmc_platform_data* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_11__* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %395

22:                                               ; preds = %1
  %23 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %4, align 8
  %24 = getelementptr inbounds %struct.omap_mmc_platform_data, %struct.omap_mmc_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_11__* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EPROBE_DEFER, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %395

33:                                               ; preds = %22
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mmc_omap_host* @devm_kzalloc(%struct.TYPE_11__* %35, i32 144, i32 %36)
  store %struct.mmc_omap_host* %37, %struct.mmc_omap_host** %5, align 8
  %38 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %39 = icmp eq %struct.mmc_omap_host* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %395

43:                                               ; preds = %33
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @platform_get_irq(%struct.platform_device* %44, i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %395

51:                                               ; preds = %43
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %6, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = call i32* @devm_ioremap_resource(%struct.TYPE_11__* %56, %struct.resource* %57)
  %59 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %60 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %59, i32 0, i32 25
  store i32* %58, i32** %60, align 8
  %61 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %62 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %61, i32 0, i32 25
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @IS_ERR(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %51
  %67 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %68 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %67, i32 0, i32 25
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %2, align 4
  br label %395

71:                                               ; preds = %51
  %72 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %73 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %72, i32 0, i32 24
  %74 = load i32, i32* @mmc_omap_slot_release_work, align 4
  %75 = call i32 @INIT_WORK(i32* %73, i32 %74)
  %76 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %77 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %76, i32 0, i32 23
  %78 = load i32, i32* @mmc_omap_send_stop_work, align 4
  %79 = call i32 @INIT_WORK(i32* %77, i32 %78)
  %80 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %81 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %80, i32 0, i32 22
  %82 = load i32, i32* @mmc_omap_abort_command, align 4
  %83 = call i32 @INIT_WORK(i32* %81, i32 %82)
  %84 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %85 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %84, i32 0, i32 21
  %86 = load i32, i32* @mmc_omap_cmd_timer, align 4
  %87 = call i32 @timer_setup(i32* %85, i32 %86, i32 0)
  %88 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %89 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %88, i32 0, i32 20
  %90 = call i32 @spin_lock_init(i32* %89)
  %91 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %92 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %91, i32 0, i32 19
  %93 = load i32, i32* @mmc_omap_clk_timer, align 4
  %94 = call i32 @timer_setup(i32* %92, i32 %93, i32 0)
  %95 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %96 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %95, i32 0, i32 18
  %97 = call i32 @spin_lock_init(i32* %96)
  %98 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %99 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %98, i32 0, i32 17
  %100 = call i32 @spin_lock_init(i32* %99)
  %101 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %102 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %101, i32 0, i32 16
  %103 = call i32 @init_waitqueue_head(i32* %102)
  %104 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %4, align 8
  %105 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %106 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %105, i32 0, i32 14
  store %struct.omap_mmc_platform_data* %104, %struct.omap_mmc_platform_data** %106, align 8
  %107 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %108 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %107, i32 0, i32 14
  %109 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %108, align 8
  %110 = getelementptr inbounds %struct.omap_mmc_platform_data, %struct.omap_mmc_platform_data* %109, i32 0, i32 3
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %116 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %115, i32 0, i32 15
  store i32 %114, i32* %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %120 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %119, i32 0, i32 11
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %120, align 8
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %123 = call i32 @platform_set_drvdata(%struct.platform_device* %121, %struct.mmc_omap_host* %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %128 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %127, i32 0, i32 13
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %131 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.resource*, %struct.resource** %6, align 8
  %133 = getelementptr inbounds %struct.resource, %struct.resource* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %136 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %135, i32 0, i32 12
  store i32 %134, i32* %136, align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i8* @clk_get(%struct.TYPE_11__* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %142 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %141, i32 0, i32 5
  store i32* %140, i32** %142, align 8
  %143 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %144 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = call i64 @IS_ERR(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %71
  %149 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %150 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @PTR_ERR(i32* %151)
  store i32 %152, i32* %2, align 4
  br label %395

153:                                              ; preds = %71
  %154 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %155 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @clk_enable(i32* %156)
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i8* @clk_get(%struct.TYPE_11__* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %163 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %162, i32 0, i32 6
  store i32* %161, i32** %163, align 8
  %164 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %165 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %164, i32 0, i32 6
  %166 = load i32*, i32** %165, align 8
  %167 = call i64 @IS_ERR(i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %153
  %170 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %171 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @PTR_ERR(i32* %172)
  store i32 %173, i32* %8, align 4
  br label %385

174:                                              ; preds = %153
  %175 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %176 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %175, i32 0, i32 1
  store i32 -1, i32* %176, align 4
  %177 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %178 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %177, i32 0, i32 2
  store i32 -1, i32* %178, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i8* @dma_request_chan(%struct.TYPE_11__* %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %182 = bitcast i8* %181 to i32*
  %183 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %184 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %183, i32 0, i32 8
  store i32* %182, i32** %184, align 8
  %185 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %186 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %185, i32 0, i32 8
  %187 = load i32*, i32** %186, align 8
  %188 = call i64 @IS_ERR(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %174
  %191 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %192 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %191, i32 0, i32 8
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @PTR_ERR(i32* %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @EPROBE_DEFER, align 4
  %197 = sub nsw i32 0, %196
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %190
  %200 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %201 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %200, i32 0, i32 6
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @clk_put(i32* %202)
  br label %385

204:                                              ; preds = %190
  %205 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %206 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %205, i32 0, i32 8
  store i32* null, i32** %206, align 8
  %207 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %208 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %207, i32 0, i32 11
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = call i32 @dev_warn(%struct.TYPE_11__* %209, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %211

211:                                              ; preds = %204, %174
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = call i8* @dma_request_chan(%struct.TYPE_11__* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %215 = bitcast i8* %214 to i32*
  %216 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %217 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %216, i32 0, i32 7
  store i32* %215, i32** %217, align 8
  %218 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %219 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %218, i32 0, i32 7
  %220 = load i32*, i32** %219, align 8
  %221 = call i64 @IS_ERR(i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %254

223:                                              ; preds = %211
  %224 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %225 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %224, i32 0, i32 7
  %226 = load i32*, i32** %225, align 8
  %227 = call i32 @PTR_ERR(i32* %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @EPROBE_DEFER, align 4
  %230 = sub nsw i32 0, %229
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %232, label %247

232:                                              ; preds = %223
  %233 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %234 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %233, i32 0, i32 8
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %239 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %238, i32 0, i32 8
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @dma_release_channel(i32* %240)
  br label %242

242:                                              ; preds = %237, %232
  %243 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %244 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %243, i32 0, i32 6
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @clk_put(i32* %245)
  br label %385

247:                                              ; preds = %223
  %248 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %249 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %248, i32 0, i32 7
  store i32* null, i32** %249, align 8
  %250 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %251 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %250, i32 0, i32 11
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = call i32 @dev_warn(%struct.TYPE_11__* %252, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %254

254:                                              ; preds = %247, %211
  %255 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %256 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @mmc_omap_irq, align 4
  %259 = load i32, i32* @DRIVER_NAME, align 4
  %260 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %261 = call i32 @request_irq(i32 %257, i32 %258, i32 0, i32 %259, %struct.mmc_omap_host* %260)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %254
  br label %360

265:                                              ; preds = %254
  %266 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %4, align 8
  %267 = getelementptr inbounds %struct.omap_mmc_platform_data, %struct.omap_mmc_platform_data* %266, i32 0, i32 1
  %268 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %267, align 8
  %269 = icmp ne i32 (%struct.TYPE_11__*)* %268, null
  br i1 %269, label %270, label %281

270:                                              ; preds = %265
  %271 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %4, align 8
  %272 = getelementptr inbounds %struct.omap_mmc_platform_data, %struct.omap_mmc_platform_data* %271, i32 0, i32 1
  %273 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %272, align 8
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = call i32 %273(%struct.TYPE_11__* %275)
  store i32 %276, i32* %8, align 4
  %277 = load i32, i32* %8, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %270
  br label %354

280:                                              ; preds = %270
  br label %281

281:                                              ; preds = %280, %265
  %282 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %4, align 8
  %283 = getelementptr inbounds %struct.omap_mmc_platform_data, %struct.omap_mmc_platform_data* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %286 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 4
  %287 = call i64 (...) @mmc_omap7xx()
  %288 = icmp ne i64 %287, 0
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 1, i32 2
  %291 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %292 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 8
  %293 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0)
  %294 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %295 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %294, i32 0, i32 9
  store i32 %293, i32* %295, align 8
  %296 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %297 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %296, i32 0, i32 9
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %281
  %301 = load i32, i32* @ENOMEM, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %8, align 4
  br label %341

303:                                              ; preds = %281
  store i32 0, i32* %7, align 4
  br label %304

304:                                              ; preds = %332, %303
  %305 = load i32, i32* %7, align 4
  %306 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %4, align 8
  %307 = getelementptr inbounds %struct.omap_mmc_platform_data, %struct.omap_mmc_platform_data* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %335

310:                                              ; preds = %304
  %311 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %312 = load i32, i32* %7, align 4
  %313 = call i32 @mmc_omap_new_slot(%struct.mmc_omap_host* %311, i32 %312)
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %331

316:                                              ; preds = %310
  br label %317

317:                                              ; preds = %321, %316
  %318 = load i32, i32* %7, align 4
  %319 = add nsw i32 %318, -1
  store i32 %319, i32* %7, align 4
  %320 = icmp sge i32 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %317
  %322 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %323 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %322, i32 0, i32 10
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %7, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @mmc_omap_remove_slot(i32 %328)
  br label %317

330:                                              ; preds = %317
  br label %336

331:                                              ; preds = %310
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %7, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %7, align 4
  br label %304

335:                                              ; preds = %304
  store i32 0, i32* %2, align 4
  br label %395

336:                                              ; preds = %330
  %337 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %338 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %337, i32 0, i32 9
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @destroy_workqueue(i32 %339)
  br label %341

341:                                              ; preds = %336, %300
  %342 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %4, align 8
  %343 = getelementptr inbounds %struct.omap_mmc_platform_data, %struct.omap_mmc_platform_data* %342, i32 0, i32 2
  %344 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %343, align 8
  %345 = icmp ne i32 (%struct.TYPE_11__*)* %344, null
  br i1 %345, label %346, label %353

346:                                              ; preds = %341
  %347 = load %struct.omap_mmc_platform_data*, %struct.omap_mmc_platform_data** %4, align 8
  %348 = getelementptr inbounds %struct.omap_mmc_platform_data, %struct.omap_mmc_platform_data* %347, i32 0, i32 2
  %349 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %348, align 8
  %350 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %351 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %350, i32 0, i32 0
  %352 = call i32 %349(%struct.TYPE_11__* %351)
  br label %353

353:                                              ; preds = %346, %341
  br label %354

354:                                              ; preds = %353, %279
  %355 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %356 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %359 = call i32 @free_irq(i32 %357, %struct.mmc_omap_host* %358)
  br label %360

360:                                              ; preds = %354, %264
  %361 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %362 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %361, i32 0, i32 8
  %363 = load i32*, i32** %362, align 8
  %364 = icmp ne i32* %363, null
  br i1 %364, label %365, label %370

365:                                              ; preds = %360
  %366 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %367 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %366, i32 0, i32 8
  %368 = load i32*, i32** %367, align 8
  %369 = call i32 @dma_release_channel(i32* %368)
  br label %370

370:                                              ; preds = %365, %360
  %371 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %372 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %371, i32 0, i32 7
  %373 = load i32*, i32** %372, align 8
  %374 = icmp ne i32* %373, null
  br i1 %374, label %375, label %380

375:                                              ; preds = %370
  %376 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %377 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %376, i32 0, i32 7
  %378 = load i32*, i32** %377, align 8
  %379 = call i32 @dma_release_channel(i32* %378)
  br label %380

380:                                              ; preds = %375, %370
  %381 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %382 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %381, i32 0, i32 6
  %383 = load i32*, i32** %382, align 8
  %384 = call i32 @clk_put(i32* %383)
  br label %385

385:                                              ; preds = %380, %242, %199, %169
  %386 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %387 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %386, i32 0, i32 5
  %388 = load i32*, i32** %387, align 8
  %389 = call i32 @clk_disable(i32* %388)
  %390 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %5, align 8
  %391 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %390, i32 0, i32 5
  %392 = load i32*, i32** %391, align 8
  %393 = call i32 @clk_put(i32* %392)
  %394 = load i32, i32* %8, align 4
  store i32 %394, i32* %2, align 4
  br label %395

395:                                              ; preds = %385, %335, %148, %66, %48, %40, %27, %16
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.mmc_omap_host* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_omap_host*) #1

declare dso_local i8* @clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i8* @dma_request_chan(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.mmc_omap_host*) #1

declare dso_local i64 @mmc_omap7xx(...) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @mmc_omap_new_slot(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @mmc_omap_remove_slot(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @free_irq(i32, %struct.mmc_omap_host*) #1

declare dso_local i32 @clk_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
