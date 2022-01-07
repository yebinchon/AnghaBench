; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_helper_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_helper_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { %struct.nfp_app_bpf* }
%struct.nfp_app_bpf = type { %struct.TYPE_14__*, %struct.TYPE_11__, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.bpf_verifier_env = type { i32 }
%struct.nfp_insn_meta = type { i32, %struct.TYPE_16__, %struct.bpf_reg_state, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { %struct.bpf_reg_state }
%struct.bpf_reg_state = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_REG_2 = common dso_local global i32 0, align 4
@BPF_REG_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"adjust_head not supported by FW\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_BPF_ADJUST_HEAD_NO_META = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"adjust_head: FW requires shifting metadata, not supported by the driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"adjust_tail not supported by FW\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"map_lookup\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"map_update\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"map_delete\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"bpf_get_prandom_u32(): FW doesn't support random number generation\0A\00", align 1
@NFP_BPF_SCALAR_VALUE = common dso_local global i32 0, align 4
@SCALAR_VALUE = common dso_local global i32 0, align 4
@NFP_BPF_MAP_VALUE = common dso_local global i32 0, align 4
@PTR_TO_MAP_VALUE = common dso_local global i32 0, align 4
@NFP_BPF_STACK = common dso_local global i32 0, align 4
@PTR_TO_STACK = common dso_local global i32 0, align 4
@NFP_BPF_PACKET_DATA = common dso_local global i32 0, align 4
@PTR_TO_PACKET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"event_output: not supported by FW\0A\00", align 1
@BPF_F_INDEX_MASK = common dso_local global i32 0, align 4
@BPF_F_CURRENT_CPU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"event_output: must use BPF_F_CURRENT_CPU, var_off: %s\0A\00", align 1
@BPF_REG_4 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"event_output: unsupported ptr type: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"event_output\00", align 1
@.str.11 = private unnamed_addr constant [99 x i8] c"bpf: note: return codes and behavior of bpf_event_output() helper differs for offloaded programs!\0A\00", align 1
@.str.12 = private unnamed_addr constant [79 x i8] c"warning: return codes and behavior of event_output helper differ for offload!\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"event_output: ptr type changed: %d %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"unsupported function id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.bpf_verifier_env*, %struct.nfp_insn_meta*)* @nfp_bpf_check_helper_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_check_helper_call(%struct.nfp_prog* %0, %struct.bpf_verifier_env* %1, %struct.nfp_insn_meta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca %struct.nfp_insn_meta*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  %10 = alloca %struct.bpf_reg_state*, align 8
  %11 = alloca %struct.nfp_app_bpf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [48 x i8], align 16
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.bpf_verifier_env* %1, %struct.bpf_verifier_env** %6, align 8
  store %struct.nfp_insn_meta* %2, %struct.nfp_insn_meta** %7, align 8
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %15 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %14)
  %16 = load i32, i32* @BPF_REG_1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %15, i64 %17
  store %struct.bpf_reg_state* %18, %struct.bpf_reg_state** %8, align 8
  %19 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %20 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %19)
  %21 = load i32, i32* @BPF_REG_2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %20, i64 %22
  store %struct.bpf_reg_state* %23, %struct.bpf_reg_state** %9, align 8
  %24 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %25 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %24)
  %26 = load i32, i32* @BPF_REG_3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i64 %27
  store %struct.bpf_reg_state* %28, %struct.bpf_reg_state** %10, align 8
  %29 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %30 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %29, i32 0, i32 0
  %31 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %30, align 8
  store %struct.nfp_app_bpf* %31, %struct.nfp_app_bpf** %11, align 8
  %32 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %33 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %336 [
    i32 129, label %37
    i32 128, label %67
    i32 132, label %78
    i32 131, label %107
    i32 133, label %145
    i32 134, label %174
    i32 130, label %185
  ]

37:                                               ; preds = %3
  %38 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %11, align 8
  %39 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %45 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %357

48:                                               ; preds = %37
  %49 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %11, align 8
  %50 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NFP_BPF_ADJUST_HEAD_NO_META, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %58 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %57, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %357

61:                                               ; preds = %48
  %62 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %11, align 8
  %63 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %64 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %65 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %66 = call i32 @nfp_record_adjust_head(%struct.nfp_app_bpf* %62, %struct.nfp_prog* %63, %struct.nfp_insn_meta* %64, %struct.bpf_reg_state* %65)
  br label %342

67:                                               ; preds = %3
  %68 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %11, align 8
  %69 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %74 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %357

77:                                               ; preds = %67
  br label %342

78:                                               ; preds = %3
  %79 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %80 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %81 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %11, align 8
  %82 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %86 = call i32 @nfp_bpf_map_call_ok(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bpf_verifier_env* %79, %struct.nfp_insn_meta* %80, i32 %84, %struct.bpf_reg_state* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %78
  %89 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %90 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %91 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %92 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %97 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %96, i32 0, i32 1
  br label %99

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %95
  %100 = phi %struct.TYPE_16__* [ %97, %95 ], [ null, %98 ]
  %101 = call i32 @nfp_bpf_stack_arg_ok(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.bpf_verifier_env* %89, %struct.bpf_reg_state* %90, %struct.TYPE_16__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99, %78
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %357

106:                                              ; preds = %99
  br label %342

107:                                              ; preds = %3
  %108 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %109 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %110 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %11, align 8
  %111 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %115 = call i32 @nfp_bpf_map_call_ok(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.bpf_verifier_env* %108, %struct.nfp_insn_meta* %109, i32 %113, %struct.bpf_reg_state* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %107
  %118 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %119 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %120 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %121 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %126 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %125, i32 0, i32 1
  br label %128

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %124
  %129 = phi %struct.TYPE_16__* [ %126, %124 ], [ null, %127 ]
  %130 = call i32 @nfp_bpf_stack_arg_ok(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.bpf_verifier_env* %118, %struct.bpf_reg_state* %119, %struct.TYPE_16__* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %134 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %135 = call i32 @nfp_bpf_stack_arg_ok(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.bpf_verifier_env* %133, %struct.bpf_reg_state* %134, %struct.TYPE_16__* null)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %139 = call i32 @nfp_bpf_map_update_value_ok(%struct.bpf_verifier_env* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137, %132, %128, %107
  %142 = load i32, i32* @EOPNOTSUPP, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %357

144:                                              ; preds = %137
  br label %342

145:                                              ; preds = %3
  %146 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %147 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %148 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %11, align 8
  %149 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %153 = call i32 @nfp_bpf_map_call_ok(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %struct.bpf_verifier_env* %146, %struct.nfp_insn_meta* %147, i32 %151, %struct.bpf_reg_state* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %145
  %156 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %157 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %158 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %159 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %164 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %163, i32 0, i32 1
  br label %166

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %162
  %167 = phi %struct.TYPE_16__* [ %164, %162 ], [ null, %165 ]
  %168 = call i32 @nfp_bpf_stack_arg_ok(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %struct.bpf_verifier_env* %156, %struct.bpf_reg_state* %157, %struct.TYPE_16__* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166, %145
  %171 = load i32, i32* @EOPNOTSUPP, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %357

173:                                              ; preds = %166
  br label %342

174:                                              ; preds = %3
  %175 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %11, align 8
  %176 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %342

180:                                              ; preds = %174
  %181 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %182 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %181, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  %183 = load i32, i32* @EOPNOTSUPP, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %4, align 4
  br label %357

185:                                              ; preds = %3
  %186 = load i32, i32* @NFP_BPF_SCALAR_VALUE, align 4
  %187 = load i32, i32* @SCALAR_VALUE, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %201, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* @NFP_BPF_MAP_VALUE, align 4
  %191 = load i32, i32* @PTR_TO_MAP_VALUE, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %201, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* @NFP_BPF_STACK, align 4
  %195 = load i32, i32* @PTR_TO_STACK, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* @NFP_BPF_PACKET_DATA, align 4
  %199 = load i32, i32* @PTR_TO_PACKET, align 4
  %200 = icmp ne i32 %198, %199
  br label %201

201:                                              ; preds = %197, %193, %189, %185
  %202 = phi i1 [ true, %193 ], [ true, %189 ], [ true, %185 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 @BUILD_BUG_ON(i32 %203)
  %205 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %11, align 8
  %206 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %201
  %211 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %212 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %211, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %213 = load i32, i32* @EOPNOTSUPP, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %4, align 4
  br label %357

215:                                              ; preds = %201
  %216 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %217 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @BPF_F_INDEX_MASK, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %215
  %224 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %225 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @BPF_F_INDEX_MASK, align 4
  %229 = and i32 %227, %228
  %230 = load i32, i32* @BPF_F_CURRENT_CPU, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %223, %215
  %233 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  %234 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %235 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %234, i32 0, i32 1
  %236 = bitcast %struct.TYPE_15__* %235 to i64*
  %237 = load i64, i64* %236, align 4
  %238 = call i32 @tnum_strn(i8* %233, i32 48, i64 %237)
  %239 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %240 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  %241 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %239, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* %240)
  %242 = load i32, i32* @EOPNOTSUPP, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %4, align 4
  br label %357

244:                                              ; preds = %223
  %245 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %246 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %245)
  %247 = load i32, i32* @BPF_REG_4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %246, i64 %248
  store %struct.bpf_reg_state* %249, %struct.bpf_reg_state** %8, align 8
  %250 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %251 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @SCALAR_VALUE, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %281

255:                                              ; preds = %244
  %256 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %257 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @PTR_TO_STACK, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %281

261:                                              ; preds = %255
  %262 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %263 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @PTR_TO_MAP_VALUE, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %281

267:                                              ; preds = %261
  %268 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %269 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @PTR_TO_PACKET, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %267
  %274 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %275 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %276 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %274, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* @EOPNOTSUPP, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %4, align 4
  br label %357

281:                                              ; preds = %267, %261, %255, %244
  %282 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %283 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @PTR_TO_STACK, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %295

287:                                              ; preds = %281
  %288 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %289 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %290 = call i32 @nfp_bpf_stack_arg_ok(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), %struct.bpf_verifier_env* %288, %struct.bpf_reg_state* %289, %struct.TYPE_16__* null)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %287
  %293 = load i32, i32* @EOPNOTSUPP, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %4, align 4
  br label %357

295:                                              ; preds = %287, %281
  %296 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %297 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %296, i32 0, i32 0
  %298 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %297, align 8
  %299 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %298, i32 0, i32 0
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = call i32 @dev_warn_once(i32* %305, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.11, i64 0, i64 0))
  %307 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %308 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %307, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.12, i64 0, i64 0))
  %309 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %310 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %295
  br label %342

314:                                              ; preds = %295
  %315 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %316 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %319 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %317, %321
  br i1 %322, label %323, label %335

323:                                              ; preds = %314
  %324 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %325 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %326 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %330 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %324, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %328, i32 %331)
  %333 = load i32, i32* @EINVAL, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %4, align 4
  br label %357

335:                                              ; preds = %314
  br label %342

336:                                              ; preds = %3
  %337 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %338 = load i32, i32* %12, align 4
  %339 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %337, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %338)
  %340 = load i32, i32* @EOPNOTSUPP, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %4, align 4
  br label %357

342:                                              ; preds = %335, %313, %179, %173, %144, %106, %77, %61
  %343 = load i32, i32* %12, align 4
  %344 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %345 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %344, i32 0, i32 0
  store i32 %343, i32* %345, align 4
  %346 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %347 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %346, i32 0, i32 2
  %348 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %349 = bitcast %struct.bpf_reg_state* %347 to i8*
  %350 = bitcast %struct.bpf_reg_state* %348 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %349, i8* align 4 %350, i64 12, i1 false)
  %351 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %352 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 0
  %354 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %355 = bitcast %struct.bpf_reg_state* %353 to i8*
  %356 = bitcast %struct.bpf_reg_state* %354 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %355, i8* align 4 %356, i64 12, i1 false)
  store i32 0, i32* %4, align 4
  br label %357

357:                                              ; preds = %342, %336, %323, %292, %273, %232, %210, %180, %170, %141, %103, %72, %56, %43
  %358 = load i32, i32* %4, align 4
  ret i32 %358
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @nfp_record_adjust_head(%struct.nfp_app_bpf*, %struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_reg_state*) #1

declare dso_local i32 @nfp_bpf_map_call_ok(i8*, %struct.bpf_verifier_env*, %struct.nfp_insn_meta*, i32, %struct.bpf_reg_state*) #1

declare dso_local i32 @nfp_bpf_stack_arg_ok(i8*, %struct.bpf_verifier_env*, %struct.bpf_reg_state*, %struct.TYPE_16__*) #1

declare dso_local i32 @nfp_bpf_map_update_value_ok(%struct.bpf_verifier_env*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @tnum_strn(i8*, i32, i64) #1

declare dso_local i32 @dev_warn_once(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
