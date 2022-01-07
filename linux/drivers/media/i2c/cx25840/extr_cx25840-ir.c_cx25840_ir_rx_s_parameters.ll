; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_rx_s_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_rx_s_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_ir_parameters = type { i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.cx25840_ir_state = type { i32, i32, i32, i32, i32, %struct.v4l2_subdev_ir_parameters, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@FIFO_RXTX = common dso_local global i32 0, align 4
@RX_FIFO_HALF_FULL = common dso_local global i32 0, align 4
@CNTRL_EDG_BOTH = common dso_local global i32 0, align 4
@IRQEN_RSE = common dso_local global i32 0, align 4
@IRQEN_RTE = common dso_local global i32 0, align 4
@IRQEN_ROE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* @cx25840_ir_rx_s_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_ir_rx_s_parameters(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_ir_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_ir_parameters*, align 8
  %6 = alloca %struct.cx25840_ir_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.v4l2_subdev_ir_parameters*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_ir_parameters* %1, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev* %11)
  store %struct.cx25840_ir_state* %12, %struct.cx25840_ir_state** %6, align 8
  %13 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %14 = icmp eq %struct.cx25840_ir_state* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %230

18:                                               ; preds = %2
  %19 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %19, i32 0, i32 13
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %25 = call i32 @cx25840_ir_rx_shutdown(%struct.v4l2_subdev* %24)
  store i32 %25, i32* %3, align 4
  br label %230

26:                                               ; preds = %18
  %27 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOSYS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %230

35:                                               ; preds = %26
  %36 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %37 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %36, i32 0, i32 6
  %38 = load %struct.i2c_client*, %struct.i2c_client** %37, align 8
  store %struct.i2c_client* %38, %struct.i2c_client** %7, align 8
  %39 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %40 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %39, i32 0, i32 5
  store %struct.v4l2_subdev_ir_parameters* %40, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %41 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %42 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %44, i32 0, i32 13
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %47, i32 0, i32 13
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %50 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %57, i32 0, i32 1
  store i32 4, i32* %58, align 8
  %59 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %63 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %65 = call i32 @irqenable_rx(%struct.v4l2_subdev* %64, i32 0)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %67 = call i32 @control_rx_enable(%struct.i2c_client* %66, i32 0)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %69 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %69, i32 0, i32 12
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @control_rx_demodulation_enable(%struct.i2c_client* %68, i32 %71)
  %73 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 4
  %78 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %126

82:                                               ; preds = %35
  %83 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %84 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @rxclk_rx_s_carrier(%struct.i2c_client* %83, i32 %86, i32* %9)
  %88 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %88, i32 0, i32 11
  store i32 %87, i32* %89, align 8
  %90 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %93, i32 0, i32 11
  store i32 %92, i32* %94, align 8
  %95 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %95, i32 0, i32 2
  store i32 50, i32* %96, align 4
  %97 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %103 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %106, i32 0, i32 10
  %108 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %109 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %108, i32 0, i32 9
  %110 = call i32 @control_rx_s_carrier_window(%struct.i2c_client* %102, i32 %105, i32* %107, i32* %109)
  %111 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %112 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %115 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %114, i32 0, i32 10
  store i32 %113, i32* %115, align 4
  %116 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %117 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %120 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @FIFO_RXTX, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @pulse_width_count_to_ns(i32 %121, i32 %122)
  %124 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %125 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %124, i32 0, i32 8
  store i64 %123, i64* %125, align 8
  br label %134

126:                                              ; preds = %35
  %127 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %128 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %129 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %128, i32 0, i32 8
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @rxclk_rx_s_max_pulse_width(%struct.i2c_client* %127, i64 %130, i32* %9)
  %132 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %133 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %132, i32 0, i32 8
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %126, %82
  %135 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %136 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %135, i32 0, i32 8
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %139 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %138, i32 0, i32 8
  store i64 %137, i64* %139, align 8
  %140 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %141 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %140, i32 0, i32 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @atomic_set(i32* %141, i32 %142)
  %144 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %145 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %146 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @filter_rx_s_min_width(%struct.i2c_client* %144, i32 %147)
  %149 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %150 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %152 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %155 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @clock_divider_to_resolution(i32 %156)
  %158 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %159 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 4
  %160 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %161 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %164 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 4
  %165 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %166 = load i32, i32* @RX_FIFO_HALF_FULL, align 4
  %167 = call i32 @control_rx_irq_watermark(%struct.i2c_client* %165, i32 %166)
  %168 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %169 = load i32, i32* @CNTRL_EDG_BOTH, align 4
  %170 = call i32 @control_rx_s_edge_detection(%struct.i2c_client* %168, i32 %169)
  %171 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %172 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %175 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 8
  %176 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %177 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %176, i32 0, i32 3
  %178 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %179 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @atomic_set(i32* %177, i32 %180)
  %182 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %183 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %186 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %185, i32 0, i32 4
  store i64 %184, i64* %186, align 8
  %187 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %188 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %191 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 8
  %192 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %193 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %226

196:                                              ; preds = %134
  %197 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %198 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %197, i32 0, i32 1
  %199 = load i64, i64* %10, align 8
  %200 = call i32 @spin_lock_irqsave(i32* %198, i64 %199)
  %201 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %202 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %201, i32 0, i32 2
  %203 = call i32 @kfifo_reset(i32* %202)
  %204 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %205 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %204, i32 0, i32 1
  %206 = load i64, i64* %10, align 8
  %207 = call i32 @spin_unlock_irqrestore(i32* %205, i64 %206)
  %208 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %209 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %196
  %213 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %214 = load i32, i32* @IRQEN_RSE, align 4
  %215 = load i32, i32* @IRQEN_RTE, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @IRQEN_ROE, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @irqenable_rx(%struct.v4l2_subdev* %213, i32 %218)
  br label %220

220:                                              ; preds = %212, %196
  %221 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %222 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %223 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @control_rx_enable(%struct.i2c_client* %221, i32 %224)
  br label %226

226:                                              ; preds = %220, %134
  %227 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %6, align 8
  %228 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %227, i32 0, i32 0
  %229 = call i32 @mutex_unlock(i32* %228)
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %226, %32, %23, %15
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_ir_rx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqenable_rx(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @control_rx_enable(%struct.i2c_client*, i32) #1

declare dso_local i32 @control_rx_demodulation_enable(%struct.i2c_client*, i32) #1

declare dso_local i32 @rxclk_rx_s_carrier(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @control_rx_s_carrier_window(%struct.i2c_client*, i32, i32*, i32*) #1

declare dso_local i64 @pulse_width_count_to_ns(i32, i32) #1

declare dso_local i64 @rxclk_rx_s_max_pulse_width(%struct.i2c_client*, i64, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @filter_rx_s_min_width(%struct.i2c_client*, i32) #1

declare dso_local i32 @clock_divider_to_resolution(i32) #1

declare dso_local i32 @control_rx_irq_watermark(%struct.i2c_client*, i32) #1

declare dso_local i32 @control_rx_s_edge_detection(%struct.i2c_client*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfifo_reset(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
