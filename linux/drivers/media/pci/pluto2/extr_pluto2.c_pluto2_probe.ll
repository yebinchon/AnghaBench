; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.pluto = type { i32, %struct.TYPE_17__, %struct.TYPE_13__, %struct.TYPE_16__, %struct.TYPE_16__, i32, %struct.dvb_demux, %struct.dvb_adapter, %struct.TYPE_15__, %struct.pci_dev* }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { %struct.dmx_demux*, i32 }
%struct.dmx_demux = type { i32, i32 (%struct.dmx_demux*, %struct.TYPE_16__*)*, i32 (%struct.dmx_demux*, %struct.TYPE_16__*)*, i32 (%struct.dmx_demux*, %struct.TYPE_16__*)*, i32 (%struct.dmx_demux*)* }
%struct.TYPE_16__ = type { i32 }
%struct.dvb_demux = type { i32, i32, %struct.dmx_demux, i32, i32 }
%struct.dvb_adapter = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 (%struct.pluto.0*, i32)*, i32 (%struct.pluto.1*, i32)*, %struct.pluto* }
%struct.pluto.0 = type opaque
%struct.pluto.1 = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@pluto_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pluto_getsda = common dso_local global i32 0, align 4
@pluto_getscl = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@pluto_start_feed = common dso_local global i32 0, align 4
@pluto_stop_feed = common dso_local global i32 0, align 4
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@NHWFILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pluto2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pluto2_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.pluto*, align 8
  %6 = alloca %struct.dvb_adapter*, align 8
  %7 = alloca %struct.dvb_demux*, align 8
  %8 = alloca %struct.dmx_demux*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pluto* @kzalloc(i32 176, i32 %12)
  store %struct.pluto* %13, %struct.pluto** %5, align 8
  %14 = load %struct.pluto*, %struct.pluto** %5, align 8
  %15 = icmp ne %struct.pluto* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %257

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load %struct.pluto*, %struct.pluto** %5, align 8
  %20 = getelementptr inbounds %struct.pluto, %struct.pluto* %19, i32 0, i32 9
  store %struct.pci_dev* %18, %struct.pci_dev** %20, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pci_enable_device(%struct.pci_dev* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %316

26:                                               ; preds = %17
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = call i32 @pci_write_config_dword(%struct.pci_dev* %27, i32 108, i32 32768)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32 @DMA_BIT_MASK(i32 32)
  %31 = call i32 @pci_set_dma_mask(%struct.pci_dev* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %313

35:                                               ; preds = %26
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = call i32 @pci_set_master(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = load i32, i32* @DRIVER_NAME, align 4
  %40 = call i32 @pci_request_regions(%struct.pci_dev* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %313

44:                                               ; preds = %35
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = call i32 @pci_iomap(%struct.pci_dev* %45, i32 0, i32 64)
  %47 = load %struct.pluto*, %struct.pluto** %5, align 8
  %48 = getelementptr inbounds %struct.pluto, %struct.pluto* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.pluto*, %struct.pluto** %5, align 8
  %50 = getelementptr inbounds %struct.pluto, %struct.pluto* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %310

56:                                               ; preds = %44
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = load %struct.pluto*, %struct.pluto** %5, align 8
  %59 = call i32 @pci_set_drvdata(%struct.pci_dev* %57, %struct.pluto* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @pluto_irq, align 4
  %64 = load i32, i32* @IRQF_SHARED, align 4
  %65 = load i32, i32* @DRIVER_NAME, align 4
  %66 = load %struct.pluto*, %struct.pluto** %5, align 8
  %67 = call i32 @request_irq(i32 %62, i32 %63, i32 %64, i32 %65, %struct.pluto* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %304

71:                                               ; preds = %56
  %72 = load %struct.pluto*, %struct.pluto** %5, align 8
  %73 = call i32 @pluto_hw_init(%struct.pluto* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %298

77:                                               ; preds = %71
  %78 = load %struct.pluto*, %struct.pluto** %5, align 8
  %79 = getelementptr inbounds %struct.pluto, %struct.pluto* %78, i32 0, i32 1
  %80 = load %struct.pluto*, %struct.pluto** %5, align 8
  %81 = call i32 @i2c_set_adapdata(%struct.TYPE_17__* %79, %struct.pluto* %80)
  %82 = load %struct.pluto*, %struct.pluto** %5, align 8
  %83 = getelementptr inbounds %struct.pluto, %struct.pluto* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DRIVER_NAME, align 4
  %87 = call i32 @strscpy(i32 %85, i32 %86, i32 4)
  %88 = load i32, i32* @THIS_MODULE, align 4
  %89 = load %struct.pluto*, %struct.pluto** %5, align 8
  %90 = getelementptr inbounds %struct.pluto, %struct.pluto* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 1
  %94 = load %struct.pluto*, %struct.pluto** %5, align 8
  %95 = getelementptr inbounds %struct.pluto, %struct.pluto* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i32* %93, i32** %97, align 8
  %98 = load %struct.pluto*, %struct.pluto** %5, align 8
  %99 = getelementptr inbounds %struct.pluto, %struct.pluto* %98, i32 0, i32 8
  %100 = load %struct.pluto*, %struct.pluto** %5, align 8
  %101 = getelementptr inbounds %struct.pluto, %struct.pluto* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %102, align 8
  %103 = load %struct.pluto*, %struct.pluto** %5, align 8
  %104 = load %struct.pluto*, %struct.pluto** %5, align 8
  %105 = getelementptr inbounds %struct.pluto, %struct.pluto* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 6
  store %struct.pluto* %103, %struct.pluto** %106, align 8
  %107 = load %struct.pluto*, %struct.pluto** %5, align 8
  %108 = getelementptr inbounds %struct.pluto, %struct.pluto* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 5
  store i32 (%struct.pluto.1*, i32)* bitcast (i32 (%struct.pluto*, i32)* @pluto_setsda to i32 (%struct.pluto.1*, i32)*), i32 (%struct.pluto.1*, i32)** %109, align 8
  %110 = load %struct.pluto*, %struct.pluto** %5, align 8
  %111 = getelementptr inbounds %struct.pluto, %struct.pluto* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  store i32 (%struct.pluto.0*, i32)* bitcast (i32 (%struct.pluto*, i32)* @pluto_setscl to i32 (%struct.pluto.0*, i32)*), i32 (%struct.pluto.0*, i32)** %112, align 8
  %113 = load i32, i32* @pluto_getsda, align 4
  %114 = load %struct.pluto*, %struct.pluto** %5, align 8
  %115 = getelementptr inbounds %struct.pluto, %struct.pluto* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 3
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @pluto_getscl, align 4
  %118 = load %struct.pluto*, %struct.pluto** %5, align 8
  %119 = getelementptr inbounds %struct.pluto, %struct.pluto* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  store i32 %117, i32* %120, align 8
  %121 = load %struct.pluto*, %struct.pluto** %5, align 8
  %122 = getelementptr inbounds %struct.pluto, %struct.pluto* %121, i32 0, i32 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  store i32 10, i32* %123, align 8
  %124 = load %struct.pluto*, %struct.pluto** %5, align 8
  %125 = getelementptr inbounds %struct.pluto, %struct.pluto* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  store i32 10, i32* %126, align 4
  %127 = load %struct.pluto*, %struct.pluto** %5, align 8
  %128 = call i32 @pluto_setsda(%struct.pluto* %127, i32 1)
  %129 = load %struct.pluto*, %struct.pluto** %5, align 8
  %130 = call i32 @pluto_setscl(%struct.pluto* %129, i32 1)
  %131 = load %struct.pluto*, %struct.pluto** %5, align 8
  %132 = getelementptr inbounds %struct.pluto, %struct.pluto* %131, i32 0, i32 1
  %133 = call i32 @i2c_bit_add_bus(%struct.TYPE_17__* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %77
  br label %295

137:                                              ; preds = %77
  %138 = load %struct.pluto*, %struct.pluto** %5, align 8
  %139 = getelementptr inbounds %struct.pluto, %struct.pluto* %138, i32 0, i32 7
  %140 = load i32, i32* @DRIVER_NAME, align 4
  %141 = load i32, i32* @THIS_MODULE, align 4
  %142 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 1
  %144 = load i32, i32* @adapter_nr, align 4
  %145 = call i32 @dvb_register_adapter(%struct.dvb_adapter* %139, i32 %140, i32 %141, i32* %143, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  br label %291

149:                                              ; preds = %137
  %150 = load %struct.pluto*, %struct.pluto** %5, align 8
  %151 = getelementptr inbounds %struct.pluto, %struct.pluto* %150, i32 0, i32 7
  store %struct.dvb_adapter* %151, %struct.dvb_adapter** %6, align 8
  %152 = load %struct.pluto*, %struct.pluto** %5, align 8
  %153 = call i32 @pluto_read_rev(%struct.pluto* %152)
  %154 = load %struct.pluto*, %struct.pluto** %5, align 8
  %155 = call i32 @pluto_read_serial(%struct.pluto* %154)
  %156 = load %struct.pluto*, %struct.pluto** %5, align 8
  %157 = load %struct.dvb_adapter*, %struct.dvb_adapter** %6, align 8
  %158 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @pluto_read_mac(%struct.pluto* %156, i32 %159)
  %161 = load %struct.pluto*, %struct.pluto** %5, align 8
  %162 = getelementptr inbounds %struct.pluto, %struct.pluto* %161, i32 0, i32 6
  store %struct.dvb_demux* %162, %struct.dvb_demux** %7, align 8
  %163 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %164 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %163, i32 0, i32 0
  store i32 256, i32* %164, align 8
  %165 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %166 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %165, i32 0, i32 1
  store i32 256, i32* %166, align 4
  %167 = load i32, i32* @pluto_start_feed, align 4
  %168 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %169 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @pluto_stop_feed, align 4
  %171 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %172 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @DMX_TS_FILTERING, align 4
  %174 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %179 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %182 = call i32 @dvb_dmx_init(%struct.dvb_demux* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %149
  br label %288

186:                                              ; preds = %149
  %187 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %188 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %187, i32 0, i32 2
  store %struct.dmx_demux* %188, %struct.dmx_demux** %8, align 8
  %189 = load i32, i32* @DMX_FRONTEND_0, align 4
  %190 = load %struct.pluto*, %struct.pluto** %5, align 8
  %191 = getelementptr inbounds %struct.pluto, %struct.pluto* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 8
  %193 = load i32, i32* @DMX_MEMORY_FE, align 4
  %194 = load %struct.pluto*, %struct.pluto** %5, align 8
  %195 = getelementptr inbounds %struct.pluto, %struct.pluto* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 4
  %197 = load i32, i32* @NHWFILTERS, align 4
  %198 = load %struct.pluto*, %struct.pluto** %5, align 8
  %199 = getelementptr inbounds %struct.pluto, %struct.pluto* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 8
  %201 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %202 = load %struct.pluto*, %struct.pluto** %5, align 8
  %203 = getelementptr inbounds %struct.pluto, %struct.pluto* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  store %struct.dmx_demux* %201, %struct.dmx_demux** %204, align 8
  %205 = load %struct.pluto*, %struct.pluto** %5, align 8
  %206 = getelementptr inbounds %struct.pluto, %struct.pluto* %205, i32 0, i32 2
  %207 = load %struct.dvb_adapter*, %struct.dvb_adapter** %6, align 8
  %208 = call i32 @dvb_dmxdev_init(%struct.TYPE_13__* %206, %struct.dvb_adapter* %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %186
  br label %285

212:                                              ; preds = %186
  %213 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %214 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %213, i32 0, i32 1
  %215 = load i32 (%struct.dmx_demux*, %struct.TYPE_16__*)*, i32 (%struct.dmx_demux*, %struct.TYPE_16__*)** %214, align 8
  %216 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %217 = load %struct.pluto*, %struct.pluto** %5, align 8
  %218 = getelementptr inbounds %struct.pluto, %struct.pluto* %217, i32 0, i32 3
  %219 = call i32 %215(%struct.dmx_demux* %216, %struct.TYPE_16__* %218)
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  br label %281

223:                                              ; preds = %212
  %224 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %225 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %224, i32 0, i32 1
  %226 = load i32 (%struct.dmx_demux*, %struct.TYPE_16__*)*, i32 (%struct.dmx_demux*, %struct.TYPE_16__*)** %225, align 8
  %227 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %228 = load %struct.pluto*, %struct.pluto** %5, align 8
  %229 = getelementptr inbounds %struct.pluto, %struct.pluto* %228, i32 0, i32 4
  %230 = call i32 %226(%struct.dmx_demux* %227, %struct.TYPE_16__* %229)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %223
  br label %273

234:                                              ; preds = %223
  %235 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %236 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %235, i32 0, i32 2
  %237 = load i32 (%struct.dmx_demux*, %struct.TYPE_16__*)*, i32 (%struct.dmx_demux*, %struct.TYPE_16__*)** %236, align 8
  %238 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %239 = load %struct.pluto*, %struct.pluto** %5, align 8
  %240 = getelementptr inbounds %struct.pluto, %struct.pluto* %239, i32 0, i32 3
  %241 = call i32 %237(%struct.dmx_demux* %238, %struct.TYPE_16__* %240)
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %234
  br label %265

245:                                              ; preds = %234
  %246 = load %struct.pluto*, %struct.pluto** %5, align 8
  %247 = call i32 @frontend_init(%struct.pluto* %246)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %259

251:                                              ; preds = %245
  %252 = load %struct.dvb_adapter*, %struct.dvb_adapter** %6, align 8
  %253 = load %struct.pluto*, %struct.pluto** %5, align 8
  %254 = getelementptr inbounds %struct.pluto, %struct.pluto* %253, i32 0, i32 5
  %255 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %256 = call i32 @dvb_net_init(%struct.dvb_adapter* %252, i32* %254, %struct.dmx_demux* %255)
  br label %257

257:                                              ; preds = %316, %251, %16
  %258 = load i32, i32* %9, align 4
  ret i32 %258

259:                                              ; preds = %250
  %260 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %261 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %260, i32 0, i32 4
  %262 = load i32 (%struct.dmx_demux*)*, i32 (%struct.dmx_demux*)** %261, align 8
  %263 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %264 = call i32 %262(%struct.dmx_demux* %263)
  br label %265

265:                                              ; preds = %259, %244
  %266 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %267 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %266, i32 0, i32 3
  %268 = load i32 (%struct.dmx_demux*, %struct.TYPE_16__*)*, i32 (%struct.dmx_demux*, %struct.TYPE_16__*)** %267, align 8
  %269 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %270 = load %struct.pluto*, %struct.pluto** %5, align 8
  %271 = getelementptr inbounds %struct.pluto, %struct.pluto* %270, i32 0, i32 4
  %272 = call i32 %268(%struct.dmx_demux* %269, %struct.TYPE_16__* %271)
  br label %273

273:                                              ; preds = %265, %233
  %274 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %275 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %274, i32 0, i32 3
  %276 = load i32 (%struct.dmx_demux*, %struct.TYPE_16__*)*, i32 (%struct.dmx_demux*, %struct.TYPE_16__*)** %275, align 8
  %277 = load %struct.dmx_demux*, %struct.dmx_demux** %8, align 8
  %278 = load %struct.pluto*, %struct.pluto** %5, align 8
  %279 = getelementptr inbounds %struct.pluto, %struct.pluto* %278, i32 0, i32 3
  %280 = call i32 %276(%struct.dmx_demux* %277, %struct.TYPE_16__* %279)
  br label %281

281:                                              ; preds = %273, %222
  %282 = load %struct.pluto*, %struct.pluto** %5, align 8
  %283 = getelementptr inbounds %struct.pluto, %struct.pluto* %282, i32 0, i32 2
  %284 = call i32 @dvb_dmxdev_release(%struct.TYPE_13__* %283)
  br label %285

285:                                              ; preds = %281, %211
  %286 = load %struct.dvb_demux*, %struct.dvb_demux** %7, align 8
  %287 = call i32 @dvb_dmx_release(%struct.dvb_demux* %286)
  br label %288

288:                                              ; preds = %285, %185
  %289 = load %struct.dvb_adapter*, %struct.dvb_adapter** %6, align 8
  %290 = call i32 @dvb_unregister_adapter(%struct.dvb_adapter* %289)
  br label %291

291:                                              ; preds = %288, %148
  %292 = load %struct.pluto*, %struct.pluto** %5, align 8
  %293 = getelementptr inbounds %struct.pluto, %struct.pluto* %292, i32 0, i32 1
  %294 = call i32 @i2c_del_adapter(%struct.TYPE_17__* %293)
  br label %295

295:                                              ; preds = %291, %136
  %296 = load %struct.pluto*, %struct.pluto** %5, align 8
  %297 = call i32 @pluto_hw_exit(%struct.pluto* %296)
  br label %298

298:                                              ; preds = %295, %76
  %299 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %300 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.pluto*, %struct.pluto** %5, align 8
  %303 = call i32 @free_irq(i32 %301, %struct.pluto* %302)
  br label %304

304:                                              ; preds = %298, %70
  %305 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %306 = load %struct.pluto*, %struct.pluto** %5, align 8
  %307 = getelementptr inbounds %struct.pluto, %struct.pluto* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @pci_iounmap(%struct.pci_dev* %305, i32 %308)
  br label %310

310:                                              ; preds = %304, %53
  %311 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %312 = call i32 @pci_release_regions(%struct.pci_dev* %311)
  br label %313

313:                                              ; preds = %310, %43, %34
  %314 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %315 = call i32 @pci_disable_device(%struct.pci_dev* %314)
  br label %316

316:                                              ; preds = %313, %25
  %317 = load %struct.pluto*, %struct.pluto** %5, align 8
  %318 = call i32 @kfree(%struct.pluto* %317)
  br label %257
}

declare dso_local %struct.pluto* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pluto*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.pluto*) #1

declare dso_local i32 @pluto_hw_init(%struct.pluto*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_17__*, %struct.pluto*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @pluto_setsda(%struct.pluto*, i32) #1

declare dso_local i32 @pluto_setscl(%struct.pluto*, i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_17__*) #1

declare dso_local i32 @dvb_register_adapter(%struct.dvb_adapter*, i32, i32, i32*, i32) #1

declare dso_local i32 @pluto_read_rev(%struct.pluto*) #1

declare dso_local i32 @pluto_read_serial(%struct.pluto*) #1

declare dso_local i32 @pluto_read_mac(%struct.pluto*, i32) #1

declare dso_local i32 @dvb_dmx_init(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_13__*, %struct.dvb_adapter*) #1

declare dso_local i32 @frontend_init(%struct.pluto*) #1

declare dso_local i32 @dvb_net_init(%struct.dvb_adapter*, i32*, %struct.dmx_demux*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.dvb_adapter*) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_17__*) #1

declare dso_local i32 @pluto_hw_exit(%struct.pluto*) #1

declare dso_local i32 @free_irq(i32, %struct.pluto*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pluto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
