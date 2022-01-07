; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_rx_s_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_rx_s_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_ir_parameters = type { i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.cx23888_ir_state = type { i32, i32, i32, i32, i32, %struct.v4l2_subdev_ir_parameters, %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }

@V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@FIFO_RXTX = common dso_local global i32 0, align 4
@RX_FIFO_HALF_FULL = common dso_local global i32 0, align 4
@CNTRL_EDG_BOTH = common dso_local global i32 0, align 4
@IRQEN_RSE = common dso_local global i32 0, align 4
@IRQEN_RTE = common dso_local global i32 0, align 4
@IRQEN_ROE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_ir_parameters*)* @cx23888_ir_rx_s_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23888_ir_rx_s_parameters(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_ir_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_ir_parameters*, align 8
  %6 = alloca %struct.cx23888_ir_state*, align 8
  %7 = alloca %struct.cx23885_dev*, align 8
  %8 = alloca %struct.v4l2_subdev_ir_parameters*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_ir_parameters* %1, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.cx23888_ir_state* %12, %struct.cx23888_ir_state** %6, align 8
  %13 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %14 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %13, i32 0, i32 6
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %14, align 8
  store %struct.cx23885_dev* %15, %struct.cx23885_dev** %7, align 8
  %16 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %17 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %16, i32 0, i32 5
  store %struct.v4l2_subdev_ir_parameters* %17, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %18 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %18, i32 0, i32 13
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = call i32 @cx23888_ir_rx_shutdown(%struct.v4l2_subdev* %23)
  store i32 %24, i32* %3, align 4
  br label %215

25:                                               ; preds = %2
  %26 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %215

34:                                               ; preds = %25
  %35 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %36 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %38, i32 0, i32 13
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %41, i32 0, i32 13
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %44 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  %48 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %48, i32 0, i32 1
  store i32 4, i32* %49, align 8
  %50 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %50, i32 0, i32 1
  store i32 4, i32* %51, align 8
  %52 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %53 = call i32 @irqenable_rx(%struct.cx23885_dev* %52, i32 0)
  %54 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %55 = call i32 @control_rx_enable(%struct.cx23885_dev* %54, i32 0)
  %56 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %57 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @control_rx_demodulation_enable(%struct.cx23885_dev* %56, i32 %59)
  %61 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %64, i32 0, i32 12
  store i32 %63, i32* %65, align 4
  %66 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %111

70:                                               ; preds = %34
  %71 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %72 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @rxclk_rx_s_carrier(%struct.cx23885_dev* %71, i32 %74, i32* %9)
  %76 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %76, i32 0, i32 11
  store i32 %75, i32* %77, align 8
  %78 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 8
  %83 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %83, i32 0, i32 2
  store i32 50, i32* %84, align 4
  %85 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %85, i32 0, i32 2
  store i32 50, i32* %86, align 4
  %87 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %88 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %91, i32 0, i32 10
  %93 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %93, i32 0, i32 9
  %95 = call i32 @control_rx_s_carrier_window(%struct.cx23885_dev* %87, i32 %90, i32* %92, i32* %94)
  %96 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %100 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %99, i32 0, i32 10
  store i32 %98, i32* %100, align 4
  %101 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %102 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %105 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @FIFO_RXTX, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @pulse_width_count_to_ns(i32 %106, i32 %107)
  %109 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %109, i32 0, i32 8
  store i64 %108, i64* %110, align 8
  br label %119

111:                                              ; preds = %34
  %112 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %113 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %113, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @rxclk_rx_s_max_pulse_width(%struct.cx23885_dev* %112, i64 %115, i32* %9)
  %117 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %117, i32 0, i32 8
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %111, %70
  %120 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %123, i32 0, i32 8
  store i64 %122, i64* %124, align 8
  %125 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %126 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %125, i32 0, i32 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @atomic_set(i32* %126, i32 %127)
  %129 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %130 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %131 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @filter_rx_s_min_width(%struct.cx23885_dev* %129, i32 %132)
  %134 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %135 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 8
  %136 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %137 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %140 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @clock_divider_to_resolution(i32 %141)
  %143 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %144 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 4
  %145 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %146 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %149 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  %150 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %151 = load i32, i32* @RX_FIFO_HALF_FULL, align 4
  %152 = call i32 @control_rx_irq_watermark(%struct.cx23885_dev* %150, i32 %151)
  %153 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %154 = load i32, i32* @CNTRL_EDG_BOTH, align 4
  %155 = call i32 @control_rx_s_edge_detection(%struct.cx23885_dev* %153, i32 %154)
  %156 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %157 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %160 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %162 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %161, i32 0, i32 3
  %163 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %164 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @atomic_set(i32* %162, i32 %165)
  %167 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %168 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %171 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %170, i32 0, i32 4
  store i64 %169, i64* %171, align 8
  %172 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %173 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %8, align 8
  %176 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  %177 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %178 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %211

181:                                              ; preds = %119
  %182 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %183 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %182, i32 0, i32 1
  %184 = load i64, i64* %10, align 8
  %185 = call i32 @spin_lock_irqsave(i32* %183, i64 %184)
  %186 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %187 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %186, i32 0, i32 2
  %188 = call i32 @kfifo_reset(i32* %187)
  %189 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %190 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %189, i32 0, i32 1
  %191 = load i64, i64* %10, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  %193 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %194 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %181
  %198 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %199 = load i32, i32* @IRQEN_RSE, align 4
  %200 = load i32, i32* @IRQEN_RTE, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @IRQEN_ROE, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @irqenable_rx(%struct.cx23885_dev* %198, i32 %203)
  br label %205

205:                                              ; preds = %197, %181
  %206 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %207 = load %struct.v4l2_subdev_ir_parameters*, %struct.v4l2_subdev_ir_parameters** %5, align 8
  %208 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @control_rx_enable(%struct.cx23885_dev* %206, i32 %209)
  br label %211

211:                                              ; preds = %205, %119
  %212 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %6, align 8
  %213 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %212, i32 0, i32 0
  %214 = call i32 @mutex_unlock(i32* %213)
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %211, %31, %22
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx23888_ir_rx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqenable_rx(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_rx_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_rx_demodulation_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @rxclk_rx_s_carrier(%struct.cx23885_dev*, i32, i32*) #1

declare dso_local i32 @control_rx_s_carrier_window(%struct.cx23885_dev*, i32, i32*, i32*) #1

declare dso_local i64 @pulse_width_count_to_ns(i32, i32) #1

declare dso_local i64 @rxclk_rx_s_max_pulse_width(%struct.cx23885_dev*, i64, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @filter_rx_s_min_width(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @clock_divider_to_resolution(i32) #1

declare dso_local i32 @control_rx_irq_watermark(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_rx_s_edge_detection(%struct.cx23885_dev*, i32) #1

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
