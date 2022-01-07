; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_get_devcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_get_devcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }

@CAP_TARGET_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Cap: %s=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CAP_TARGET_VERSION\00", align 1
@CAP_TARGET_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"CAP_TARGET_REVISION\00", align 1
@CAP_MAC_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"CAP_MAC_VERSION\00", align 1
@CAP_MAC_REVISION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"CAP_MAC_REVISION\00", align 1
@CAP_PHY_REVISION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"CAP_PHY_REVISION\00", align 1
@CAP_ANALOG_5GHz_REVISION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"CAP_ANALOG_5GHz_REVISION\00", align 1
@CAP_ANALOG_2GHz_REVISION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"CAP_ANALOG_2GHz_REVISION\00", align 1
@CAP_REG_DOMAIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"CAP_REG_DOMAIN\00", align 1
@CAP_REG_CAP_BITS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"CAP_REG_CAP_BITS\00", align 1
@CAP_WIRELESS_MODES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"CAP_WIRELESS_MODES\00", align 1
@CAP_CHAN_SPREAD_SUPPORT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"CAP_CHAN_SPREAD_SUPPORT\00", align 1
@CAP_COMPRESS_SUPPORT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"CAP_COMPRESS_SUPPORT\00", align 1
@CAP_BURST_SUPPORT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"CAP_BURST_SUPPORT\00", align 1
@CAP_FAST_FRAMES_SUPPORT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"CAP_FAST_FRAMES_SUPPORT\00", align 1
@CAP_CHAP_TUNING_SUPPORT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"CAP_CHAP_TUNING_SUPPORT\00", align 1
@CAP_TURBOG_SUPPORT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"CAP_TURBOG_SUPPORT\00", align 1
@CAP_TURBO_PRIME_SUPPORT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"CAP_TURBO_PRIME_SUPPORT\00", align 1
@CAP_DEVICE_TYPE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"CAP_DEVICE_TYPE\00", align 1
@CAP_WME_SUPPORT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"CAP_WME_SUPPORT\00", align 1
@CAP_TOTAL_QUEUES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"CAP_TOTAL_QUEUES\00", align 1
@CAP_CONNECTION_ID_MAX = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"CAP_CONNECTION_ID_MAX\00", align 1
@CAP_LOW_5GHZ_CHAN = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"CAP_LOW_5GHZ_CHAN\00", align 1
@CAP_HIGH_5GHZ_CHAN = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [19 x i8] c"CAP_HIGH_5GHZ_CHAN\00", align 1
@CAP_LOW_2GHZ_CHAN = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"CAP_LOW_2GHZ_CHAN\00", align 1
@CAP_HIGH_2GHZ_CHAN = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"CAP_HIGH_2GHZ_CHAN\00", align 1
@CAP_TWICE_ANTENNAGAIN_5G = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c"CAP_TWICE_ANTENNAGAIN_5G\00", align 1
@CAP_TWICE_ANTENNAGAIN_2G = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [25 x i8] c"CAP_TWICE_ANTENNAGAIN_2G\00", align 1
@CAP_CIPHER_AES_CCM = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [19 x i8] c"CAP_CIPHER_AES_CCM\00", align 1
@CAP_CIPHER_TKIP = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [16 x i8] c"CAP_CIPHER_TKIP\00", align 1
@CAP_MIC_TKIP = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"CAP_MIC_TKIP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*)* @ar5523_get_devcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_get_devcap(%struct.ar5523* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar5523*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar5523* %0, %struct.ar5523** %3, align 8
  br label %6

6:                                                ; preds = %1
  %7 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %8 = load i32, i32* @CAP_TARGET_VERSION, align 4
  %9 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %7, i32 %8, i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %396

14:                                               ; preds = %6
  %15 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %21 = load i32, i32* @CAP_TARGET_REVISION, align 4
  %22 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %20, i32 %21, i32* %5)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %396

27:                                               ; preds = %19
  %28 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %34 = load i32, i32* @CAP_MAC_VERSION, align 4
  %35 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %33, i32 %34, i32* %5)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %396

40:                                               ; preds = %32
  %41 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %47 = load i32, i32* @CAP_MAC_REVISION, align 4
  %48 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %46, i32 %47, i32* %5)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %396

53:                                               ; preds = %45
  %54 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %60 = load i32, i32* @CAP_PHY_REVISION, align 4
  %61 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %59, i32 %60, i32* %5)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %396

66:                                               ; preds = %58
  %67 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %73 = load i32, i32* @CAP_ANALOG_5GHz_REVISION, align 4
  %74 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %72, i32 %73, i32* %5)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %396

79:                                               ; preds = %71
  %80 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %86 = load i32, i32* @CAP_ANALOG_2GHz_REVISION, align 4
  %87 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %85, i32 %86, i32* %5)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %396

92:                                               ; preds = %84
  %93 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %99 = load i32, i32* @CAP_REG_DOMAIN, align 4
  %100 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %98, i32 %99, i32* %5)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %396

105:                                              ; preds = %97
  %106 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %112 = load i32, i32* @CAP_REG_CAP_BITS, align 4
  %113 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %111, i32 %112, i32* %5)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %396

118:                                              ; preds = %110
  %119 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %125 = load i32, i32* @CAP_WIRELESS_MODES, align 4
  %126 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %124, i32 %125, i32* %5)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* %2, align 4
  br label %396

131:                                              ; preds = %123
  %132 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %138 = load i32, i32* @CAP_CHAN_SPREAD_SUPPORT, align 4
  %139 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %137, i32 %138, i32* %5)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %2, align 4
  br label %396

144:                                              ; preds = %136
  %145 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %151 = load i32, i32* @CAP_COMPRESS_SUPPORT, align 4
  %152 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %150, i32 %151, i32* %5)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %2, align 4
  br label %396

157:                                              ; preds = %149
  %158 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %164 = load i32, i32* @CAP_BURST_SUPPORT, align 4
  %165 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %163, i32 %164, i32* %5)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %396

170:                                              ; preds = %162
  %171 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %171, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %170
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %177 = load i32, i32* @CAP_FAST_FRAMES_SUPPORT, align 4
  %178 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %176, i32 %177, i32* %5)
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load i32, i32* %4, align 4
  store i32 %182, i32* %2, align 4
  br label %396

183:                                              ; preds = %175
  %184 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %184, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %183
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %190 = load i32, i32* @CAP_CHAP_TUNING_SUPPORT, align 4
  %191 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %189, i32 %190, i32* %5)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* %4, align 4
  store i32 %195, i32* %2, align 4
  br label %396

196:                                              ; preds = %188
  %197 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %198 = load i32, i32* %5, align 4
  %199 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %197, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %196
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %203 = load i32, i32* @CAP_TURBOG_SUPPORT, align 4
  %204 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %202, i32 %203, i32* %5)
  store i32 %204, i32* %4, align 4
  %205 = load i32, i32* %4, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i32, i32* %4, align 4
  store i32 %208, i32* %2, align 4
  br label %396

209:                                              ; preds = %201
  %210 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %211 = load i32, i32* %5, align 4
  %212 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %209
  br label %214

214:                                              ; preds = %213
  %215 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %216 = load i32, i32* @CAP_TURBO_PRIME_SUPPORT, align 4
  %217 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %215, i32 %216, i32* %5)
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i32, i32* %4, align 4
  store i32 %221, i32* %2, align 4
  br label %396

222:                                              ; preds = %214
  %223 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %224 = load i32, i32* %5, align 4
  %225 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %222
  br label %227

227:                                              ; preds = %226
  %228 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %229 = load i32, i32* @CAP_DEVICE_TYPE, align 4
  %230 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %228, i32 %229, i32* %5)
  store i32 %230, i32* %4, align 4
  %231 = load i32, i32* %4, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  %234 = load i32, i32* %4, align 4
  store i32 %234, i32* %2, align 4
  br label %396

235:                                              ; preds = %227
  %236 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %237 = load i32, i32* %5, align 4
  %238 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %236, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %235
  br label %240

240:                                              ; preds = %239
  %241 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %242 = load i32, i32* @CAP_WME_SUPPORT, align 4
  %243 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %241, i32 %242, i32* %5)
  store i32 %243, i32* %4, align 4
  %244 = load i32, i32* %4, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32, i32* %4, align 4
  store i32 %247, i32* %2, align 4
  br label %396

248:                                              ; preds = %240
  %249 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %250 = load i32, i32* %5, align 4
  %251 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %248
  br label %253

253:                                              ; preds = %252
  %254 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %255 = load i32, i32* @CAP_TOTAL_QUEUES, align 4
  %256 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %254, i32 %255, i32* %5)
  store i32 %256, i32* %4, align 4
  %257 = load i32, i32* %4, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = load i32, i32* %4, align 4
  store i32 %260, i32* %2, align 4
  br label %396

261:                                              ; preds = %253
  %262 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %263 = load i32, i32* %5, align 4
  %264 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %262, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %261
  br label %266

266:                                              ; preds = %265
  %267 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %268 = load i32, i32* @CAP_CONNECTION_ID_MAX, align 4
  %269 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %267, i32 %268, i32* %5)
  store i32 %269, i32* %4, align 4
  %270 = load i32, i32* %4, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %266
  %273 = load i32, i32* %4, align 4
  store i32 %273, i32* %2, align 4
  br label %396

274:                                              ; preds = %266
  %275 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %276 = load i32, i32* %5, align 4
  %277 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %275, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %276)
  br label %278

278:                                              ; preds = %274
  br label %279

279:                                              ; preds = %278
  %280 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %281 = load i32, i32* @CAP_LOW_5GHZ_CHAN, align 4
  %282 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %280, i32 %281, i32* %5)
  store i32 %282, i32* %4, align 4
  %283 = load i32, i32* %4, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %279
  %286 = load i32, i32* %4, align 4
  store i32 %286, i32* %2, align 4
  br label %396

287:                                              ; preds = %279
  %288 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %289 = load i32, i32* %5, align 4
  %290 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %288, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %289)
  br label %291

291:                                              ; preds = %287
  br label %292

292:                                              ; preds = %291
  %293 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %294 = load i32, i32* @CAP_HIGH_5GHZ_CHAN, align 4
  %295 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %293, i32 %294, i32* %5)
  store i32 %295, i32* %4, align 4
  %296 = load i32, i32* %4, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %292
  %299 = load i32, i32* %4, align 4
  store i32 %299, i32* %2, align 4
  br label %396

300:                                              ; preds = %292
  %301 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %302 = load i32, i32* %5, align 4
  %303 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %301, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %300
  br label %305

305:                                              ; preds = %304
  %306 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %307 = load i32, i32* @CAP_LOW_2GHZ_CHAN, align 4
  %308 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %306, i32 %307, i32* %5)
  store i32 %308, i32* %4, align 4
  %309 = load i32, i32* %4, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %305
  %312 = load i32, i32* %4, align 4
  store i32 %312, i32* %2, align 4
  br label %396

313:                                              ; preds = %305
  %314 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %315 = load i32, i32* %5, align 4
  %316 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %314, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i32 %315)
  br label %317

317:                                              ; preds = %313
  br label %318

318:                                              ; preds = %317
  %319 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %320 = load i32, i32* @CAP_HIGH_2GHZ_CHAN, align 4
  %321 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %319, i32 %320, i32* %5)
  store i32 %321, i32* %4, align 4
  %322 = load i32, i32* %4, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %318
  %325 = load i32, i32* %4, align 4
  store i32 %325, i32* %2, align 4
  br label %396

326:                                              ; preds = %318
  %327 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %328 = load i32, i32* %5, align 4
  %329 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %327, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %328)
  br label %330

330:                                              ; preds = %326
  br label %331

331:                                              ; preds = %330
  %332 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %333 = load i32, i32* @CAP_TWICE_ANTENNAGAIN_5G, align 4
  %334 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %332, i32 %333, i32* %5)
  store i32 %334, i32* %4, align 4
  %335 = load i32, i32* %4, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %331
  %338 = load i32, i32* %4, align 4
  store i32 %338, i32* %2, align 4
  br label %396

339:                                              ; preds = %331
  %340 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %341 = load i32, i32* %5, align 4
  %342 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %340, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %339
  br label %344

344:                                              ; preds = %343
  %345 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %346 = load i32, i32* @CAP_TWICE_ANTENNAGAIN_2G, align 4
  %347 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %345, i32 %346, i32* %5)
  store i32 %347, i32* %4, align 4
  %348 = load i32, i32* %4, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %344
  %351 = load i32, i32* %4, align 4
  store i32 %351, i32* %2, align 4
  br label %396

352:                                              ; preds = %344
  %353 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %354 = load i32, i32* %5, align 4
  %355 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %353, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i32 %354)
  br label %356

356:                                              ; preds = %352
  br label %357

357:                                              ; preds = %356
  %358 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %359 = load i32, i32* @CAP_CIPHER_AES_CCM, align 4
  %360 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %358, i32 %359, i32* %5)
  store i32 %360, i32* %4, align 4
  %361 = load i32, i32* %4, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %357
  %364 = load i32, i32* %4, align 4
  store i32 %364, i32* %2, align 4
  br label %396

365:                                              ; preds = %357
  %366 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %367 = load i32, i32* %5, align 4
  %368 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %366, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i32 %367)
  br label %369

369:                                              ; preds = %365
  br label %370

370:                                              ; preds = %369
  %371 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %372 = load i32, i32* @CAP_CIPHER_TKIP, align 4
  %373 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %371, i32 %372, i32* %5)
  store i32 %373, i32* %4, align 4
  %374 = load i32, i32* %4, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  %377 = load i32, i32* %4, align 4
  store i32 %377, i32* %2, align 4
  br label %396

378:                                              ; preds = %370
  %379 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %380 = load i32, i32* %5, align 4
  %381 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %379, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32 %380)
  br label %382

382:                                              ; preds = %378
  br label %383

383:                                              ; preds = %382
  %384 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %385 = load i32, i32* @CAP_MIC_TKIP, align 4
  %386 = call i32 (%struct.ar5523*, i32, i32*, ...) bitcast (i32 (...)* @ar5523_get_capability to i32 (%struct.ar5523*, i32, i32*, ...)*)(%struct.ar5523* %384, i32 %385, i32* %5)
  store i32 %386, i32* %4, align 4
  %387 = load i32, i32* %4, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %383
  %390 = load i32, i32* %4, align 4
  store i32 %390, i32* %2, align 4
  br label %396

391:                                              ; preds = %383
  %392 = load %struct.ar5523*, %struct.ar5523** %3, align 8
  %393 = load i32, i32* %5, align 4
  %394 = call i32 (%struct.ar5523*, i8*, i8*, i32, ...) bitcast (i32 (...)* @ar5523_info to i32 (%struct.ar5523*, i8*, i8*, i32, ...)*)(%struct.ar5523* %392, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 %393)
  br label %395

395:                                              ; preds = %391
  store i32 0, i32* %2, align 4
  br label %396

396:                                              ; preds = %395, %389, %376, %363, %350, %337, %324, %311, %298, %285, %272, %259, %246, %233, %220, %207, %194, %181, %168, %155, %142, %129, %116, %103, %90, %77, %64, %51, %38, %25, %12
  %397 = load i32, i32* %2, align 4
  ret i32 %397
}

declare dso_local i32 @ar5523_get_capability(...) #1

declare dso_local i32 @ar5523_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
