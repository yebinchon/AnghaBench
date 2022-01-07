; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_device_id = type { i32 }
%struct.fintek_dev = type { i32, i32, i32, %struct.rc_dev*, i32, i32, %struct.pnp_dev*, i32, i32, i32 }
%struct.rc_dev = type { i8*, i8*, i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, %struct.fintek_dev* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IR PNP Port not valid!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"IR PNP IRQ not valid!\0A\00", align 1
@CR_INDEX_PORT = common dso_local global i32 0, align 4
@CR_DATA_PORT = common dso_local global i32 0, align 4
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@fintek_open = common dso_local global i32 0, align 4
@fintek_close = common dso_local global i32 0, align 4
@FINTEK_DESCRIPTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"fintek/cir0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@VENDOR_ID_FINTEK = common dso_local global i32 0, align 4
@FINTEK_DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_RC6_MCE = common dso_local global i32 0, align 4
@CIR_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@fintek_cir_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"driver has been successfully loaded\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @fintek_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fintek_probe(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca %struct.fintek_dev*, align 8
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fintek_dev* @kzalloc(i32 56, i32 %11)
  store %struct.fintek_dev* %12, %struct.fintek_dev** %6, align 8
  %13 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %14 = icmp ne %struct.fintek_dev* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %203

17:                                               ; preds = %2
  %18 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %19 = call %struct.rc_dev* @rc_allocate_device(i32 %18)
  store %struct.rc_dev* %19, %struct.rc_dev** %7, align 8
  %20 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %21 = icmp ne %struct.rc_dev* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %197

23:                                               ; preds = %17
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %27 = call i32 @pnp_port_valid(%struct.pnp_dev* %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %197

33:                                               ; preds = %23
  %34 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %35 = call i32 @pnp_irq_valid(%struct.pnp_dev* %34, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %197

41:                                               ; preds = %33
  %42 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %43 = call i32 @pnp_port_start(%struct.pnp_dev* %42, i32 0)
  %44 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %45 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %47 = call i32 @pnp_irq(%struct.pnp_dev* %46, i32 0)
  %48 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %49 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %51 = call i32 @pnp_port_len(%struct.pnp_dev* %50, i32 0)
  %52 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %53 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @CR_INDEX_PORT, align 4
  %55 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %56 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @CR_DATA_PORT, align 4
  %58 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %59 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 4
  %60 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %61 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %60, i32 0, i32 7
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %64 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %65 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %63, %struct.fintek_dev* %64)
  %66 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %67 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %68 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %67, i32 0, i32 6
  store %struct.pnp_dev* %66, %struct.pnp_dev** %68, align 8
  %69 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %70 = call i32 @fintek_hw_detect(%struct.fintek_dev* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %41
  br label %197

74:                                               ; preds = %41
  %75 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %76 = call i32 @fintek_config_mode_enable(%struct.fintek_dev* %75)
  %77 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %78 = call i32 @fintek_cir_ldev_init(%struct.fintek_dev* %77)
  %79 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %80 = call i32 @fintek_config_mode_disable(%struct.fintek_dev* %79)
  %81 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %82 = call i32 @fintek_cir_regs_init(%struct.fintek_dev* %81)
  %83 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %84 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %85 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %84, i32 0, i32 11
  store %struct.fintek_dev* %83, %struct.fintek_dev** %85, align 8
  %86 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %87 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %88 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %87, i32 0, i32 10
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @fintek_open, align 4
  %90 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %91 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @fintek_close, align 4
  %93 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %94 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @FINTEK_DESCRIPTION, align 4
  %96 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %97 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  %98 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %99 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %98, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %99, align 8
  %100 = load i32, i32* @BUS_HOST, align 4
  %101 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %102 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @VENDOR_ID_FINTEK, align 4
  %105 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %106 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %109 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %112 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %115 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %118 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %121 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %120, i32 0, i32 0
  %122 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %123 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32* %121, i32** %124, align 8
  %125 = load i32, i32* @FINTEK_DRIVER_NAME, align 4
  %126 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %127 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @RC_MAP_RC6_MCE, align 4
  %129 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %130 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 8
  %131 = call i8* @US_TO_NS(i32 1000)
  %132 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %133 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* @CIR_SAMPLE_PERIOD, align 4
  %135 = call i8* @US_TO_NS(i32 %134)
  %136 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %137 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %139 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %140 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %139, i32 0, i32 3
  store %struct.rc_dev* %138, %struct.rc_dev** %140, align 8
  %141 = load i32, i32* @EBUSY, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %8, align 4
  %143 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %144 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %147 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @FINTEK_DRIVER_NAME, align 4
  %150 = call i32 @request_region(i32 %145, i32 %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %74
  br label %197

153:                                              ; preds = %74
  %154 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %155 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @fintek_cir_isr, align 4
  %158 = load i32, i32* @IRQF_SHARED, align 4
  %159 = load i32, i32* @FINTEK_DRIVER_NAME, align 4
  %160 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %161 = bitcast %struct.fintek_dev* %160 to i8*
  %162 = call i64 @request_irq(i32 %156, i32 %157, i32 %158, i32 %159, i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  br label %189

165:                                              ; preds = %153
  %166 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %167 = call i32 @rc_register_device(%struct.rc_dev* %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %183

171:                                              ; preds = %165
  %172 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %173 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %172, i32 0, i32 0
  %174 = call i32 @device_init_wakeup(i32* %173, i32 1)
  %175 = load i32, i32* @KERN_NOTICE, align 4
  %176 = call i32 @fit_pr(i32 %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %177 = load i64, i64* @debug, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %181 = call i32 @cir_dump_regs(%struct.fintek_dev* %180)
  br label %182

182:                                              ; preds = %179, %171
  store i32 0, i32* %3, align 4
  br label %203

183:                                              ; preds = %170
  %184 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %185 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %188 = call i32 @free_irq(i32 %186, %struct.fintek_dev* %187)
  br label %189

189:                                              ; preds = %183, %164
  %190 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %191 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %194 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @release_region(i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %189, %152, %73, %37, %29, %22
  %198 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %199 = call i32 @rc_free_device(%struct.rc_dev* %198)
  %200 = load %struct.fintek_dev*, %struct.fintek_dev** %6, align 8
  %201 = call i32 @kfree(%struct.fintek_dev* %200)
  %202 = load i32, i32* %8, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %197, %182, %15
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.fintek_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @pnp_port_valid(%struct.pnp_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pnp_irq_valid(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_port_len(%struct.pnp_dev*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pnp_set_drvdata(%struct.pnp_dev*, %struct.fintek_dev*) #1

declare dso_local i32 @fintek_hw_detect(%struct.fintek_dev*) #1

declare dso_local i32 @fintek_config_mode_enable(%struct.fintek_dev*) #1

declare dso_local i32 @fintek_cir_ldev_init(%struct.fintek_dev*) #1

declare dso_local i32 @fintek_config_mode_disable(%struct.fintek_dev*) #1

declare dso_local i32 @fintek_cir_regs_init(%struct.fintek_dev*) #1

declare dso_local i8* @US_TO_NS(i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @fit_pr(i32, i8*) #1

declare dso_local i32 @cir_dump_regs(%struct.fintek_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.fintek_dev*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.fintek_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
