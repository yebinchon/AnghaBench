; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv*, i32, %struct.nfp_pf* }
%struct.nfp_flower_priv = type { i32, i32, i64, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, %struct.nfp_app*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfp_pf = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"FlowerNIC requires eth table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"FlowerNIC requires mac_stats BAR\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"FlowerNIC requires vf_cfg BAR\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hw_flower_version\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"FlowerNIC requires hw_flower_version memory symbol\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CONFIG_FC_HOST_CTX_SPLIT\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"FlowerNIC: unsupported host context memory: %d\0A\00", align 1
@NFP_FL_STAT_ID_MU_NUM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"FlowerNIC: invalid host context memory: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"CONFIG_FC_HOST_CTX_COUNT\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"FlowerNIC: unsupported host context count: %d\0A\00", align 1
@NFP_FLOWER_ALLOWED_VER = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [41 x i8] c"FlowerNIC: unsupported firmware version\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@nfp_flower_cmsg_process_rx = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"_abi_flower_extra_features\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"_abi_flower_balance_sync_enable\00", align 1
@NFP_FL_FEATS_LAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"LAG not supported by FW.\0A\00", align 1
@NFP_FL_FEATS_FLOW_MOD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"_abi_flower_merge_hint_enable\00", align 1
@NFP_FL_FEATS_FLOW_MERGE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"Flow merge not supported by FW.\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Flow mod/merge not supported by FW.\0A\00", align 1
@NFP_FL_FEATS_VF_RLIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*)* @nfp_flower_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_init(%struct.nfp_app* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nfp_pf*, align 8
  %9 = alloca %struct.nfp_flower_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  %11 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 2
  %13 = load %struct.nfp_pf*, %struct.nfp_pf** %12, align 8
  store %struct.nfp_pf* %13, %struct.nfp_pf** %8, align 8
  %14 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %15 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, ...) @nfp_warn(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %302

25:                                               ; preds = %1
  %26 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %27 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %32 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @nfp_warn(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %302

37:                                               ; preds = %25
  %38 = load %struct.nfp_pf*, %struct.nfp_pf** %8, align 8
  %39 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %44 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @nfp_warn(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %302

49:                                               ; preds = %37
  %50 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %51 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %50, i32 0, i32 2
  %52 = load %struct.nfp_pf*, %struct.nfp_pf** %51, align 8
  %53 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nfp_rtsym_read_le(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %10)
  store i64 %55, i64* %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %60 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @nfp_warn(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %2, align 4
  br label %302

64:                                               ; preds = %49
  %65 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %66 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %65, i32 0, i32 2
  %67 = load %struct.nfp_pf*, %struct.nfp_pf** %66, align 8
  %68 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @nfp_rtsym_read_le(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %10)
  store i64 %70, i64* %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %75 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (i32, i8*, ...) @nfp_warn(i32 %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  store i32 0, i32* %10, align 4
  store i64 1, i64* %7, align 8
  br label %79

79:                                               ; preds = %73, %64
  %80 = load i32, i32* @NFP_FL_STAT_ID_MU_NUM, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @FIELD_FIT(i32 %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %89 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 (i32, i8*, ...) @nfp_warn(i32 %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %302

95:                                               ; preds = %84
  %96 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %97 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %96, i32 0, i32 2
  %98 = load %struct.nfp_pf*, %struct.nfp_pf** %97, align 8
  %99 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @nfp_rtsym_read_le(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32* %10)
  store i64 %101, i64* %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %106 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i32, i8*, ...) @nfp_warn(i32 %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %108)
  store i32 0, i32* %10, align 4
  %110 = call i64 @BIT(i32 17)
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %104, %95
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* @NFP_FLOWER_ALLOWED_VER, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %117 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @nfp_warn(i32 %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %302

122:                                              ; preds = %111
  %123 = call %struct.nfp_flower_priv* @vzalloc(i32 80)
  store %struct.nfp_flower_priv* %123, %struct.nfp_flower_priv** %9, align 8
  %124 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %125 = icmp ne %struct.nfp_flower_priv* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %302

129:                                              ; preds = %122
  %130 = load i64, i64* %7, align 8
  %131 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %132 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %131, i32 0, i32 13
  store i64 %130, i64* %132, align 8
  %133 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %134 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %133, i32 0, i32 12
  store i64 0, i64* %134, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @roundup_pow_of_two(i64 %135)
  %137 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %138 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %137, i32 0, i32 11
  store i32 %136, i32* %138, align 8
  %139 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %140 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %141 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %140, i32 0, i32 0
  store %struct.nfp_flower_priv* %139, %struct.nfp_flower_priv** %141, align 8
  %142 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %143 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %144 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %143, i32 0, i32 10
  store %struct.nfp_app* %142, %struct.nfp_app** %144, align 8
  %145 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %146 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %145, i32 0, i32 9
  %147 = call i32 @skb_queue_head_init(i32* %146)
  %148 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %149 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %148, i32 0, i32 8
  %150 = call i32 @skb_queue_head_init(i32* %149)
  %151 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %152 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %151, i32 0, i32 7
  %153 = load i32, i32* @nfp_flower_cmsg_process_rx, align 4
  %154 = call i32 @INIT_WORK(i32* %152, i32 %153)
  %155 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %156 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %155, i32 0, i32 6
  %157 = call i32 @init_waitqueue_head(i32* %156)
  %158 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %159 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = call i32 @init_waitqueue_head(i32* %160)
  %162 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %163 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = call i32 @spin_lock_init(i32* %164)
  %166 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* %7, align 8
  %169 = call i32 @nfp_flower_metadata_init(%struct.nfp_app* %166, i64 %167, i64 %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %129
  br label %296

173:                                              ; preds = %129
  %174 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %175 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %174, i32 0, i32 2
  %176 = load %struct.nfp_pf*, %struct.nfp_pf** %175, align 8
  %177 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @nfp_rtsym_read_le(i32 %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32* %10)
  store i64 %179, i64* %5, align 8
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %184 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %183, i32 0, i32 0
  store i32 0, i32* %184, align 8
  br label %190

185:                                              ; preds = %173
  %186 = load i64, i64* %5, align 8
  %187 = trunc i64 %186 to i32
  %188 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %189 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %185, %182
  %191 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %192 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %191, i32 0, i32 2
  %193 = load %struct.nfp_pf*, %struct.nfp_pf** %192, align 8
  %194 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @nfp_rtsym_write_le(i32 %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 1)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %208, label %199

199:                                              ; preds = %190
  %200 = load i32, i32* @NFP_FL_FEATS_LAG, align 4
  %201 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %202 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %206 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %205, i32 0, i32 1
  %207 = call i32 @nfp_flower_lag_init(i32* %206)
  br label %220

208:                                              ; preds = %190
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @ENOENT, align 4
  %211 = sub nsw i32 0, %210
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %215 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i32, i8*, ...) @nfp_warn(i32 %216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %219

218:                                              ; preds = %208
  br label %293

219:                                              ; preds = %213
  br label %220

220:                                              ; preds = %219, %199
  %221 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %222 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @NFP_FL_FEATS_FLOW_MOD, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %220
  %228 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %229 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %228, i32 0, i32 2
  %230 = load %struct.nfp_pf*, %struct.nfp_pf** %229, align 8
  %231 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @nfp_rtsym_write_le(i32 %232, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 1)
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %227
  %237 = load i32, i32* @NFP_FL_FEATS_FLOW_MERGE, align 4
  %238 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %239 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  %242 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %243 = call i32 @nfp_flower_internal_port_init(%struct.nfp_flower_priv* %242)
  br label %256

244:                                              ; preds = %227
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @ENOENT, align 4
  %247 = sub nsw i32 0, %246
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %244
  %250 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %251 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (i32, i8*, ...) @nfp_warn(i32 %252, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  br label %255

254:                                              ; preds = %244
  br label %281

255:                                              ; preds = %249
  br label %256

256:                                              ; preds = %255, %236
  br label %262

257:                                              ; preds = %220
  %258 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %259 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (i32, i8*, ...) @nfp_warn(i32 %260, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  br label %262

262:                                              ; preds = %257, %256
  %263 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %264 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @NFP_FL_FEATS_VF_RLIM, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %271 = call i32 @nfp_flower_qos_init(%struct.nfp_app* %270)
  br label %272

272:                                              ; preds = %269, %262
  %273 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %274 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %273, i32 0, i32 4
  %275 = call i32 @INIT_LIST_HEAD(i32* %274)
  %276 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %277 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %276, i32 0, i32 3
  %278 = call i32 @INIT_LIST_HEAD(i32* %277)
  %279 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %280 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %279, i32 0, i32 2
  store i64 0, i64* %280, align 8
  store i32 0, i32* %2, align 4
  br label %302

281:                                              ; preds = %254
  %282 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %283 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @NFP_FL_FEATS_LAG, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %281
  %289 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %290 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %289, i32 0, i32 1
  %291 = call i32 @nfp_flower_lag_cleanup(i32* %290)
  br label %292

292:                                              ; preds = %288, %281
  br label %293

293:                                              ; preds = %292, %218
  %294 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %295 = call i32 @nfp_flower_metadata_cleanup(%struct.nfp_app* %294)
  br label %296

296:                                              ; preds = %293, %172
  %297 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %298 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %297, i32 0, i32 0
  %299 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %298, align 8
  %300 = call i32 @vfree(%struct.nfp_flower_priv* %299)
  %301 = load i32, i32* %10, align 4
  store i32 %301, i32* %2, align 4
  br label %302

302:                                              ; preds = %296, %272, %126, %115, %87, %58, %42, %30, %18
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @nfp_warn(i32, i8*, ...) #1

declare dso_local i64 @nfp_rtsym_read_le(i32, i8*, i32*) #1

declare dso_local i32 @FIELD_FIT(i32, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local %struct.nfp_flower_priv* @vzalloc(i32) #1

declare dso_local i32 @roundup_pow_of_two(i64) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nfp_flower_metadata_init(%struct.nfp_app*, i64, i64) #1

declare dso_local i32 @nfp_rtsym_write_le(i32, i8*, i32) #1

declare dso_local i32 @nfp_flower_lag_init(i32*) #1

declare dso_local i32 @nfp_flower_internal_port_init(%struct.nfp_flower_priv*) #1

declare dso_local i32 @nfp_flower_qos_init(%struct.nfp_app*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfp_flower_lag_cleanup(i32*) #1

declare dso_local i32 @nfp_flower_metadata_cleanup(%struct.nfp_app*) #1

declare dso_local i32 @vfree(%struct.nfp_flower_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
