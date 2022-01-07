; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx23888_ir_state = type { %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32 }

@CX23888_IR_CNTRL_REG = common dso_local global i32 0, align 4
@CX23888_IR_TXCLK_REG = common dso_local global i32 0, align 4
@TXCLK_TCD = common dso_local global i32 0, align 4
@CX23888_IR_RXCLK_REG = common dso_local global i32 0, align 4
@RXCLK_RCD = common dso_local global i32 0, align 4
@CX23888_IR_CDUTY_REG = common dso_local global i32 0, align 4
@CDUTY_CDC = common dso_local global i32 0, align 4
@CX23888_IR_STATS_REG = common dso_local global i32 0, align 4
@CX23888_IR_IRQEN_REG = common dso_local global i32 0, align 4
@CX23888_IR_FILTR_REG = common dso_local global i32 0, align 4
@FILTR_LPF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"IR Receiver:\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\09Enabled:                           %s\0A\00", align 1
@CNTRL_RXE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\09Demodulation from a carrier:       %s\0A\00", align 1
@CNTRL_DMD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\09FIFO:                              %s\0A\00", align 1
@CNTRL_RFE = common dso_local global i32 0, align 4
@CNTRL_EDG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"falling edge\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"rising edge\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"rising & falling edges\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"??? edge\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\09Pulse timers' start/stop trigger:  %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"\09FIFO data on pulse timer overflow: %s\0A\00", align 1
@CNTRL_R = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"not loaded\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"overflow marker\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"\09FIFO interrupt watermark:          %s\0A\00", align 1
@CNTRL_RIC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"not empty\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"half full or greater\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"\09Loopback mode:                     %s\0A\00", align 1
@CNTRL_LBM = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"loopback active\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"normal receive\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"\09Expected carrier (16 clocks):      %u Hz\0A\00", align 1
@CNTRL_WIN = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [65 x i8] c"\09Next carrier edge window:\09    16 clocks -%1d/+%1d, %u to %u Hz\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"\09Max measurable pulse width:        %u us, %llu ns\0A\00", align 1
@FIFO_RXTX = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [40 x i8] c"\09Low pass filter:                   %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"\09Min acceptable pulse width (LPF):  %u us, %u ns\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"\09Pulse width timer timed-out:       %s\0A\00", align 1
@STATS_RTO = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [40 x i8] c"\09Pulse width timer time-out intr:   %s\0A\00", align 1
@IRQEN_RTE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [40 x i8] c"\09FIFO overrun:                      %s\0A\00", align 1
@STATS_ROR = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [40 x i8] c"\09FIFO overrun interrupt:            %s\0A\00", align 1
@IRQEN_ROE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [40 x i8] c"\09Busy:                              %s\0A\00", align 1
@STATS_RBY = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [40 x i8] c"\09FIFO service requested:            %s\0A\00", align 1
@STATS_RSR = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [40 x i8] c"\09FIFO service request interrupt:    %s\0A\00", align 1
@IRQEN_RSE = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [17 x i8] c"IR Transmitter:\0A\00", align 1
@CNTRL_TXE = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [40 x i8] c"\09Modulation onto a carrier:         %s\0A\00", align 1
@CNTRL_MOD = common dso_local global i32 0, align 4
@CNTRL_TFE = common dso_local global i32 0, align 4
@CNTRL_TIC = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [18 x i8] c"half full or less\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"\09Output pin level inversion         %s\0A\00", align 1
@CNTRL_IVO = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [40 x i8] c"\09Carrier polarity:                  %s\0A\00", align 1
@CNTRL_CPL = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [25 x i8] c"space:burst mark:noburst\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"space:noburst mark:burst\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"\09Carrier (16 clocks):               %u Hz\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"\09Carrier duty cycle:                %2u/16\0A\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"\09Max pulse width:                   %u us, %llu ns\0A\00", align 1
@STATS_TBY = common dso_local global i32 0, align 4
@STATS_TSR = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @cx23888_ir_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23888_ir_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.cx23888_ir_state*, align 8
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %16 = call %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev* %15)
  store %struct.cx23888_ir_state* %16, %struct.cx23888_ir_state** %3, align 8
  %17 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %3, align 8
  %18 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %17, i32 0, i32 0
  %19 = load %struct.cx23885_dev*, %struct.cx23885_dev** %18, align 8
  store %struct.cx23885_dev* %19, %struct.cx23885_dev** %4, align 8
  %20 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %21 = load i32, i32* @CX23888_IR_CNTRL_REG, align 4
  %22 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %24 = load i32, i32* @CX23888_IR_TXCLK_REG, align 4
  %25 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %23, i32 %24)
  %26 = load i32, i32* @TXCLK_TCD, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %29 = load i32, i32* @CX23888_IR_RXCLK_REG, align 4
  %30 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %28, i32 %29)
  %31 = load i32, i32* @RXCLK_RCD, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %34 = load i32, i32* @CX23888_IR_CDUTY_REG, align 4
  %35 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %33, i32 %34)
  %36 = load i32, i32* @CDUTY_CDC, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %39 = load i32, i32* @CX23888_IR_STATS_REG, align 4
  %40 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %42 = load i32, i32* @CX23888_IR_IRQEN_REG, align 4
  %43 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %45 = load i32, i32* @CX23888_IR_FILTR_REG, align 4
  %46 = call i32 @cx23888_ir_read4(%struct.cx23885_dev* %44, i32 %45)
  %47 = load i32, i32* @FILTR_LPF, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %50 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @CNTRL_RXE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %58 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @CNTRL_DMD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %66 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @CNTRL_RFE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %74 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @CNTRL_EDG, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %82 [
    i32 133, label %78
    i32 134, label %79
    i32 132, label %80
    i32 135, label %81
  ]

78:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %83

79:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %83

80:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %83

81:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %83

82:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %83

83:                                               ; preds = %82, %81, %80, %79, %78
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* %85)
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @CNTRL_R, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)
  %94 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8* %93)
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @CNTRL_RIC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)
  %102 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* %101)
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @CNTRL_LBM, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)
  %110 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i8* %109)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @CNTRL_DMD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %83
  %116 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i8* @clock_divider_to_carrier_freq(i32 %117)
  %119 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i8* %118)
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @CNTRL_WIN, align 4
  %122 = and i32 %120, %121
  switch i32 %122, label %127 [
    i32 131, label %123
    i32 129, label %124
    i32 130, label %125
    i32 128, label %126
  ]

123:                                              ; preds = %115
  store i32 3, i32* %6, align 4
  store i32 3, i32* %7, align 4
  br label %128

124:                                              ; preds = %115
  store i32 4, i32* %6, align 4
  store i32 3, i32* %7, align 4
  br label %128

125:                                              ; preds = %115
  store i32 3, i32* %6, align 4
  store i32 4, i32* %7, align 4
  br label %128

126:                                              ; preds = %115
  store i32 4, i32* %6, align 4
  store i32 4, i32* %7, align 4
  br label %128

127:                                              ; preds = %115
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %126, %125, %124, %123
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 16, %133
  %135 = call i32 @clock_divider_to_freq(i32 %132, i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %6, align 4
  %138 = sub nsw i32 16, %137
  %139 = call i32 @clock_divider_to_freq(i32 %136, i32 %138)
  %140 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %129, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), i32 %130, i32 %131, i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %128, %83
  %142 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %143 = load i32, i32* @FIFO_RXTX, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @pulse_width_count_to_us(i32 %143, i32 %144)
  %146 = load i32, i32* @FIFO_RXTX, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @pulse_width_count_to_ns(i32 %146, i32 %147)
  %149 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %142, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0), i32 %145, i32 %148)
  %150 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %155 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %150, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %141
  %159 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @lpf_count_to_us(i32 %160)
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @lpf_count_to_ns(i32 %162)
  %164 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %159, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i32 %161, i32 %163)
  br label %165

165:                                              ; preds = %158, %141
  %166 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @STATS_RTO, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %173 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %166, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* %172)
  %174 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* @IRQEN_RTE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %181 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %174, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i8* %180)
  %182 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* @STATS_ROR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %189 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %182, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* %188)
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @IRQEN_ROE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %197 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %190, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* %196)
  %198 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @STATS_RBY, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %205 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %198, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* %204)
  %206 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @STATS_RSR, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %213 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %206, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* %212)
  %214 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* @IRQEN_RSE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %221 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %214, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* %220)
  %222 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %223 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %222, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  %224 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @CNTRL_TXE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %231 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %224, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %230)
  %232 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* @CNTRL_MOD, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %239 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %232, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* %238)
  %240 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @CNTRL_TFE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %247 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %240, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %246)
  %248 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @CNTRL_TIC, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0)
  %255 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %248, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* %254)
  %256 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @CNTRL_IVO, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %263 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %256, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* %262)
  %264 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %265 = load i32, i32* %8, align 4
  %266 = load i32, i32* @CNTRL_CPL, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0)
  %271 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %264, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* %270)
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @CNTRL_MOD, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %165
  %277 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %278 = load i32, i32* %9, align 4
  %279 = call i8* @clock_divider_to_carrier_freq(i32 %278)
  %280 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %277, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0), i8* %279)
  %281 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %282 = load i32, i32* %11, align 4
  %283 = add nsw i32 %282, 1
  %284 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %281, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %276, %165
  %286 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %287 = load i32, i32* @FIFO_RXTX, align 4
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @pulse_width_count_to_us(i32 %287, i32 %288)
  %290 = load i32, i32* @FIFO_RXTX, align 4
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @pulse_width_count_to_ns(i32 %290, i32 %291)
  %293 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %286, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.43, i64 0, i64 0), i32 %289, i32 %292)
  %294 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* @STATS_TBY, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %301 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %294, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* %300)
  %302 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* @STATS_TSR, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %309 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %302, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* %308)
  %310 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* @IRQEN_TSE, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  %315 = zext i1 %314 to i64
  %316 = select i1 %314, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %317 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %310, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* %316)
  ret i32 0
}

declare dso_local %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx23888_ir_read4(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i8* @clock_divider_to_carrier_freq(i32) #1

declare dso_local i32 @clock_divider_to_freq(i32, i32) #1

declare dso_local i32 @pulse_width_count_to_us(i32, i32) #1

declare dso_local i32 @pulse_width_count_to_ns(i32, i32) #1

declare dso_local i32 @lpf_count_to_us(i32) #1

declare dso_local i32 @lpf_count_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
