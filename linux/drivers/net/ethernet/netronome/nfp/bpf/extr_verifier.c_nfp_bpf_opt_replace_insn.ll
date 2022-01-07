; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_opt_replace_insn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_opt_replace_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.bpf_insn_aux_data*, %struct.TYPE_8__* }
%struct.bpf_insn_aux_data = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nfp_prog* }
%struct.nfp_prog = type { %struct.nfp_insn_meta* }
%struct.nfp_insn_meta = type { i32, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.bpf_insn = type { i32, i64 }

@BPF_JMP = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i32 0, align 4
@BPF_K = common dso_local global i32 0, align 4
@l = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"branch hard wire at %d changes target %d -> %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"unsupported instruction replacement %hhx -> %hhx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_bpf_opt_replace_insn(%struct.bpf_verifier_env* %0, i64 %1, %struct.bpf_insn* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bpf_insn*, align 8
  %8 = alloca %struct.nfp_prog*, align 8
  %9 = alloca %struct.bpf_insn_aux_data*, align 8
  %10 = alloca %struct.nfp_insn_meta*, align 8
  %11 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bpf_insn* %2, %struct.bpf_insn** %7, align 8
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.nfp_prog*, %struct.nfp_prog** %19, align 8
  store %struct.nfp_prog* %20, %struct.nfp_prog** %8, align 8
  %21 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %22 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %21, i32 0, i32 0
  %23 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %22, align 8
  store %struct.bpf_insn_aux_data* %23, %struct.bpf_insn_aux_data** %9, align 8
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %25 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %24, i32 0, i32 0
  %26 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %25, align 8
  store %struct.nfp_insn_meta* %26, %struct.nfp_insn_meta** %10, align 8
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %28 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %29 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %29, i64 %30
  %32 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.nfp_insn_meta* @nfp_bpf_goto_meta(%struct.nfp_prog* %27, %struct.nfp_insn_meta* %28, i64 %33)
  store %struct.nfp_insn_meta* %34, %struct.nfp_insn_meta** %10, align 8
  %35 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %36 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %37 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %36, i32 0, i32 0
  store %struct.nfp_insn_meta* %35, %struct.nfp_insn_meta** %37, align 8
  %38 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %39 = call i64 @is_mbpf_cond_jump(%struct.nfp_insn_meta* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %104

41:                                               ; preds = %3
  %42 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BPF_JMP, align 4
  %46 = load i32, i32* @BPF_JA, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @BPF_K, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %104

51:                                               ; preds = %41
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = add i64 %56, 1
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %60 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %51
  %64 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %65 = load i32, i32* @l, align 4
  %66 = call %struct.TYPE_10__* @list_next_entry(%struct.nfp_insn_meta* %64, i32 %65)
  %67 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %68 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %67, i32 0, i32 2
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %68, align 8
  %69 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %70 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %103

71:                                               ; preds = %51
  %72 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %73 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %72, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %77, i64 %79
  %81 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %76, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %71
  %85 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %88 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %87, i32 0, i32 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %93, i64 %95
  %97 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (%struct.bpf_verifier_env*, i8*, i64, i32, ...) @pr_vlog(%struct.bpf_verifier_env* %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %86, i32 %92, i64 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %117

102:                                              ; preds = %71
  br label %103

103:                                              ; preds = %102, %63
  store i32 0, i32* %4, align 4
  br label %117

104:                                              ; preds = %41, %3
  %105 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %106 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %107 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %112 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (%struct.bpf_verifier_env*, i8*, i64, i32, ...) @pr_vlog(%struct.bpf_verifier_env* %105, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %110, i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %104, %103, %84
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.nfp_insn_meta* @nfp_bpf_goto_meta(%struct.nfp_prog*, %struct.nfp_insn_meta*, i64) #1

declare dso_local i64 @is_mbpf_cond_jump(%struct.nfp_insn_meta*) #1

declare dso_local %struct.TYPE_10__* @list_next_entry(%struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
