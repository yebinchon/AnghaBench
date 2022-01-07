; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_best_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_best_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i64, i64, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.ipw_network_match = type { %struct.libipw_network*, i32 }
%struct.libipw_network = type { i32, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ipw_supported_rates = type { i64 }

@IW_MODE_INFRA = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Network '%*pE (%pM)' excluded due to capability mismatch.\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Network '%*pE (%pM)' excluded because of non-network ESSID.\0A\00", align 1
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"Network '%*pE (%pM)' excluded because of ESSID mismatch: '%*pE'.\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"Network '%*pE (%pM)' excluded because '%*pE (%pM)' has a stronger signal.\0A\00", align 1
@HZ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [84 x i8] c"Network '%*pE (%pM)' excluded because of storming (%ums since last assoc attempt).\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Network '%*pE (%pM)' excluded because of age: %ums.\0A\00", align 1
@CFG_STATIC_CHANNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"Network '%*pE (%pM)' excluded because of channel mismatch: %d != %d.\0A\00", align 1
@CAP_PRIVACY_ON = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [70 x i8] c"Network '%*pE (%pM)' excluded because of privacy mismatch: %s != %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@CFG_STATIC_BSSID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [63 x i8] c"Network '%*pE (%pM)' excluded because of BSSID mismatch: %pM.\0A\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"Network '%*pE (%pM)' excluded because of invalid frequency/mode combination.\0A\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"Network '%*pE (%pM)' excluded because of invalid channel in current GEO\0A\00", align 1
@.str.13 = private unnamed_addr constant [88 x i8] c"Network '%*pE (%pM)' excluded because configured rate mask excludes AP mandatory rate.\0A\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"Network '%*pE (%pM)' excluded because of no compatible rates.\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Network '%*pE (%pM)' is a viable match.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, %struct.ipw_network_match*, %struct.libipw_network*, i32)* @ipw_best_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_best_network(%struct.ipw_priv* %0, %struct.ipw_network_match* %1, %struct.libipw_network* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw_priv*, align 8
  %7 = alloca %struct.ipw_network_match*, align 8
  %8 = alloca %struct.libipw_network*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipw_supported_rates, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %6, align 8
  store %struct.ipw_network_match* %1, %struct.ipw_network_match** %7, align 8
  store %struct.libipw_network* %2, %struct.libipw_network** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IW_MODE_INFRA, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %20 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18, %4
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IW_MODE_ADHOC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %35 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %33, %18
  %41 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %42 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %45 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %48 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %46, i32 %49)
  store i32 0, i32* %5, align 4
  br label %447

51:                                               ; preds = %33, %25
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %57 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %60 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %59, i32 0, i32 0
  %61 = load %struct.libipw_network*, %struct.libipw_network** %60, align 8
  %62 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %55
  %66 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %67 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %70 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %69, i32 0, i32 0
  %71 = load %struct.libipw_network*, %struct.libipw_network** %70, align 8
  %72 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %75 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @memcmp(i32 %68, i32 %73, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %65, %55
  %80 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %81 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %84 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %87 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %85, i32 %88)
  store i32 0, i32* %5, align 4
  br label %447

90:                                               ; preds = %65
  br label %140

91:                                               ; preds = %51
  %92 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %93 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %139

98:                                               ; preds = %91
  %99 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %100 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %103 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %122, label %106

106:                                              ; preds = %98
  %107 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %108 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %111 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %114 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %117 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @min(i64 %115, i64 %118)
  %120 = call i64 @memcmp(i32 %109, i32 %112, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %106, %98
  %123 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %124 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %127 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %130 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %133 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %136 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %125, i32 %128, i32 %131, i64 %134, i32 %137)
  store i32 0, i32* %5, align 4
  br label %447

139:                                              ; preds = %106, %91
  br label %140

140:                                              ; preds = %139, %90
  %141 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %142 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %141, i32 0, i32 0
  %143 = load %struct.libipw_network*, %struct.libipw_network** %142, align 8
  %144 = icmp ne %struct.libipw_network* %143, null
  br i1 %144, label %145, label %183

145:                                              ; preds = %140
  %146 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %147 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %146, i32 0, i32 0
  %148 = load %struct.libipw_network*, %struct.libipw_network** %147, align 8
  %149 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %148, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %153 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %152, i32 0, i32 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sgt i64 %151, %155
  br i1 %156, label %157, label %183

157:                                              ; preds = %145
  %158 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %159 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %162 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %165 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %168 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %167, i32 0, i32 0
  %169 = load %struct.libipw_network*, %struct.libipw_network** %168, align 8
  %170 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %173 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %172, i32 0, i32 0
  %174 = load %struct.libipw_network*, %struct.libipw_network** %173, align 8
  %175 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %178 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %177, i32 0, i32 0
  %179 = load %struct.libipw_network*, %struct.libipw_network** %178, align 8
  %180 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i64 %160, i32 %163, i32 %166, i64 %171, i32 %176, i32 %181)
  store i32 0, i32* %5, align 4
  br label %447

183:                                              ; preds = %145, %140
  %184 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %185 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %215

188:                                              ; preds = %183
  %189 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %190 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @HZ, align 8
  %193 = mul i64 %192, 3
  %194 = add i64 %191, %193
  %195 = load i64, i64* @jiffies, align 8
  %196 = call i64 @time_after(i64 %194, i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %188
  %199 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %200 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %203 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %206 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load i64, i64* @jiffies, align 8
  %209 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %210 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 %208, %211
  %213 = call i32 @jiffies_to_msecs(i64 %212)
  %214 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i64 %201, i32 %204, i32 %207, i32 %213)
  store i32 0, i32* %5, align 4
  br label %447

215:                                              ; preds = %188, %183
  %216 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %217 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %216, i32 0, i32 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %252

222:                                              ; preds = %215
  %223 = load i64, i64* @jiffies, align 8
  %224 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %225 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %228 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %227, i32 0, i32 4
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %226, %231
  %233 = call i64 @time_after(i64 %223, i64 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %252

235:                                              ; preds = %222
  %236 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %237 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %240 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %243 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = load i64, i64* @jiffies, align 8
  %246 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %247 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = sub nsw i64 %245, %248
  %250 = call i32 @jiffies_to_msecs(i64 %249)
  %251 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %238, i32 %241, i32 %244, i32 %250)
  store i32 0, i32* %5, align 4
  br label %447

252:                                              ; preds = %222, %215
  %253 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %254 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %284

259:                                              ; preds = %252
  %260 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %261 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %264 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %262, %265
  br i1 %266, label %267, label %284

267:                                              ; preds = %259
  %268 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %269 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %272 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %275 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %278 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %281 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i64 %270, i32 %273, i32 %276, i64 %279, i64 %282)
  store i32 0, i32* %5, align 4
  br label %447

284:                                              ; preds = %259, %252
  %285 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %286 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @CAP_PRIVACY_ON, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i32 1, i32 0
  %293 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %294 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i32 1, i32 0
  %301 = icmp ne i32 %292, %300
  br i1 %301, label %302, label %329

302:                                              ; preds = %284
  %303 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %304 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %307 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %310 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %313 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @CAP_PRIVACY_ON, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %320 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %321 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  %326 = zext i1 %325 to i64
  %327 = select i1 %325, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %328 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i64 %305, i32 %308, i32 %311, i8* %319, i8* %327)
  store i32 0, i32* %5, align 4
  br label %447

329:                                              ; preds = %284
  %330 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %331 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %359

336:                                              ; preds = %329
  %337 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %338 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %341 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %340, i32 0, i32 5
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @ether_addr_equal(i32 %339, i32 %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %359, label %345

345:                                              ; preds = %336
  %346 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %347 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %350 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %349, i32 0, i32 6
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %353 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %356 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i64 %348, i32 %351, i32 %354, i32 %357)
  store i32 0, i32* %5, align 4
  br label %447

359:                                              ; preds = %336, %329
  %360 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %361 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %360, i32 0, i32 4
  %362 = load %struct.TYPE_5__*, %struct.TYPE_5__** %361, align 8
  %363 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %364 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @libipw_is_valid_mode(%struct.TYPE_5__* %362, i32 %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %379, label %368

368:                                              ; preds = %359
  %369 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %370 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %373 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %372, i32 0, i32 6
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %376 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 8
  %378 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0), i64 %371, i32 %374, i32 %377)
  store i32 0, i32* %5, align 4
  br label %447

379:                                              ; preds = %359
  %380 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %381 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %380, i32 0, i32 4
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** %381, align 8
  %383 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %384 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %383, i32 0, i32 4
  %385 = load i64, i64* %384, align 8
  %386 = call i32 @libipw_is_valid_channel(%struct.TYPE_5__* %382, i64 %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %399, label %388

388:                                              ; preds = %379
  %389 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %390 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %393 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %392, i32 0, i32 6
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %396 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 8
  %398 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0), i64 %391, i32 %394, i32 %397)
  store i32 0, i32* %5, align 4
  br label %447

399:                                              ; preds = %379
  %400 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %401 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %402 = call i32 @ipw_compatible_rates(%struct.ipw_priv* %400, %struct.libipw_network* %401, %struct.ipw_supported_rates* %10)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %415, label %404

404:                                              ; preds = %399
  %405 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %406 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %409 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %408, i32 0, i32 6
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %412 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %411, i32 0, i32 5
  %413 = load i32, i32* %412, align 8
  %414 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.13, i64 0, i64 0), i64 %407, i32 %410, i32 %413)
  store i32 0, i32* %5, align 4
  br label %447

415:                                              ; preds = %399
  %416 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %10, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %419, label %430

419:                                              ; preds = %415
  %420 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %421 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %424 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %427 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %426, i32 0, i32 5
  %428 = load i32, i32* %427, align 8
  %429 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i64 0, i64 0), i64 %422, i32 %425, i32 %428)
  store i32 0, i32* %5, align 4
  br label %447

430:                                              ; preds = %415
  %431 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %432 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %431, i32 0, i32 1
  %433 = call i32 @ipw_copy_rates(i32* %432, %struct.ipw_supported_rates* %10)
  %434 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %435 = load %struct.ipw_network_match*, %struct.ipw_network_match** %7, align 8
  %436 = getelementptr inbounds %struct.ipw_network_match, %struct.ipw_network_match* %435, i32 0, i32 0
  store %struct.libipw_network* %434, %struct.libipw_network** %436, align 8
  %437 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %438 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %441 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %440, i32 0, i32 6
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.libipw_network*, %struct.libipw_network** %8, align 8
  %444 = getelementptr inbounds %struct.libipw_network, %struct.libipw_network* %443, i32 0, i32 5
  %445 = load i32, i32* %444, align 8
  %446 = call i32 (i8*, i64, i32, i32, ...) @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i64 %439, i32 %442, i32 %445)
  store i32 1, i32* %5, align 4
  br label %447

447:                                              ; preds = %430, %419, %404, %388, %368, %345, %302, %267, %235, %198, %157, %122, %79, %40
  %448 = load i32, i32* %5, align 4
  ret i32 %448
}

declare dso_local i32 @IPW_DEBUG_ASSOC(i8*, i64, i32, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @libipw_is_valid_mode(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @libipw_is_valid_channel(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @ipw_compatible_rates(%struct.ipw_priv*, %struct.libipw_network*, %struct.ipw_supported_rates*) #1

declare dso_local i32 @ipw_copy_rates(i32*, %struct.ipw_supported_rates*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
