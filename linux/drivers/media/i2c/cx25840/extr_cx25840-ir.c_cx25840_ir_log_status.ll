; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-ir.c_cx25840_ir_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@CX25840_IR_CNTRL_REG = common dso_local global i32 0, align 4
@CX25840_IR_TXCLK_REG = common dso_local global i32 0, align 4
@TXCLK_TCD = common dso_local global i32 0, align 4
@CX25840_IR_RXCLK_REG = common dso_local global i32 0, align 4
@RXCLK_RCD = common dso_local global i32 0, align 4
@CX25840_IR_CDUTY_REG = common dso_local global i32 0, align 4
@CDUTY_CDC = common dso_local global i32 0, align 4
@CX25840_IR_STATS_REG = common dso_local global i32 0, align 4
@CX25840_IR_IRQEN_REG = common dso_local global i32 0, align 4
@IRQEN_MSK = common dso_local global i32 0, align 4
@CX25840_IR_FILTR_REG = common dso_local global i32 0, align 4
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
@.str.37 = private unnamed_addr constant [40 x i8] c"\09Carrier polarity:                  %s\0A\00", align 1
@CNTRL_CPL = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [25 x i8] c"space:burst mark:noburst\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"space:noburst mark:burst\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"\09Carrier (16 clocks):               %u Hz\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"\09Carrier duty cycle:                %2u/16\0A\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"\09Max pulse width:                   %u us, %llu ns\0A\00", align 1
@STATS_TBY = common dso_local global i32 0, align 4
@STATS_TSR = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_ir_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.cx25840_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %17 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %16)
  store %struct.cx25840_state* %17, %struct.cx25840_state** %4, align 8
  %18 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %19 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %18, i32 0, i32 0
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %5, align 8
  %21 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %22 = call i64 @is_cx23888(%struct.cx25840_state* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %328

25:                                               ; preds = %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @CX25840_IR_CNTRL_REG, align 4
  %28 = call i32 @cx25840_read4(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @CX25840_IR_TXCLK_REG, align 4
  %31 = call i32 @cx25840_read4(%struct.i2c_client* %29, i32 %30)
  %32 = load i32, i32* @TXCLK_TCD, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = load i32, i32* @CX25840_IR_RXCLK_REG, align 4
  %36 = call i32 @cx25840_read4(%struct.i2c_client* %34, i32 %35)
  %37 = load i32, i32* @RXCLK_RCD, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = load i32, i32* @CX25840_IR_CDUTY_REG, align 4
  %41 = call i32 @cx25840_read4(%struct.i2c_client* %39, i32 %40)
  %42 = load i32, i32* @CDUTY_CDC, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = load i32, i32* @CX25840_IR_STATS_REG, align 4
  %46 = call i32 @cx25840_read4(%struct.i2c_client* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %48 = load i32, i32* @CX25840_IR_IRQEN_REG, align 4
  %49 = call i32 @cx25840_read4(%struct.i2c_client* %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %51 = call i64 @is_cx23885(%struct.cx25840_state* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %25
  %54 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %55 = call i64 @is_cx23887(%struct.cx25840_state* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %25
  %58 = load i32, i32* @IRQEN_MSK, align 4
  %59 = load i32, i32* %14, align 4
  %60 = xor i32 %59, %58
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = load i32, i32* @CX25840_IR_FILTR_REG, align 4
  %64 = call i32 @cx25840_read4(%struct.i2c_client* %62, i32 %63)
  %65 = load i32, i32* @FILTR_LPF, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %15, align 4
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %68 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @CNTRL_RXE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %76 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @CNTRL_DMD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %84 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @CNTRL_RFE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %92 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @CNTRL_EDG, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %100 [
    i32 133, label %96
    i32 134, label %97
    i32 132, label %98
    i32 135, label %99
  ]

96:                                               ; preds = %61
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %101

97:                                               ; preds = %61
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %101

98:                                               ; preds = %61
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %101

99:                                               ; preds = %61
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %101

100:                                              ; preds = %61
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %101

101:                                              ; preds = %100, %99, %98, %97, %96
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* %103)
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @CNTRL_R, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)
  %112 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8* %111)
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @CNTRL_RIC, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)
  %120 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %113, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* %119)
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @CNTRL_LBM, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0)
  %128 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @CNTRL_DMD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %101
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i8* @clock_divider_to_carrier_freq(i32 %135)
  %137 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %134, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i8* %136)
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @CNTRL_WIN, align 4
  %140 = and i32 %138, %139
  switch i32 %140, label %145 [
    i32 131, label %141
    i32 129, label %142
    i32 130, label %143
    i32 128, label %144
  ]

141:                                              ; preds = %133
  store i32 3, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %146

142:                                              ; preds = %133
  store i32 4, i32* %7, align 4
  store i32 3, i32* %8, align 4
  br label %146

143:                                              ; preds = %133
  store i32 3, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %146

144:                                              ; preds = %133
  store i32 4, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %146

145:                                              ; preds = %133
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %145, %144, %143, %142, %141
  %147 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 16, %151
  %153 = call i32 @clock_divider_to_freq(i32 %150, i32 %152)
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %7, align 4
  %156 = sub nsw i32 16, %155
  %157 = call i32 @clock_divider_to_freq(i32 %154, i32 %156)
  %158 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %147, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), i32 %148, i32 %149, i32 %153, i32 %157)
  br label %159

159:                                              ; preds = %146, %101
  %160 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %161 = load i32, i32* @FIFO_RXTX, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @pulse_width_count_to_us(i32 %161, i32 %162)
  %164 = load i32, i32* @FIFO_RXTX, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @pulse_width_count_to_ns(i32 %164, i32 %165)
  %167 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %160, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0), i32 %163, i32 %166)
  %168 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %173 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %168, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %159
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @lpf_count_to_us(i32 %178)
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @lpf_count_to_ns(i32 %180)
  %182 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %177, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i32 %179, i32 %181)
  br label %183

183:                                              ; preds = %176, %159
  %184 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @STATS_RTO, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %191 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %184, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i8* %190)
  %192 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @IRQEN_RTE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %199 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %192, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i8* %198)
  %200 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* @STATS_ROR, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %207 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %200, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* %206)
  %208 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @IRQEN_ROE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %215 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %208, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* %214)
  %216 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* @STATS_RBY, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %223 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %216, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* %222)
  %224 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* @STATS_RSR, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %231 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %224, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* %230)
  %232 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* @IRQEN_RSE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %239 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %232, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* %238)
  %240 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %241 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %240, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  %242 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @CNTRL_TXE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %249 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %242, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %248)
  %250 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* @CNTRL_MOD, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %257 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %250, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* %256)
  %258 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* @CNTRL_TFE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %265 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %258, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %264)
  %266 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* @CNTRL_TIC, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0)
  %273 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %266, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* %272)
  %274 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* @CNTRL_CPL, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0)
  %281 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %274, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* %280)
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* @CNTRL_MOD, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %183
  %287 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %288 = load i32, i32* %10, align 4
  %289 = call i8* @clock_divider_to_carrier_freq(i32 %288)
  %290 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %287, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i64 0, i64 0), i8* %289)
  %291 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %292 = load i32, i32* %12, align 4
  %293 = add nsw i32 %292, 1
  %294 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %291, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %286, %183
  %296 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %297 = load i32, i32* @FIFO_RXTX, align 4
  %298 = load i32, i32* %10, align 4
  %299 = call i32 @pulse_width_count_to_us(i32 %297, i32 %298)
  %300 = load i32, i32* @FIFO_RXTX, align 4
  %301 = load i32, i32* %10, align 4
  %302 = call i32 @pulse_width_count_to_ns(i32 %300, i32 %301)
  %303 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %296, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.42, i64 0, i64 0), i32 %299, i32 %302)
  %304 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %305 = load i32, i32* %13, align 4
  %306 = load i32, i32* @STATS_TBY, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %311 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %304, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* %310)
  %312 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* @STATS_TSR, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  %317 = zext i1 %316 to i64
  %318 = select i1 %316, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %319 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %312, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* %318)
  %320 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* @IRQEN_TSE, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %327 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %320, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* %326)
  store i32 0, i32* %2, align 4
  br label %328

328:                                              ; preds = %295, %24
  %329 = load i32, i32* %2, align 4
  ret i32 %329
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx23888(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i64 @is_cx23885(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx23887(%struct.cx25840_state*) #1

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
