; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_alu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_alu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_2__, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i32, i32 }

@U32_MAX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"multiplier is not within u32 value range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_X = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"multiplicand is not within u32 value range\0A\00", align 1
@BPF_ALU64 = common dso_local global i64 0, align 8
@BPF_K = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"sign extended multiplicand won't be within u32 value range\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"dividend is not within u32 value range\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"divisor is not constant\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"divisor is not within u32 value range\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"divide by negative constant is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_verifier_env*)* @nfp_bpf_check_alu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_check_alu(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, %struct.bpf_verifier_env* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store %struct.bpf_verifier_env* %2, %struct.bpf_verifier_env** %7, align 8
  %10 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %11 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %10)
  %12 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %11, i64 %16
  store %struct.bpf_reg_state* %17, %struct.bpf_reg_state** %8, align 8
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %19 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %18)
  %20 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %19, i64 %24
  store %struct.bpf_reg_state* %25, %struct.bpf_reg_state** %9, align 8
  %26 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %27 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %30 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @min(i8* %28, i32 %31)
  %33 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %34 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %36 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %39 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @max(i8* %37, i32 %40)
  %42 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %43 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %45 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %48 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @min(i8* %46, i32 %49)
  %51 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %52 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %54 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %57 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @max(i8* %55, i32 %58)
  %60 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %61 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %63 = call i64 @is_mbpf_mul(%struct.nfp_insn_meta* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %3
  %66 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %67 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @U32_MAX, align 8
  %70 = icmp ugt i8* %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %73 = call i32 @pr_vlog(%struct.bpf_verifier_env* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %177

76:                                               ; preds = %65
  %77 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %78 = call i64 @mbpf_src(%struct.nfp_insn_meta* %77)
  %79 = load i64, i64* @BPF_X, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %83 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** @U32_MAX, align 8
  %86 = icmp ugt i8* %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %89 = call i32 @pr_vlog(%struct.bpf_verifier_env* %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %177

92:                                               ; preds = %81, %76
  %93 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %94 = call i64 @mbpf_class(%struct.nfp_insn_meta* %93)
  %95 = load i64, i64* @BPF_ALU64, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %99 = call i64 @mbpf_src(%struct.nfp_insn_meta* %98)
  %100 = load i64, i64* @BPF_K, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %104 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %110 = call i32 @pr_vlog(%struct.bpf_verifier_env* %109, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %177

113:                                              ; preds = %102, %97, %92
  br label %114

114:                                              ; preds = %113, %3
  %115 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %116 = call i64 @is_mbpf_div(%struct.nfp_insn_meta* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %176

118:                                              ; preds = %114
  %119 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %120 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** @U32_MAX, align 8
  %123 = icmp ugt i8* %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %126 = call i32 @pr_vlog(%struct.bpf_verifier_env* %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %177

129:                                              ; preds = %118
  %130 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %131 = call i64 @mbpf_src(%struct.nfp_insn_meta* %130)
  %132 = load i64, i64* @BPF_X, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %129
  %135 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %136 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %139 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %137, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %144 = call i32 @pr_vlog(%struct.bpf_verifier_env* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %177

147:                                              ; preds = %134
  %148 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %149 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** @U32_MAX, align 8
  %152 = icmp ugt i8* %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %155 = call i32 @pr_vlog(%struct.bpf_verifier_env* %154, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %177

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %158, %129
  %160 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %161 = call i64 @mbpf_src(%struct.nfp_insn_meta* %160)
  %162 = load i64, i64* @BPF_K, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %166 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %172 = call i32 @pr_vlog(%struct.bpf_verifier_env* %171, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %177

175:                                              ; preds = %164, %159
  br label %176

176:                                              ; preds = %175, %114
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %176, %170, %153, %142, %124, %108, %87, %71
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i64 @is_mbpf_mul(%struct.nfp_insn_meta*) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*) #1

declare dso_local i64 @mbpf_src(%struct.nfp_insn_meta*) #1

declare dso_local i64 @mbpf_class(%struct.nfp_insn_meta*) #1

declare dso_local i64 @is_mbpf_div(%struct.nfp_insn_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
