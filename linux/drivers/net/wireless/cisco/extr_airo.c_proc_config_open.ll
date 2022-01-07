; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_config_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_config_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.proc_data* }
%struct.proc_data = type { i32, %struct.proc_data*, i32, i32, i32* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i64, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@proc_config_on_close = common dso_local global i32 0, align 4
@MODE_CFG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"Mode: %s\0ARadio: %s\0ANodeName: %-16s\0APowerMode: %s\0ADataRates: %d %d %d %d %d %d %d %d\0AChannel: %d\0AXmitPower: %d\0A\00", align 1
@MODE_STA_IBSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"adhoc\00", align 1
@MODE_STA_ESS = common dso_local global i32 0, align 4
@MODE_AP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@MODE_AP_RPTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"AP RPTR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@FLAG_RADIO_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@POWERSAVE_CAM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"CAM\00", align 1
@POWERSAVE_PSP = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"PSP\00", align 1
@POWERSAVE_PSPCAM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"PSPCAM\00", align 1
@.str.10 = private unnamed_addr constant [181 x i8] c"LongRetryLimit: %d\0AShortRetryLimit: %d\0ARTSThreshold: %d\0ATXMSDULifetime: %d\0ARXMSDULifetime: %d\0ATXDiversity: %s\0ARXDiversity: %s\0AFragThreshold: %d\0AWEP: %s\0AModulation: %s\0APreamble: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@AUTH_ENCRYPT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@AUTH_SHAREDKEY = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@MOD_DEFAULT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@MOD_CCK = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"cck\00", align 1
@MOD_MOK = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"mok\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@PREAMBLE_AUTO = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@PREAMBLE_LONG = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @proc_config_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_config_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_data*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.airo_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.net_device* @PDE_DATA(%struct.inode* %11)
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.airo_info*, %struct.airo_info** %14, align 8
  store %struct.airo_info* %15, %struct.airo_info** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 32, i32 %16)
  %18 = bitcast i8* %17 to %struct.proc_data*
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  store %struct.proc_data* %18, %struct.proc_data** %20, align 8
  %21 = icmp eq %struct.proc_data* %18, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %362

25:                                               ; preds = %2
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.proc_data*, %struct.proc_data** %27, align 8
  store %struct.proc_data* %28, %struct.proc_data** %6, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.proc_data* @kmalloc(i32 2048, i32 %29)
  %31 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %32 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %31, i32 0, i32 1
  store %struct.proc_data* %30, %struct.proc_data** %32, align 8
  %33 = icmp eq %struct.proc_data* %30, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load %struct.proc_data*, %struct.proc_data** %36, align 8
  %38 = call i32 @kfree(%struct.proc_data* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %362

41:                                               ; preds = %25
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kzalloc(i32 2048, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %46 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %45, i32 0, i32 4
  store i32* %44, i32** %46, align 8
  %47 = icmp eq i32* %44, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %50 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %49, i32 0, i32 1
  %51 = load %struct.proc_data*, %struct.proc_data** %50, align 8
  %52 = call i32 @kfree(%struct.proc_data* %51)
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load %struct.proc_data*, %struct.proc_data** %54, align 8
  %56 = call i32 @kfree(%struct.proc_data* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %362

59:                                               ; preds = %41
  %60 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %61 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %60, i32 0, i32 0
  store i32 2048, i32* %61, align 8
  %62 = load i32, i32* @proc_config_on_close, align 4
  %63 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %64 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %66 = call i32 @readConfigRid(%struct.airo_info* %65, i32 1)
  %67 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %68 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MODE_CFG_MASK, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %10, align 4
  %73 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %74 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %73, i32 0, i32 1
  %75 = load %struct.proc_data*, %struct.proc_data** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @MODE_STA_IBSS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %105

80:                                               ; preds = %59
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @MODE_STA_ESS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %86 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 17
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @get_rmode(i32 %88)
  br label %103

90:                                               ; preds = %80
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @MODE_AP, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %101

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @MODE_AP_RPTR, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  br label %101

101:                                              ; preds = %95, %94
  %102 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %94 ], [ %100, %95 ]
  br label %103

103:                                              ; preds = %101, %84
  %104 = phi i8* [ %89, %84 ], [ %102, %101 ]
  br label %105

105:                                              ; preds = %103, %79
  %106 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %79 ], [ %104, %103 ]
  %107 = load i32, i32* @FLAG_RADIO_OFF, align 4
  %108 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %109 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %108, i32 0, i32 1
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %114 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %115 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %119 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @POWERSAVE_CAM, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %105
  br label %144

125:                                              ; preds = %105
  %126 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %127 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @POWERSAVE_PSP, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %142

133:                                              ; preds = %125
  %134 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %135 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @POWERSAVE_PSPCAM, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  br label %142

142:                                              ; preds = %133, %132
  %143 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %132 ], [ %141, %133 ]
  br label %144

144:                                              ; preds = %142, %124
  %145 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %124 ], [ %143, %142 ]
  %146 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %147 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 16
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %154 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 16
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 1
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %161 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 16
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 2
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %168 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 16
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 3
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %175 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 16
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 4
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %182 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 16
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 5
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %189 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 16
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 6
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %196 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 16
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 7
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %203 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 15
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le16_to_cpu(i32 %205)
  %207 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %208 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 14
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @le16_to_cpu(i32 %210)
  %212 = call i32 (%struct.proc_data*, i8*, ...) @sprintf(%struct.proc_data* %75, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0), i8* %106, i8* %113, i8* %117, i8* %145, i32 %152, i32 %159, i32 %166, i32 %173, i32 %180, i32 %187, i32 %194, i32 %201, i32 %206, i32 %211)
  store i32 %212, i32* %9, align 4
  %213 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %214 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %213, i32 0, i32 1
  %215 = load %struct.proc_data*, %struct.proc_data** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %215, i64 %217
  %219 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %220 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 13
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @le16_to_cpu(i32 %222)
  %224 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %225 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 12
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @le16_to_cpu(i32 %227)
  %229 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %230 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le16_to_cpu(i32 %232)
  %234 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %235 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 10
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @le16_to_cpu(i32 %237)
  %239 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %240 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @le16_to_cpu(i32 %242)
  %244 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %245 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %250

249:                                              ; preds = %144
  br label %258

250:                                              ; preds = %144
  %251 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %252 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 2
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  br label %258

258:                                              ; preds = %250, %249
  %259 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %249 ], [ %257, %250 ]
  %260 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %261 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %266

265:                                              ; preds = %258
  br label %274

266:                                              ; preds = %258
  %267 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %268 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  br label %274

274:                                              ; preds = %266, %265
  %275 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %265 ], [ %273, %266 ]
  %276 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %277 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 8
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @le16_to_cpu(i32 %279)
  %281 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %282 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 5
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @AUTH_ENCRYPT, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %274
  br label %297

288:                                              ; preds = %274
  %289 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %290 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @AUTH_SHAREDKEY, align 8
  %294 = icmp eq i64 %292, %293
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  br label %297

297:                                              ; preds = %288, %287
  %298 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %287 ], [ %296, %288 ]
  %299 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %300 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 6
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @MOD_DEFAULT, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %297
  br label %325

306:                                              ; preds = %297
  %307 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %308 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 6
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @MOD_CCK, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %306
  br label %323

314:                                              ; preds = %306
  %315 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %316 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i32 0, i32 6
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @MOD_MOK, align 8
  %320 = icmp eq i64 %318, %319
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)
  br label %323

323:                                              ; preds = %314, %313
  %324 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), %313 ], [ %322, %314 ]
  br label %325

325:                                              ; preds = %323, %305
  %326 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), %305 ], [ %324, %323 ]
  %327 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %328 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 7
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @PREAMBLE_AUTO, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %325
  br label %353

334:                                              ; preds = %325
  %335 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %336 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 7
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @PREAMBLE_LONG, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %334
  br label %351

342:                                              ; preds = %334
  %343 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %344 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 7
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @PREAMBLE_SHORT, align 8
  %348 = icmp eq i64 %346, %347
  %349 = zext i1 %348 to i64
  %350 = select i1 %348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)
  br label %351

351:                                              ; preds = %342, %341
  %352 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %341 ], [ %350, %342 ]
  br label %353

353:                                              ; preds = %351, %333
  %354 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %333 ], [ %352, %351 ]
  %355 = call i32 (%struct.proc_data*, i8*, ...) @sprintf(%struct.proc_data* %218, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.10, i64 0, i64 0), i32 %223, i32 %228, i32 %233, i32 %238, i32 %243, i8* %259, i8* %275, i32 %280, i8* %298, i8* %326, i8* %354)
  %356 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %357 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %356, i32 0, i32 1
  %358 = load %struct.proc_data*, %struct.proc_data** %357, align 8
  %359 = call i32 @strlen(%struct.proc_data* %358)
  %360 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %361 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %360, i32 0, i32 2
  store i32 %359, i32* %361, align 8
  store i32 0, i32* %3, align 4
  br label %362

362:                                              ; preds = %353, %48, %34, %22
  %363 = load i32, i32* %3, align 4
  ret i32 %363
}

declare dso_local %struct.net_device* @PDE_DATA(%struct.inode*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.proc_data* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.proc_data*) #1

declare dso_local i32 @readConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @sprintf(%struct.proc_data*, i8*, ...) #1

declare dso_local i8* @get_rmode(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strlen(%struct.proc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
