; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_startup_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_startup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { i64, i64, i64*, i64, i8*, i64, i8*, i8*, i64, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.at76_card_config, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.at76_card_config = type { i8*, i32, i32, i32, i64, i64, i8*, i32, i32, i32, i64, i32, i32, i8*, i8*, i64 }

@DBG_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%s param: ssid %.*s (%*phD) mode %s ch %d wep %s key %d keylen %d\00", align 1
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"adhoc\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"infra\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"%s param: preamble %s rts %d retry %d frag %d txrate %s auth_mode %d\00", align 1
@preambles = common dso_local global i32* null, align 8
@TX_RATE_1MBIT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"1MBit\00", align 1
@TX_RATE_2MBIT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"2MBit\00", align 1
@TX_RATE_5_5MBIT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"5.5MBit\00", align 1
@TX_RATE_11MBIT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"11MBit\00", align 1
@TX_RATE_AUTO = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"%s param: pm_mode %d pm_period %d auth_mode %s scan_times %d %d scan_mode %s\00", align 1
@WLAN_AUTH_OPEN = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"shared_secret\00", align 1
@SCAN_TYPE_ACTIVE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@WEP_SMALL_KEY_LEN = common dso_local global i64 0, align 8
@hw_rates = common dso_local global i32 0, align 4
@CMD_STARTUP = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [34 x i8] c"at76_set_card_command failed: %d\0A\00", align 1
@CMD_RADIO_ON = common dso_local global i32 0, align 4
@at76_debug = common dso_local global i32 0, align 4
@DBG_MIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at76_priv*)* @at76_startup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_startup_device(%struct.at76_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at76_priv*, align 8
  %4 = alloca %struct.at76_card_config*, align 8
  %5 = alloca i32, align 4
  store %struct.at76_priv* %0, %struct.at76_priv** %3, align 8
  %6 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %7 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %6, i32 0, i32 14
  store %struct.at76_card_config* %7, %struct.at76_card_config** %4, align 8
  %8 = load i32, i32* @DBG_PARAMS, align 4
  %9 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %10 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %9, i32 0, i32 13
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wiphy_name(i32 %13)
  %15 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %16 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %15, i32 0, i32 18
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %19 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %18, i32 0, i32 19
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %22 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %23 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %26 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IW_MODE_ADHOC, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %33 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %32, i32 0, i32 21
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %36 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %35, i32 0, i32 20
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %41 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %42 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %45 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %48 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32, i8*, i32, i32, i32, ...) @at76_dbg(i32 %8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %21, i32 %24, i8* %31, i32 %34, i8* %40, i64 %43, i64 %51)
  %53 = load i32, i32* @DBG_PARAMS, align 4
  %54 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %55 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %54, i32 0, i32 13
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wiphy_name(i32 %58)
  %60 = load i32*, i32** @preambles, align 8
  %61 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %62 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %67 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %70 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %73 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %76 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TX_RATE_1MBIT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %1
  br label %116

81:                                               ; preds = %1
  %82 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %83 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TX_RATE_2MBIT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %114

88:                                               ; preds = %81
  %89 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %90 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TX_RATE_5_5MBIT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %112

95:                                               ; preds = %88
  %96 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %97 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TX_RATE_11MBIT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %110

102:                                              ; preds = %95
  %103 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %104 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TX_RATE_AUTO, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)
  br label %110

110:                                              ; preds = %102, %101
  %111 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %101 ], [ %109, %102 ]
  br label %112

112:                                              ; preds = %110, %94
  %113 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %94 ], [ %111, %110 ]
  br label %114

114:                                              ; preds = %112, %87
  %115 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %87 ], [ %113, %112 ]
  br label %116

116:                                              ; preds = %114, %80
  %117 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %80 ], [ %115, %114 ]
  %118 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %119 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %118, i32 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i32, i8*, i32, i32, i32, ...) @at76_dbg(i32 %53, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %59, i32 %65, i32 %68, i8* %71, i32 %74, i8* %117, i8* %120)
  %122 = load i32, i32* @DBG_PARAMS, align 4
  %123 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %124 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %123, i32 0, i32 13
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @wiphy_name(i32 %127)
  %129 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %130 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %129, i32 0, i32 24
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %133 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %132, i32 0, i32 23
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %136 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %135, i32 0, i32 6
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* @WLAN_AUTH_OPEN, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = icmp eq i8* %137, %139
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0)
  %143 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %144 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %143, i32 0, i32 22
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %147 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %146, i32 0, i32 7
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %150 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SCAN_TYPE_ACTIVE, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0)
  %156 = call i32 (i32, i8*, i32, i32, i32, ...) @at76_dbg(i32 %122, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i64 0, i64 0), i32 %128, i32 %131, i32 %134, i8* %142, i32 %145, i8* %148, i8* %155)
  %157 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %158 = call i32 @memset(%struct.at76_card_config* %157, i32 0, i32 104)
  %159 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %160 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %159, i32 0, i32 15
  store i64 0, i64* %160, align 8
  %161 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %162 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %161, i32 0, i32 4
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %165 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  %166 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %167 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %166, i32 0, i32 20
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %116
  %171 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %172 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  %174 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %175 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i64, i64* %173, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @WEP_SMALL_KEY_LEN, align 8
  %180 = icmp sgt i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %183 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %182, i32 0, i32 1
  store i32 2, i32* %183, align 8
  br label %187

184:                                              ; preds = %170
  %185 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %186 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %185, i32 0, i32 1
  store i32 1, i32* %186, align 8
  br label %187

187:                                              ; preds = %184, %181
  %188 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %189 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %188, i32 0, i32 2
  store i32 1, i32* %189, align 4
  br label %195

190:                                              ; preds = %116
  %191 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %192 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %191, i32 0, i32 2
  store i32 0, i32* %192, align 4
  %193 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %194 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %193, i32 0, i32 1
  store i32 0, i32* %194, align 8
  br label %195

195:                                              ; preds = %190, %187
  %196 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %197 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %196, i32 0, i32 10
  %198 = load i32, i32* %197, align 4
  %199 = call i8* @cpu_to_le16(i32 %198)
  %200 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %201 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %200, i32 0, i32 14
  store i8* %199, i8** %201, align 8
  %202 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %203 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %202, i32 0, i32 11
  %204 = load i32, i32* %203, align 8
  %205 = call i8* @cpu_to_le16(i32 %204)
  %206 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %207 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %206, i32 0, i32 13
  store i8* %205, i8** %207, align 8
  %208 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %209 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %208, i32 0, i32 12
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @hw_rates, align 4
  %212 = call i32 @memcpy(i32 %210, i32 %211, i32 4)
  %213 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %214 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @TX_RATE_AUTO, align 8
  %217 = icmp eq i64 %215, %216
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i32 1, i32 0
  %220 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %221 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 8
  %222 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %223 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %222, i32 0, i32 21
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %226 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %225, i32 0, i32 11
  store i32 %224, i32* %226, align 8
  %227 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %228 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %227, i32 0, i32 20
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %231 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %230, i32 0, i32 10
  store i64 %229, i64* %231, align 8
  %232 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %233 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %236 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %235, i32 0, i32 19
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %239 = call i32 @memcpy(i32 %234, i32 %237, i32 %238)
  %240 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %241 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %240, i32 0, i32 18
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %244 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %243, i32 0, i32 8
  store i32 %242, i32* %244, align 4
  %245 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %246 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %249 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %248, i32 0, i32 4
  store i64 %247, i64* %249, align 8
  %250 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %251 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %254 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %253, i32 0, i32 17
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @memcpy(i32 %252, i32 %255, i32 4)
  %257 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %258 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %261 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %260, i32 0, i32 5
  store i64 %259, i64* %261, align 8
  %262 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %263 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %262, i32 0, i32 16
  %264 = load i32, i32* %263, align 4
  %265 = call i8* @cpu_to_le16(i32 %264)
  %266 = load %struct.at76_card_config*, %struct.at76_card_config** %4, align 8
  %267 = getelementptr inbounds %struct.at76_card_config, %struct.at76_card_config* %266, i32 0, i32 6
  store i8* %265, i8** %267, align 8
  %268 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %269 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %268, i32 0, i32 15
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @CMD_STARTUP, align 4
  %272 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %273 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %272, i32 0, i32 14
  %274 = call i32 @at76_set_card_command(i32 %270, i32 %271, %struct.at76_card_config* %273, i32 104)
  store i32 %274, i32* %5, align 4
  %275 = load i32, i32* %5, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %195
  %278 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %279 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %278, i32 0, i32 13
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @wiphy_err(i32 %282, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %283)
  %285 = load i32, i32* %5, align 4
  store i32 %285, i32* %2, align 4
  br label %375

286:                                              ; preds = %195
  %287 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %288 = load i32, i32* @CMD_STARTUP, align 4
  %289 = call i32 @at76_wait_completion(%struct.at76_priv* %287, i32 %288)
  %290 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %291 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %290, i32 0, i32 12
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @eth_zero_addr(i32 %292)
  %294 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %295 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %294, i32 0, i32 9
  store i32 0, i32* %295, align 8
  %296 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %297 = call i32 @at76_set_radio(%struct.at76_priv* %296, i32 1)
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %303

299:                                              ; preds = %286
  %300 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %301 = load i32, i32* @CMD_RADIO_ON, align 4
  %302 = call i32 @at76_wait_completion(%struct.at76_priv* %300, i32 %301)
  br label %303

303:                                              ; preds = %299, %286
  %304 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %305 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %306 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @at76_set_preamble(%struct.at76_priv* %304, i64 %307)
  store i32 %308, i32* %5, align 4
  %309 = load i32, i32* %5, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %303
  %312 = load i32, i32* %5, align 4
  store i32 %312, i32* %2, align 4
  br label %375

313:                                              ; preds = %303
  %314 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %315 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %316 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %315, i32 0, i32 11
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @at76_set_frag(%struct.at76_priv* %314, i32 %317)
  store i32 %318, i32* %5, align 4
  %319 = load i32, i32* %5, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %313
  %322 = load i32, i32* %5, align 4
  store i32 %322, i32* %2, align 4
  br label %375

323:                                              ; preds = %313
  %324 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %325 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %326 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %325, i32 0, i32 10
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @at76_set_rts(%struct.at76_priv* %324, i32 %327)
  store i32 %328, i32* %5, align 4
  %329 = load i32, i32* %5, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %323
  %332 = load i32, i32* %5, align 4
  store i32 %332, i32* %2, align 4
  br label %375

333:                                              ; preds = %323
  %334 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %335 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %336 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %335, i32 0, i32 5
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @TX_RATE_AUTO, align 8
  %339 = icmp eq i64 %337, %338
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i32 1, i32 0
  %342 = call i32 @at76_set_autorate_fallback(%struct.at76_priv* %334, i32 %341)
  store i32 %342, i32* %5, align 4
  %343 = load i32, i32* %5, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %333
  %346 = load i32, i32* %5, align 4
  store i32 %346, i32* %2, align 4
  br label %375

347:                                              ; preds = %333
  %348 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %349 = call i32 @at76_set_pm_mode(%struct.at76_priv* %348)
  store i32 %349, i32* %5, align 4
  %350 = load i32, i32* %5, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %347
  %353 = load i32, i32* %5, align 4
  store i32 %353, i32* %2, align 4
  br label %375

354:                                              ; preds = %347
  %355 = load i32, i32* @at76_debug, align 4
  %356 = load i32, i32* @DBG_MIB, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %374

359:                                              ; preds = %354
  %360 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %361 = call i32 @at76_dump_mib_mac(%struct.at76_priv* %360)
  %362 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %363 = call i32 @at76_dump_mib_mac_addr(%struct.at76_priv* %362)
  %364 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %365 = call i32 @at76_dump_mib_mac_mgmt(%struct.at76_priv* %364)
  %366 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %367 = call i32 @at76_dump_mib_mac_wep(%struct.at76_priv* %366)
  %368 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %369 = call i32 @at76_dump_mib_mdomain(%struct.at76_priv* %368)
  %370 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %371 = call i32 @at76_dump_mib_phy(%struct.at76_priv* %370)
  %372 = load %struct.at76_priv*, %struct.at76_priv** %3, align 8
  %373 = call i32 @at76_dump_mib_local(%struct.at76_priv* %372)
  br label %374

374:                                              ; preds = %359, %354
  store i32 0, i32* %2, align 4
  br label %375

375:                                              ; preds = %374, %352, %345, %331, %321, %311, %277
  %376 = load i32, i32* %2, align 4
  ret i32 %376
}

declare dso_local i32 @at76_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @memset(%struct.at76_card_config*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @at76_set_card_command(i32, i32, %struct.at76_card_config*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @at76_wait_completion(%struct.at76_priv*, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @at76_set_radio(%struct.at76_priv*, i32) #1

declare dso_local i32 @at76_set_preamble(%struct.at76_priv*, i64) #1

declare dso_local i32 @at76_set_frag(%struct.at76_priv*, i32) #1

declare dso_local i32 @at76_set_rts(%struct.at76_priv*, i32) #1

declare dso_local i32 @at76_set_autorate_fallback(%struct.at76_priv*, i32) #1

declare dso_local i32 @at76_set_pm_mode(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mac(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mac_addr(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mac_mgmt(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mac_wep(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_mdomain(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_phy(%struct.at76_priv*) #1

declare dso_local i32 @at76_dump_mib_local(%struct.at76_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
