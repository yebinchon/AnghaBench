; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ad9389b_state = type { %struct.TYPE_2__, i32, i64, i32, %struct.ad9389b_state_edid }
%struct.TYPE_2__ = type { i64 }
%struct.ad9389b_state_edid = type { i32, i64 }

@ad9389b_log_status.states = internal constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)], align 16
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
@ad9389b_log_status.errors = internal constant [16 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"bad receiver BKSV\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Ri mismatch\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Pj mismatch\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"i2c error\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"max repeater cascade exceeded\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"hash check failed\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"too many devices\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"chip revision %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"power %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"%s hotplug, %s Rx Sense, %s EDID (%d block(s))\0A\00", align 1
@MASK_AD9389B_HPD_DETECT = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"detected\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@MASK_AD9389B_MSEN_DETECT = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"%s output %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"DVI-D\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"ad9389b: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"no encryption\00", align 1
@.str.41 = private unnamed_addr constant [60 x i8] c"state: %s, error: %s, detect count: %u, msk/irq: %02x/%02x\0A\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"ad9389b: RGB quantization: %s range\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"limited\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"ad9389b: %s gear %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"automatic\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"ad9389b: CTS %s mode: N %d, CTS %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"ad9389b: VIC: detected %d, sent %d\0A\00", align 1
@V4L2_DV_BT_656_1120 = common dso_local global i64 0, align 8
@.str.50 = private unnamed_addr constant [10 x i8] c"timings: \00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"no timings set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ad9389b_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9389b_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.ad9389b_state*, align 8
  %4 = alloca %struct.ad9389b_state_edid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %12 = call %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev* %11)
  store %struct.ad9389b_state* %12, %struct.ad9389b_state** %3, align 8
  %13 = load %struct.ad9389b_state*, %struct.ad9389b_state** %3, align 8
  %14 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %13, i32 0, i32 4
  store %struct.ad9389b_state_edid* %14, %struct.ad9389b_state_edid** %4, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %16 = load %struct.ad9389b_state*, %struct.ad9389b_state** %3, align 8
  %17 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %18)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %21 = load %struct.ad9389b_state*, %struct.ad9389b_state** %3, align 8
  %22 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)
  %27 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8* %26)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %30 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %29, i32 66)
  %31 = load i32, i32* @MASK_AD9389B_HPD_DETECT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %37 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %36, i32 66)
  %38 = load i32, i32* @MASK_AD9389B_MSEN_DETECT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)
  %43 = load %struct.ad9389b_state_edid*, %struct.ad9389b_state_edid** %4, align 8
  %44 = getelementptr inbounds %struct.ad9389b_state_edid, %struct.ad9389b_state_edid* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0)
  %49 = load %struct.ad9389b_state_edid*, %struct.ad9389b_state_edid** %4, align 8
  %50 = getelementptr inbounds %struct.ad9389b_state_edid, %struct.ad9389b_state_edid* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0), i8* %35, i8* %42, i8* %48, i32 %51)
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %55 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %54, i32 175)
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %61 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %60, i32 161)
  %62 = and i32 %61, 60
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0)
  %66 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* %59, i8* %65)
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %69 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %68, i32 184)
  %70 = and i32 %69, 64
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0)
  %74 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %73)
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %77 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %76, i32 200)
  %78 = and i32 %77, 15
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [16 x i8*], [16 x i8*]* @ad9389b_log_status.states, i64 0, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %83 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %82, i32 200)
  %84 = ashr i32 %83, 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [16 x i8*], [16 x i8*]* @ad9389b_log_status.errors, i64 0, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.ad9389b_state*, %struct.ad9389b_state** %3, align 8
  %89 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %92 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %91, i32 148)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %94 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %93, i32 150)
  %95 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %75, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.41, i64 0, i64 0), i8* %81, i8* %87, i32 %90, i32 %92, i32 %94)
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %97 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %96, i32 152)
  %98 = and i32 %97, 128
  store i32 %98, i32* %5, align 4
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %101 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %100, i32 59)
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)
  %106 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0), i8* %105)
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0)
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %1
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %116 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %115, i32 152)
  %117 = and i32 %116, 112
  %118 = ashr i32 %117, 4
  br label %124

119:                                              ; preds = %1
  %120 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %121 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %120, i32 158)
  %122 = and i32 %121, 14
  %123 = ashr i32 %122, 1
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi i32 [ %118, %114 ], [ %123, %119 ]
  %126 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i8* %111, i32 %125)
  %127 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %128 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %127, i32 175)
  %129 = and i32 %128, 2
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %202

131:                                              ; preds = %124
  %132 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %133 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %132, i32 10)
  %134 = and i32 %133, 128
  store i32 %134, i32* %6, align 4
  %135 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %136 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %135, i32 1)
  %137 = and i32 %136, 15
  %138 = shl i32 %137, 16
  %139 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %140 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %139, i32 2)
  %141 = shl i32 %140, 8
  %142 = or i32 %138, %141
  %143 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %144 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %143, i32 3)
  %145 = or i32 %142, %144
  store i32 %145, i32* %7, align 4
  %146 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %147 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %146, i32 62)
  %148 = ashr i32 %147, 2
  store i32 %148, i32* %8, align 4
  %149 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %150 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %149, i32 61)
  %151 = and i32 %150, 63
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %131
  %155 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %156 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %155, i32 7)
  %157 = and i32 %156, 15
  %158 = shl i32 %157, 16
  %159 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %160 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %159, i32 8)
  %161 = shl i32 %160, 8
  %162 = or i32 %158, %161
  %163 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %164 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %163, i32 9)
  %165 = or i32 %162, %164
  store i32 %165, i32* %10, align 4
  br label %178

166:                                              ; preds = %131
  %167 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %168 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %167, i32 4)
  %169 = and i32 %168, 15
  %170 = shl i32 %169, 16
  %171 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %172 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %171, i32 5)
  %173 = shl i32 %172, 8
  %174 = or i32 %170, %173
  %175 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %176 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %175, i32 6)
  %177 = or i32 %174, %176
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %166, %154
  %179 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %180 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %179, i32 1)
  %181 = and i32 %180, 15
  %182 = shl i32 %181, 16
  %183 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %184 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %183, i32 2)
  %185 = shl i32 %184, 8
  %186 = or i32 %182, %185
  %187 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %188 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %187, i32 3)
  %189 = or i32 %186, %188
  store i32 %189, i32* %7, align 4
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0)
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %190, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i64 0, i64 0), i8* %194, i32 %195, i32 %196)
  %198 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %198, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i64 0, i64 0), i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %178, %124
  %203 = load %struct.ad9389b_state*, %struct.ad9389b_state** %3, align 8
  %204 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @V4L2_DV_BT_656_1120, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %202
  %210 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %211 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ad9389b_state*, %struct.ad9389b_state** %3, align 8
  %214 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %213, i32 0, i32 0
  %215 = call i32 @v4l2_print_dv_timings(i32 %212, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), %struct.TYPE_2__* %214, i32 0)
  br label %219

216:                                              ; preds = %202
  %217 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %218 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_info(%struct.v4l2_subdev* %217, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %209
  ret i32 0
}

declare dso_local %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @ad9389b_rd(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_print_dv_timings(i32, i8*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
