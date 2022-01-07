; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_reg_state }
%struct.bpf_reg_state = type { i64 }
%struct.bpf_verifier_env = type { i32 }

@PTR_TO_CTX = common dso_local global i64 0, align 8
@PTR_TO_STACK = common dso_local global i64 0, align 8
@PTR_TO_MAP_VALUE = common dso_local global i64 0, align 8
@PTR_TO_PACKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"unsupported ptr type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_MAP_USE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"map writes not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_MAP_USE_ATOMIC_CNT = common dso_local global i32 0, align 4
@NOT_INIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"ptr type changed for instruction %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_verifier_env*, i32)* @nfp_bpf_check_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_check_ptr(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, %struct.bpf_verifier_env* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca %struct.nfp_insn_meta*, align 8
  %8 = alloca %struct.bpf_verifier_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_reg_state*, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %6, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %7, align 8
  store %struct.bpf_verifier_env* %2, %struct.bpf_verifier_env** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %13 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %12)
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %13, i64 %15
  store %struct.bpf_reg_state* %16, %struct.bpf_reg_state** %10, align 8
  %17 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %18 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PTR_TO_CTX, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %4
  %23 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %24 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PTR_TO_STACK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %30 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PTR_TO_MAP_VALUE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %36 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PTR_TO_PACKET, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %42 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %43 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %145

48:                                               ; preds = %34, %28, %22, %4
  %49 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %50 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PTR_TO_STACK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %56 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %57 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %58 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %59 = call i32 @nfp_bpf_check_stack_access(%struct.nfp_prog* %55, %struct.nfp_insn_meta* %56, %struct.bpf_reg_state* %57, %struct.bpf_verifier_env* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %145

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %67 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PTR_TO_MAP_VALUE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %65
  %72 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %73 = call i64 @is_mbpf_load(%struct.nfp_insn_meta* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %77 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %78 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %79 = load i32, i32* @NFP_MAP_USE_READ, align 4
  %80 = call i32 @nfp_bpf_map_mark_used(%struct.bpf_verifier_env* %76, %struct.nfp_insn_meta* %77, %struct.bpf_reg_state* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %145

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %71
  %87 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %88 = call i64 @is_mbpf_store(%struct.nfp_insn_meta* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %92 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %145

95:                                               ; preds = %86
  %96 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %97 = call i64 @is_mbpf_xadd(%struct.nfp_insn_meta* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %101 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %102 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %103 = load i32, i32* @NFP_MAP_USE_ATOMIC_CNT, align 4
  %104 = call i32 @nfp_bpf_map_mark_used(%struct.bpf_verifier_env* %100, %struct.nfp_insn_meta* %101, %struct.bpf_reg_state* %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %145

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %95
  br label %111

111:                                              ; preds = %110, %65
  %112 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %113 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NOT_INIT, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %111
  %119 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %120 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %124 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %118
  %128 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %129 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %130 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %134 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %132, i64 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %145

139:                                              ; preds = %118, %111
  %140 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %141 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %140, i32 0, i32 0
  %142 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %10, align 8
  %143 = bitcast %struct.bpf_reg_state* %141 to i8*
  %144 = bitcast %struct.bpf_reg_state* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %139, %127, %107, %90, %83, %62, %40
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @nfp_bpf_check_stack_access(%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_reg_state*, %struct.bpf_verifier_env*) #1

declare dso_local i64 @is_mbpf_load(%struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_bpf_map_mark_used(%struct.bpf_verifier_env*, %struct.nfp_insn_meta*, %struct.bpf_reg_state*, i32) #1

declare dso_local i64 @is_mbpf_store(%struct.nfp_insn_meta*) #1

declare dso_local i64 @is_mbpf_xadd(%struct.nfp_insn_meta*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
