; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7511_state = type { i8*, i8*, i32, i8**, i8*, i64, i32*, %struct.TYPE_2__, i32, i64, %struct.adv7511_state_edid }
%struct.TYPE_2__ = type { i64 }
%struct.adv7511_state_edid = type { i32, i64 }

@adv7511_log_status.states = internal constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"in reset\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"reading EDID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"initializing HDCP\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"HDCP enabled\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"initializing HDCP repeater\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@adv7511_log_status.errors = internal constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"bad receiver BKSV\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Ri mismatch\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Pj mismatch\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"i2c error\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"max repeater cascade exceeded\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"hash check failed\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"too many devices\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"power %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"%s hotplug, %s Rx Sense, %s EDID (%d block(s))\0A\00", align 1
@MASK_ADV7511_HPD_DETECT = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"detected\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@MASK_ADV7511_MSEN_DETECT = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"%s output %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"DVI-D\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.37 = private unnamed_addr constant [60 x i8] c"state: %s, error: %s, detect count: %u, msk/irq: %02x/%02x\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"RGB quantization: %s range\0A\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"limited\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"CTS %s mode: N %d, CTS %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"VIC: detected %d, sent %d\0A\00", align 1
@V4L2_DV_BT_656_1120 = common dso_local global i64 0, align 8
@.str.45 = private unnamed_addr constant [10 x i8] c"timings: \00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"no timings set\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"i2c edid addr: 0x%x\0A\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"i2c cec addr: 0x%x\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"CEC: %s\0A\00", align 1
@ADV7511_MAX_ADDRS = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [27 x i8] c"CEC Logical Address: 0x%x\0A\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"i2c pktmem addr: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv7511_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv7511_state*, align 8
  %5 = alloca %struct.adv7511_state_edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = call %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev* %13)
  store %struct.adv7511_state* %14, %struct.adv7511_state** %4, align 8
  %15 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %16 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %15, i32 0, i32 10
  store %struct.adv7511_state_edid* %16, %struct.adv7511_state_edid** %5, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %19 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)
  %24 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* %23)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = call i32 @adv7511_rd(%struct.v4l2_subdev* %26, i32 66)
  %28 = load i32, i32* @MASK_ADV7511_HPD_DETECT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = call i32 @adv7511_rd(%struct.v4l2_subdev* %33, i32 66)
  %35 = load i32, i32* @MASK_ADV7511_MSEN_DETECT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)
  %40 = load %struct.adv7511_state_edid*, %struct.adv7511_state_edid** %5, align 8
  %41 = getelementptr inbounds %struct.adv7511_state_edid, %struct.adv7511_state_edid* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)
  %46 = load %struct.adv7511_state_edid*, %struct.adv7511_state_edid** %5, align 8
  %47 = getelementptr inbounds %struct.adv7511_state_edid, %struct.adv7511_state_edid* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0), i8* %32, i8* %39, i8* %45, i32 %48)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %52 = call i32 @adv7511_rd(%struct.v4l2_subdev* %51, i32 175)
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %58 = call i32 @adv7511_rd(%struct.v4l2_subdev* %57, i32 161)
  %59 = and i32 %58, 60
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0)
  %63 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8* %56, i8* %62)
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %66 = call i32 @adv7511_rd(%struct.v4l2_subdev* %65, i32 200)
  %67 = and i32 %66, 15
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x i8*], [16 x i8*]* @adv7511_log_status.states, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %72 = call i32 @adv7511_rd(%struct.v4l2_subdev* %71, i32 200)
  %73 = ashr i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x i8*], [16 x i8*]* @adv7511_log_status.errors, i64 0, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %78 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %81 = call i32 @adv7511_rd(%struct.v4l2_subdev* %80, i32 148)
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %83 = call i32 @adv7511_rd(%struct.v4l2_subdev* %82, i32 150)
  %84 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.37, i64 0, i64 0), i8* %70, i8* %76, i32 %79, i32 %81, i32 %83)
  %85 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %87 = call i32 @adv7511_rd(%struct.v4l2_subdev* %86, i32 24)
  %88 = and i32 %87, 128
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0)
  %92 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0), i8* %91)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %94 = call i32 @adv7511_rd(%struct.v4l2_subdev* %93, i32 175)
  %95 = and i32 %94, 2
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %159

97:                                               ; preds = %1
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %99 = call i32 @adv7511_rd(%struct.v4l2_subdev* %98, i32 10)
  %100 = and i32 %99, 128
  store i32 %100, i32* %7, align 4
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %102 = call i32 @adv7511_rd(%struct.v4l2_subdev* %101, i32 1)
  %103 = and i32 %102, 15
  %104 = shl i32 %103, 16
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %106 = call i32 @adv7511_rd(%struct.v4l2_subdev* %105, i32 2)
  %107 = shl i32 %106, 8
  %108 = or i32 %104, %107
  %109 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %110 = call i32 @adv7511_rd(%struct.v4l2_subdev* %109, i32 3)
  %111 = or i32 %108, %110
  store i32 %111, i32* %8, align 4
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %113 = call i32 @adv7511_rd(%struct.v4l2_subdev* %112, i32 62)
  %114 = ashr i32 %113, 2
  store i32 %114, i32* %9, align 4
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %116 = call i32 @adv7511_rd(%struct.v4l2_subdev* %115, i32 61)
  %117 = and i32 %116, 63
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %97
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %122 = call i32 @adv7511_rd(%struct.v4l2_subdev* %121, i32 7)
  %123 = and i32 %122, 15
  %124 = shl i32 %123, 16
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %126 = call i32 @adv7511_rd(%struct.v4l2_subdev* %125, i32 8)
  %127 = shl i32 %126, 8
  %128 = or i32 %124, %127
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %130 = call i32 @adv7511_rd(%struct.v4l2_subdev* %129, i32 9)
  %131 = or i32 %128, %130
  store i32 %131, i32* %11, align 4
  br label %144

132:                                              ; preds = %97
  %133 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %134 = call i32 @adv7511_rd(%struct.v4l2_subdev* %133, i32 4)
  %135 = and i32 %134, 15
  %136 = shl i32 %135, 16
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %138 = call i32 @adv7511_rd(%struct.v4l2_subdev* %137, i32 5)
  %139 = shl i32 %138, 8
  %140 = or i32 %136, %139
  %141 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %142 = call i32 @adv7511_rd(%struct.v4l2_subdev* %141, i32 6)
  %143 = or i32 %140, %142
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %132, %120
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0)
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i8* %149, i32 %150, i32 %151)
  %153 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %158 = call i32 @adv7511_log_infoframes(%struct.v4l2_subdev* %157)
  br label %159

159:                                              ; preds = %144, %1
  %160 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %161 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @V4L2_DV_BT_656_1120, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %168 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %171 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %170, i32 0, i32 7
  %172 = call i32 @v4l2_print_dv_timings(i32 %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), %struct.TYPE_2__* %171, i32 0)
  br label %176

173:                                              ; preds = %159
  %174 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %175 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %166
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %178 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %179 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i8* %180)
  %182 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %183 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  store i32 0, i32* %2, align 4
  br label %240

187:                                              ; preds = %176
  %188 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %189 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %190 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %188, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i64 0, i64 0), i8* %191)
  %193 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %194 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %195 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0)
  %200 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0), i8* %199)
  %201 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %202 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %234

205:                                              ; preds = %187
  store i32 0, i32* %6, align 4
  br label %206

206:                                              ; preds = %230, %205
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @ADV7511_MAX_ADDRS, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %233

210:                                              ; preds = %206
  %211 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %212 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = shl i32 1, %214
  %216 = and i32 %213, %215
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %12, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %210
  %220 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %221 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %222 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %221, i32 0, i32 3
  %223 = load i8**, i8*** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8* %227)
  br label %229

229:                                              ; preds = %219, %210
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  br label %206

233:                                              ; preds = %206
  br label %234

234:                                              ; preds = %233, %187
  %235 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %236 = load %struct.adv7511_state*, %struct.adv7511_state** %4, align 8
  %237 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %236, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %235, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), i8* %238)
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %234, %186
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @adv7511_rd(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @adv7511_log_infoframes(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_print_dv_timings(i32, i8*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
