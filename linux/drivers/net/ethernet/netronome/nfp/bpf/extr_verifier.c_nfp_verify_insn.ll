; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_verify_insn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_verify_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nfp_prog* }
%struct.nfp_prog = type { %struct.nfp_insn_meta* }
%struct.nfp_insn_meta = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"instruction %#02x not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_BPF_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"program uses extended registers - jit hardening?\0A\00", align 1
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_verify_insn(%struct.bpf_verifier_env* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_prog*, align 8
  %9 = alloca %struct.nfp_insn_meta*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.nfp_prog*, %struct.nfp_prog** %17, align 8
  store %struct.nfp_prog* %18, %struct.nfp_prog** %8, align 8
  %19 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %20 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %19, i32 0, i32 0
  %21 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %20, align 8
  store %struct.nfp_insn_meta* %21, %struct.nfp_insn_meta** %9, align 8
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %23 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.nfp_insn_meta* @nfp_bpf_goto_meta(%struct.nfp_prog* %22, %struct.nfp_insn_meta* %23, i32 %24)
  store %struct.nfp_insn_meta* %25, %struct.nfp_insn_meta** %9, align 8
  %26 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %28 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %27, i32 0, i32 0
  store %struct.nfp_insn_meta* %26, %struct.nfp_insn_meta** %28, align 8
  %29 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %30 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @nfp_bpf_supported_opcode(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %3
  %36 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %37 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %38 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %126

44:                                               ; preds = %3
  %45 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %46 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MAX_BPF_REG, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %53 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MAX_BPF_REG, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51, %44
  %59 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %60 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %126

63:                                               ; preds = %51
  %64 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %65 = call i64 @is_mbpf_helper_call(%struct.nfp_insn_meta* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %69 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %70 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %71 = call i32 @nfp_bpf_check_helper_call(%struct.nfp_prog* %68, %struct.bpf_verifier_env* %69, %struct.nfp_insn_meta* %70)
  store i32 %71, i32* %4, align 4
  br label %126

72:                                               ; preds = %63
  %73 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %74 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BPF_JMP, align 4
  %78 = load i32, i32* @BPF_EXIT, align 4
  %79 = or i32 %77, %78
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %83 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %84 = call i32 @nfp_bpf_check_exit(%struct.nfp_prog* %82, %struct.bpf_verifier_env* %83)
  store i32 %84, i32* %4, align 4
  br label %126

85:                                               ; preds = %72
  %86 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %87 = call i64 @is_mbpf_load(%struct.nfp_insn_meta* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %91 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %92 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %93 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %94 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @nfp_bpf_check_ptr(%struct.nfp_prog* %90, %struct.nfp_insn_meta* %91, %struct.bpf_verifier_env* %92, i64 %96)
  store i32 %97, i32* %4, align 4
  br label %126

98:                                               ; preds = %85
  %99 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %100 = call i64 @is_mbpf_store(%struct.nfp_insn_meta* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %104 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %105 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %106 = call i32 @nfp_bpf_check_store(%struct.nfp_prog* %103, %struct.nfp_insn_meta* %104, %struct.bpf_verifier_env* %105)
  store i32 %106, i32* %4, align 4
  br label %126

107:                                              ; preds = %98
  %108 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %109 = call i64 @is_mbpf_xadd(%struct.nfp_insn_meta* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %113 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %114 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %115 = call i32 @nfp_bpf_check_xadd(%struct.nfp_prog* %112, %struct.nfp_insn_meta* %113, %struct.bpf_verifier_env* %114)
  store i32 %115, i32* %4, align 4
  br label %126

116:                                              ; preds = %107
  %117 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %118 = call i64 @is_mbpf_alu(%struct.nfp_insn_meta* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %122 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %123 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %124 = call i32 @nfp_bpf_check_alu(%struct.nfp_prog* %121, %struct.nfp_insn_meta* %122, %struct.bpf_verifier_env* %123)
  store i32 %124, i32* %4, align 4
  br label %126

125:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %120, %111, %102, %89, %81, %67, %58, %35
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.nfp_insn_meta* @nfp_bpf_goto_meta(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @nfp_bpf_supported_opcode(i32) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i64 @is_mbpf_helper_call(%struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_bpf_check_helper_call(%struct.nfp_prog*, %struct.bpf_verifier_env*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_bpf_check_exit(%struct.nfp_prog*, %struct.bpf_verifier_env*) #1

declare dso_local i64 @is_mbpf_load(%struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_bpf_check_ptr(%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_verifier_env*, i64) #1

declare dso_local i64 @is_mbpf_store(%struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_bpf_check_store(%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_verifier_env*) #1

declare dso_local i64 @is_mbpf_xadd(%struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_bpf_check_xadd(%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_verifier_env*) #1

declare dso_local i64 @is_mbpf_alu(%struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_bpf_check_alu(%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_verifier_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
