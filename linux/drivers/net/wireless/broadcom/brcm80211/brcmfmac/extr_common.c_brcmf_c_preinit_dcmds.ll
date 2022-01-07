; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_c_preinit_dcmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_c_preinit_dcmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i8*, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i8*, i8*, i32, %struct.brcmf_rev_info, %struct.brcmf_bus*, %struct.TYPE_2__* }
%struct.brcmf_rev_info = type { i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.brcmf_bus = type { i8*, i8* }
%struct.TYPE_2__ = type { i8* }
%struct.brcmf_rev_info_le = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BRCMF_EVENTING_MASK_LEN = common dso_local global i32 0, align 4
@BRCMF_DCMD_SMLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cur_etheraddr\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Retrieving cur_etheraddr failed, %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@BRCMF_C_GET_REVINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"retrieving revision info failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"download CLM blob file failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ver\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Retrieving version information failed, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Firmware: %s %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"clmver\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"retrieving clmver failed, %d\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"CLM version = %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"mpc\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"failed setting mpc\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"event_msgs\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Get event_msgs error (%d)\0A\00", align 1
@BRCMF_E_IF = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [27 x i8] c"Set event_msgs error (%d)\0A\00", align 1
@BRCMF_C_SET_SCAN_CHANNEL_TIME = common dso_local global i32 0, align 4
@BRCMF_DEFAULT_SCAN_CHANNEL_TIME = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [42 x i8] c"BRCMF_C_SET_SCAN_CHANNEL_TIME error (%d)\0A\00", align 1
@BRCMF_C_SET_SCAN_UNASSOC_TIME = common dso_local global i32 0, align 4
@BRCMF_DEFAULT_SCAN_UNASSOC_TIME = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"BRCMF_C_SET_SCAN_UNASSOC_TIME error (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"txbf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_c_preinit_dcmds(%struct.brcmf_if* %0) #0 {
  %2 = alloca %struct.brcmf_if*, align 8
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcmf_bus*, align 8
  %8 = alloca %struct.brcmf_rev_info_le, align 4
  %9 = alloca %struct.brcmf_rev_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %2, align 8
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %14 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %13, i32 0, i32 1
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  store %struct.brcmf_pub* %15, %struct.brcmf_pub** %3, align 8
  %16 = load i32, i32* @BRCMF_EVENTING_MASK_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = load i32, i32* @BRCMF_DCMD_SMLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %23 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %24 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %25 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %26, i32 8)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %309

34:                                               ; preds = %1
  %35 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %36 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %35, i32 0, i32 1
  %37 = load %struct.brcmf_pub*, %struct.brcmf_pub** %36, align 8
  %38 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %43 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %42, i32 0, i32 1
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %43, align 8
  %45 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i8* %41, i8* %46, i32 %47)
  %49 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %50 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %49, i32 0, i32 1
  %51 = load %struct.brcmf_pub*, %struct.brcmf_pub** %50, align 8
  %52 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %55 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @memcpy(i8* %53, i8* %56, i32 8)
  %58 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %59 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %58, i32 0, i32 1
  %60 = load %struct.brcmf_pub*, %struct.brcmf_pub** %59, align 8
  %61 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %60, i32 0, i32 4
  %62 = load %struct.brcmf_bus*, %struct.brcmf_bus** %61, align 8
  store %struct.brcmf_bus* %62, %struct.brcmf_bus** %7, align 8
  %63 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %64 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %63, i32 0, i32 1
  %65 = load %struct.brcmf_pub*, %struct.brcmf_pub** %64, align 8
  %66 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %65, i32 0, i32 3
  store %struct.brcmf_rev_info* %66, %struct.brcmf_rev_info** %9, align 8
  %67 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %68 = load i32, i32* @BRCMF_C_GET_REVINFO, align 4
  %69 = call i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if* %67, i32 %68, %struct.brcmf_rev_info_le* %8, i32 68)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %34
  %73 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %77 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @strlcpy(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %172

80:                                               ; preds = %34
  %81 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 16
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le32_to_cpu(i32 %82)
  %84 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %85 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %84, i32 0, i32 16
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 15
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %90 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %89, i32 0, i32 15
  store i8* %88, i8** %90, align 8
  %91 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 14
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %95 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %94, i32 0, i32 14
  store i8* %93, i8** %95, align 8
  %96 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 13
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le32_to_cpu(i32 %97)
  %99 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %100 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %99, i32 0, i32 13
  store i8* %98, i8** %100, align 8
  %101 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 12
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @le32_to_cpu(i32 %102)
  %104 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %105 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %104, i32 0, i32 12
  store i8* %103, i8** %105, align 8
  %106 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 11
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le32_to_cpu(i32 %107)
  %109 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %110 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %109, i32 0, i32 11
  store i8* %108, i8** %110, align 8
  %111 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 10
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @le32_to_cpu(i32 %112)
  %114 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %115 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %114, i32 0, i32 10
  store i8* %113, i8** %115, align 8
  %116 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le32_to_cpu(i32 %117)
  %119 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %120 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %119, i32 0, i32 9
  store i8* %118, i8** %120, align 8
  %121 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @le32_to_cpu(i32 %122)
  %124 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %125 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %124, i32 0, i32 8
  store i8* %123, i8** %125, align 8
  %126 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @le32_to_cpu(i32 %127)
  %129 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %130 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @le32_to_cpu(i32 %132)
  %134 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %135 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %134, i32 0, i32 6
  store i8* %133, i8** %135, align 8
  %136 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @le32_to_cpu(i32 %137)
  %139 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %140 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  %141 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @le32_to_cpu(i32 %142)
  %144 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %145 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  %146 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @le32_to_cpu(i32 %147)
  %149 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %150 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  %151 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @le32_to_cpu(i32 %152)
  %154 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %155 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %157 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %171, label %160

160:                                              ; preds = %80
  %161 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @le32_to_cpu(i32 %162)
  %164 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %165 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = getelementptr inbounds %struct.brcmf_rev_info_le, %struct.brcmf_rev_info_le* %8, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @le32_to_cpu(i32 %167)
  %169 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %170 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %160, %80
  br label %172

172:                                              ; preds = %171, %72
  %173 = load i64, i64* %12, align 8
  %174 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %175 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %177 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %172
  %181 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %182 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %185 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %188 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @brcmf_chip_name(i8* %183, i8* %186, i32 %189, i32 4)
  br label %191

191:                                              ; preds = %180, %172
  %192 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %193 = call i64 @brcmf_c_process_clm_blob(%struct.brcmf_if* %192)
  store i64 %193, i64* %12, align 8
  %194 = load i64, i64* %12, align 8
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %198 = load i64, i64* %12, align 8
  %199 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %197, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %198)
  br label %309

200:                                              ; preds = %191
  %201 = trunc i64 %21 to i32
  %202 = call i32 @memset(i8* %22, i32 0, i32 %201)
  %203 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %204 = trunc i64 %21 to i32
  %205 = call i64 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %22, i32 %204)
  store i64 %205, i64* %12, align 8
  %206 = load i64, i64* %12, align 8
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %200
  %209 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %210 = load i64, i64* %12, align 8
  %211 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %209, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %210)
  br label %309

212:                                              ; preds = %200
  store i8* %22, i8** %11, align 8
  %213 = call i32 @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %214 = load %struct.brcmf_rev_info*, %struct.brcmf_rev_info** %9, align 8
  %215 = getelementptr inbounds %struct.brcmf_rev_info, %struct.brcmf_rev_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @brcmf_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %216, i8* %22)
  %218 = call i8* @strrchr(i8* %22, i8 signext 32)
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  store i8* %219, i8** %11, align 8
  %220 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %221 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %220, i32 0, i32 1
  %222 = load %struct.brcmf_pub*, %struct.brcmf_pub** %221, align 8
  %223 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i8*, i8** %11, align 8
  %226 = call i32 @strlcpy(i32 %224, i8* %225, i32 4)
  %227 = trunc i64 %21 to i32
  %228 = call i32 @memset(i8* %22, i32 0, i32 %227)
  %229 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %230 = trunc i64 %21 to i32
  %231 = call i64 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %22, i32 %230)
  store i64 %231, i64* %12, align 8
  %232 = load i64, i64* %12, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %212
  %235 = load i32, i32* @TRACE, align 4
  %236 = load i64, i64* %12, align 8
  %237 = inttoptr i64 %236 to i8*
  %238 = call i32 @brcmf_dbg(i32 %235, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %237)
  br label %252

239:                                              ; preds = %212
  store i8* %22, i8** %10, align 8
  %240 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %241 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %240, i32 0, i32 1
  %242 = load %struct.brcmf_pub*, %struct.brcmf_pub** %241, align 8
  %243 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = load i8*, i8** %10, align 8
  %246 = call i32 @memcpy(i8* %244, i8* %245, i32 8)
  %247 = load i8*, i8** %10, align 8
  %248 = call i32 @strreplace(i8* %247, i8 signext 10, i8 signext 32)
  %249 = load i32, i32* @INFO, align 4
  %250 = load i8*, i8** %10, align 8
  %251 = call i32 @brcmf_dbg(i32 %249, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %239, %234
  %253 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %254 = call i64 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %253, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 1)
  store i64 %254, i64* %12, align 8
  %255 = load i64, i64* %12, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %259 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %258, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %309

260:                                              ; preds = %252
  %261 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %262 = call i32 @brcmf_c_set_joinpref_default(%struct.brcmf_if* %261)
  %263 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %264 = load i32, i32* @BRCMF_EVENTING_MASK_LEN, align 4
  %265 = call i64 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %263, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %19, i32 %264)
  store i64 %265, i64* %12, align 8
  %266 = load i64, i64* %12, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %260
  %269 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %270 = load i64, i64* %12, align 8
  %271 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %269, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i64 %270)
  br label %309

272:                                              ; preds = %260
  %273 = load i32, i32* @BRCMF_E_IF, align 4
  %274 = call i32 @setbit(i8* %19, i32 %273)
  %275 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %276 = load i32, i32* @BRCMF_EVENTING_MASK_LEN, align 4
  %277 = call i64 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %275, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %19, i32 %276)
  store i64 %277, i64* %12, align 8
  %278 = load i64, i64* %12, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %272
  %281 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %282 = load i64, i64* %12, align 8
  %283 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %281, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i64 %282)
  br label %309

284:                                              ; preds = %272
  %285 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %286 = load i32, i32* @BRCMF_C_SET_SCAN_CHANNEL_TIME, align 4
  %287 = load i32, i32* @BRCMF_DEFAULT_SCAN_CHANNEL_TIME, align 4
  %288 = call i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %285, i32 %286, i32 %287)
  store i64 %288, i64* %12, align 8
  %289 = load i64, i64* %12, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %284
  %292 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %293 = load i64, i64* %12, align 8
  %294 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %292, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i64 %293)
  br label %309

295:                                              ; preds = %284
  %296 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %297 = load i32, i32* @BRCMF_C_SET_SCAN_UNASSOC_TIME, align 4
  %298 = load i32, i32* @BRCMF_DEFAULT_SCAN_UNASSOC_TIME, align 4
  %299 = call i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if* %296, i32 %297, i32 %298)
  store i64 %299, i64* %12, align 8
  %300 = load i64, i64* %12, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %304 = load i64, i64* %12, align 8
  %305 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %303, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i64 %304)
  br label %309

306:                                              ; preds = %295
  %307 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %308 = call i64 @brcmf_fil_iovar_int_set(%struct.brcmf_if* %307, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 1)
  br label %309

309:                                              ; preds = %306, %302, %291, %280, %268, %257, %208, %196, %30
  %310 = load i64, i64* %12, align 8
  %311 = trunc i64 %310 to i32
  %312 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %312)
  ret i32 %311
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @brcmf_fil_iovar_data_get(%struct.brcmf_if*, i8*, i8*, i32) #2

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @brcmf_fil_cmd_data_get(%struct.brcmf_if*, i32, %struct.brcmf_rev_info_le*, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i32 @brcmf_chip_name(i8*, i8*, i32, i32) #2

declare dso_local i64 @brcmf_c_process_clm_blob(%struct.brcmf_if*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strsep(i8**, i8*) #2

declare dso_local i32 @brcmf_info(i8*, i32, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*) #2

declare dso_local i32 @strreplace(i8*, i8 signext, i8 signext) #2

declare dso_local i64 @brcmf_fil_iovar_int_set(%struct.brcmf_if*, i8*, i32) #2

declare dso_local i32 @brcmf_c_set_joinpref_default(%struct.brcmf_if*) #2

declare dso_local i32 @setbit(i8*, i32) #2

declare dso_local i64 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, i8*, i32) #2

declare dso_local i64 @brcmf_fil_cmd_int_set(%struct.brcmf_if*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
