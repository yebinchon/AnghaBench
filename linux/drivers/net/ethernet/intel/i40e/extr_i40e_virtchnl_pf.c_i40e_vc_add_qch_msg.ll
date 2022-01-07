; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_add_qch_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_add_qch_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i32, i32, i64, %struct.TYPE_9__*, i32, i64, i64, i32, %struct.i40e_pf* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.i40e_pf = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.i40e_link_status }
%struct.i40e_link_status = type { i32 }
%struct.virtchnl_tc_info = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Spoof check is ON, turn it OFF to enable ADq\0A\00", align 1
@VIRTCHNL_VF_OFFLOAD_ADQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"VF %d attempting to enable ADq, but hasn't properly negotiated that capability\0A\00", align 1
@I40E_MAX_VF_VSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"VF %d trying to set %u TCs, valid range 1-%u TCs per VF\0A\00", align 1
@I40E_DEFAULT_QUEUES_PER_VF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [70 x i8] c"VF %d: TC %d trying to set %u queues, valid range 1-%u queues per TC\0A\00", align 1
@I40E_MAX_VF_QUEUES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"No queues left to allocate to VF %d\0A\00", align 1
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@SPEED_20000 = common dso_local global i64 0, align 8
@SPEED_25000 = common dso_local global i64 0, align 8
@SPEED_40000 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Cannot detect link speed\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Invalid max tx rate %llu specified for VF %d.\00", align 1
@I40E_SUCCESS = common dso_local global i32 0, align 4
@VIRTCHNL_OP_ENABLE_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_add_qch_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_add_qch_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.virtchnl_tc_info*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca %struct.i40e_link_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %struct.virtchnl_tc_info*
  store %struct.virtchnl_tc_info* %14, %struct.virtchnl_tc_info** %6, align 8
  %15 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %16 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %15, i32 0, i32 9
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %7, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.i40e_link_status* %21, %struct.i40e_link_status** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %22 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %23 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %24 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %23, i32 0, i32 8
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %28, i32* %11, align 4
  br label %279

29:                                               ; preds = %2
  %30 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %31 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %40, i32* %11, align 4
  br label %279

41:                                               ; preds = %29
  %42 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ADQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %41
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %54 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %57, i32* %11, align 4
  br label %279

58:                                               ; preds = %41
  %59 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %60 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %65 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @I40E_MAX_VF_VSI, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63, %58
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %75 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %78 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @I40E_MAX_VF_VSI, align 4
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79, i32 %80)
  %82 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %82, i32* %11, align 4
  br label %279

83:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %132, %83
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %87 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %84
  %91 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %92 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %90
  %101 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %102 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %100, %90
  %112 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %113 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %117 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %121 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %119, i64 %127, i64 %128)
  %130 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %130, i32* %11, align 4
  br label %279

131:                                              ; preds = %100
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %84

135:                                              ; preds = %84
  %136 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %137 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %138 = sub nsw i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %10, align 4
  %140 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %141 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %135
  %146 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %147 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %151 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %154, i32* %11, align 4
  br label %279

155:                                              ; preds = %135
  %156 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %157 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %158 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %157, i32 0, i32 6
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155
  %160 = load %struct.i40e_link_status*, %struct.i40e_link_status** %8, align 8
  %161 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  switch i32 %162, label %175 [
    i32 133, label %163
    i32 131, label %165
    i32 132, label %167
    i32 130, label %169
    i32 129, label %171
    i32 128, label %173
  ]

163:                                              ; preds = %159
  %164 = load i64, i64* @SPEED_100, align 8
  store i64 %164, i64* %12, align 8
  br label %182

165:                                              ; preds = %159
  %166 = load i64, i64* @SPEED_1000, align 8
  store i64 %166, i64* %12, align 8
  br label %182

167:                                              ; preds = %159
  %168 = load i64, i64* @SPEED_10000, align 8
  store i64 %168, i64* %12, align 8
  br label %182

169:                                              ; preds = %159
  %170 = load i64, i64* @SPEED_20000, align 8
  store i64 %170, i64* %12, align 8
  br label %182

171:                                              ; preds = %159
  %172 = load i64, i64* @SPEED_25000, align 8
  store i64 %172, i64* %12, align 8
  br label %182

173:                                              ; preds = %159
  %174 = load i64, i64* @SPEED_40000, align 8
  store i64 %174, i64* %12, align 8
  br label %182

175:                                              ; preds = %159
  %176 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %177 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %176, i32 0, i32 1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = call i32 (i32*, i8*, ...) @dev_err(i32* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %181 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %181, i32* %11, align 4
  br label %279

182:                                              ; preds = %173, %171, %169, %167, %165, %163
  %183 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %184 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %187 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  store i32 0, i32* %9, align 4
  br label %188

188:                                              ; preds = %266, %182
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %191 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %269

194:                                              ; preds = %188
  %195 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %196 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %195, i32 0, i32 1
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %250

204:                                              ; preds = %194
  %205 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %206 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %205, i32 0, i32 1
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %12, align 8
  %214 = icmp sgt i64 %212, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %204
  %216 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %217 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %216, i32 0, i32 1
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %221 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %220, i32 0, i32 1
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %229 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32*, i8*, ...) @dev_err(i32* %219, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %227, i32 %230)
  %232 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %232, i32* %11, align 4
  br label %279

233:                                              ; preds = %204
  %234 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %235 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %234, i32 0, i32 1
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %243 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %242, i32 0, i32 4
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  store i64 %241, i64* %248, align 8
  br label %249

249:                                              ; preds = %233
  br label %250

250:                                              ; preds = %249, %194
  %251 = load %struct.virtchnl_tc_info*, %struct.virtchnl_tc_info** %6, align 8
  %252 = getelementptr inbounds %struct.virtchnl_tc_info, %struct.virtchnl_tc_info* %251, i32 0, i32 1
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %260 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %259, i32 0, i32 4
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  store i64 %258, i64* %265, align 8
  br label %266

266:                                              ; preds = %250
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %9, align 4
  br label %188

269:                                              ; preds = %188
  %270 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %271 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %270, i32 0, i32 2
  store i32 1, i32* %271, align 8
  %272 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %273 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %272, i32 0, i32 3
  store i64 0, i64* %273, align 8
  %274 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %275 = call i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf* %274)
  %276 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %277 = call i32 @i40e_reset_vf(%struct.i40e_vf* %276, i32 0)
  %278 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %278, i32* %3, align 4
  br label %284

279:                                              ; preds = %215, %175, %145, %111, %69, %48, %34, %27
  %280 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %281 = load i32, i32* @VIRTCHNL_OP_ENABLE_CHANNELS, align 4
  %282 = load i32, i32* %11, align 4
  %283 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %280, i32 %281, i32 %282)
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %279, %269
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_reset_vf(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
