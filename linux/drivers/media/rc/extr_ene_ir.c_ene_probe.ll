; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_device_id = type { i32 }
%struct.rc_dev = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ene_device*, i32 }
%struct.ene_device = type { i32, i32, i32, %struct.rc_dev*, i32, i32, %struct.pnp_dev*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENE_IO_SIZE = common dso_local global i64 0, align 8
@sample_period = common dso_local global i32 0, align 4
@ENE_DEFAULT_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@txsim = common dso_local global i64 0, align 8
@ene_tx_irqsim = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Simulation of TX activated\0A\00", align 1
@learning_mode_force = common dso_local global i32 0, align 4
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@ene_open = common dso_local global i32 0, align 4
@ene_close = common dso_local global i32 0, align 4
@ene_set_idle = common dso_local global i32 0, align 4
@ENE_DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_RC6_MCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ENE eHome Infrared Remote Receiver\00", align 1
@ene_set_learning_mode = common dso_local global i32 0, align 4
@ene_transmit = common dso_local global i32 0, align 4
@ene_set_tx_mask = common dso_local global i32 0, align 4
@ene_set_tx_carrier = common dso_local global i32 0, align 4
@ene_set_tx_duty_cycle = common dso_local global i32 0, align 4
@ene_set_carrier_report = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"ENE eHome Infrared Remote Transceiver\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ene_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"driver has been successfully loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @ene_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_probe(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca %struct.ene_device*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ene_device* @kzalloc(i32 48, i32 %11)
  store %struct.ene_device* %12, %struct.ene_device** %8, align 8
  %13 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %14 = call %struct.rc_dev* @rc_allocate_device(i32 %13)
  store %struct.rc_dev* %14, %struct.rc_dev** %7, align 8
  %15 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %16 = icmp ne %struct.ene_device* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %19 = icmp ne %struct.rc_dev* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  br label %202

21:                                               ; preds = %17
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %25 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %27 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %29 = call i32 @pnp_port_valid(%struct.pnp_dev* %28, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %33 = call i64 @pnp_port_len(%struct.pnp_dev* %32, i32 0)
  %34 = load i64, i64* @ENE_IO_SIZE, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %21
  br label %202

37:                                               ; preds = %31
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %39 = call i32 @pnp_irq_valid(%struct.pnp_dev* %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %202

42:                                               ; preds = %37
  %43 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %44 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %43, i32 0, i32 7
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %47 = call i32 @pnp_port_start(%struct.pnp_dev* %46, i32 0)
  %48 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %49 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %51 = call i32 @pnp_irq(%struct.pnp_dev* %50, i32 0)
  %52 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %53 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %55 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %56 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %54, %struct.ene_device* %55)
  %57 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %58 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %59 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %58, i32 0, i32 6
  store %struct.pnp_dev* %57, %struct.pnp_dev** %59, align 8
  %60 = load i32, i32* @sample_period, align 4
  %61 = icmp slt i32 %60, 5
  br i1 %61, label %65, label %62

62:                                               ; preds = %42
  %63 = load i32, i32* @sample_period, align 4
  %64 = icmp sgt i32 %63, 127
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %42
  %66 = load i32, i32* @ENE_DEFAULT_SAMPLE_PERIOD, align 4
  store i32 %66, i32* @sample_period, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %69 = call i32 @ene_hw_detect(%struct.ene_device* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %202

73:                                               ; preds = %67
  %74 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %75 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %73
  %79 = load i64, i64* @txsim, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %83 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %85 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %84, i32 0, i32 5
  %86 = load i32, i32* @ene_tx_irqsim, align 4
  %87 = call i32 @timer_setup(i32* %85, i32 %86, i32 0)
  %88 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %81, %78, %73
  %90 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %91 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store i32 0, i32* @learning_mode_force, align 4
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %97 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %98 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %97, i32 0, i32 13
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %100 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %101 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %100, i32 0, i32 12
  store %struct.ene_device* %99, %struct.ene_device** %101, align 8
  %102 = load i32, i32* @ene_open, align 4
  %103 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %104 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %103, i32 0, i32 11
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @ene_close, align 4
  %106 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %107 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @ene_set_idle, align 4
  %109 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %110 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @ENE_DRIVER_NAME, align 4
  %112 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %113 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @RC_MAP_RC6_MCE, align 4
  %115 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %116 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 8
  %117 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %118 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %118, align 8
  %119 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %120 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %95
  %124 = load i32, i32* @ene_set_learning_mode, align 4
  %125 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %126 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %128 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %127, i32 0, i32 4
  %129 = call i32 @init_completion(i32* %128)
  %130 = load i32, i32* @ene_transmit, align 4
  %131 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %132 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @ene_set_tx_mask, align 4
  %134 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %135 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @ene_set_tx_carrier, align 4
  %137 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %138 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @ene_set_tx_duty_cycle, align 4
  %140 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %141 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @ene_set_carrier_report, align 4
  %143 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %144 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  %145 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %146 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %145, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8** %146, align 8
  br label %147

147:                                              ; preds = %123, %95
  %148 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %149 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %150 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %149, i32 0, i32 3
  store %struct.rc_dev* %148, %struct.rc_dev** %150, align 8
  %151 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %152 = call i32 @ene_rx_setup_hw_buffer(%struct.ene_device* %151)
  %153 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %154 = call i32 @ene_setup_default_settings(%struct.ene_device* %153)
  %155 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %156 = call i32 @ene_setup_hw_settings(%struct.ene_device* %155)
  %157 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %158 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %157, i32 0, i32 0
  %159 = call i32 @device_set_wakeup_capable(i32* %158, i32 1)
  %160 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %161 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %160, i32 0, i32 0
  %162 = call i32 @device_set_wakeup_enable(i32* %161, i32 1)
  %163 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %164 = call i32 @rc_register_device(%struct.rc_dev* %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %147
  br label %202

168:                                              ; preds = %147
  %169 = load i32, i32* @EBUSY, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %6, align 4
  %171 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %172 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i64, i64* @ENE_IO_SIZE, align 8
  %175 = load i32, i32* @ENE_DRIVER_NAME, align 4
  %176 = call i32 @request_region(i32 %173, i64 %174, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %168
  br label %199

179:                                              ; preds = %168
  %180 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %181 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ene_isr, align 4
  %184 = load i32, i32* @IRQF_SHARED, align 4
  %185 = load i32, i32* @ENE_DRIVER_NAME, align 4
  %186 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %187 = bitcast %struct.ene_device* %186 to i8*
  %188 = call i64 @request_irq(i32 %182, i32 %183, i32 %184, i32 %185, i8* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  br label %193

191:                                              ; preds = %179
  %192 = call i32 @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %208

193:                                              ; preds = %190
  %194 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %195 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i64, i64* @ENE_IO_SIZE, align 8
  %198 = call i32 @release_region(i32 %196, i64 %197)
  br label %199

199:                                              ; preds = %193, %178
  %200 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %201 = call i32 @rc_unregister_device(%struct.rc_dev* %200)
  store %struct.rc_dev* null, %struct.rc_dev** %7, align 8
  br label %202

202:                                              ; preds = %199, %167, %72, %41, %36, %20
  %203 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %204 = call i32 @rc_free_device(%struct.rc_dev* %203)
  %205 = load %struct.ene_device*, %struct.ene_device** %8, align 8
  %206 = call i32 @kfree(%struct.ene_device* %205)
  %207 = load i32, i32* %6, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %202, %191
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local %struct.ene_device* @kzalloc(i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @pnp_port_valid(%struct.pnp_dev*, i32) #1

declare dso_local i64 @pnp_port_len(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq_valid(%struct.pnp_dev*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_irq(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_set_drvdata(%struct.pnp_dev*, %struct.ene_device*) #1

declare dso_local i32 @ene_hw_detect(%struct.ene_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ene_rx_setup_hw_buffer(%struct.ene_device*) #1

declare dso_local i32 @ene_setup_default_settings(%struct.ene_device*) #1

declare dso_local i32 @ene_setup_hw_settings(%struct.ene_device*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @request_region(i32, i64, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @release_region(i32, i64) #1

declare dso_local i32 @rc_unregister_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @kfree(%struct.ene_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
