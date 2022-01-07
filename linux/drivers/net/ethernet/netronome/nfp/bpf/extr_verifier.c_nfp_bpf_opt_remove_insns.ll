; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_opt_remove_insns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_opt_remove_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.bpf_insn_aux_data*, %struct.TYPE_6__* }
%struct.bpf_insn_aux_data = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nfp_prog* }
%struct.nfp_prog = type { i32, %struct.nfp_insn_meta* }
%struct.nfp_insn_meta = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FLAG_INSN_SKIP_VERIFIER_OPT = common dso_local global i32 0, align 4
@l = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_bpf_opt_remove_insns(%struct.bpf_verifier_env* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nfp_prog*, align 8
  %9 = alloca %struct.bpf_insn_aux_data*, align 8
  %10 = alloca %struct.nfp_insn_meta*, align 8
  %11 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.nfp_prog*, %struct.nfp_prog** %19, align 8
  store %struct.nfp_prog* %20, %struct.nfp_prog** %8, align 8
  %21 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %22 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %21, i32 0, i32 0
  %23 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %22, align 8
  store %struct.bpf_insn_aux_data* %23, %struct.bpf_insn_aux_data** %9, align 8
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %25 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %24, i32 0, i32 1
  %26 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %25, align 8
  store %struct.nfp_insn_meta* %26, %struct.nfp_insn_meta** %10, align 8
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %28 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %29 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %29, i64 %30
  %32 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.nfp_insn_meta* @nfp_bpf_goto_meta(%struct.nfp_prog* %27, %struct.nfp_insn_meta* %28, i32 %33)
  store %struct.nfp_insn_meta* %34, %struct.nfp_insn_meta** %10, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %71, %3
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %42 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %41, i32 0, i32 1
  %43 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %44 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %43, i32 0, i32 0
  %45 = icmp eq i32* %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %75

52:                                               ; preds = %40
  %53 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %54 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @FLAG_INSN_SKIP_VERIFIER_OPT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* @FLAG_INSN_SKIP_VERIFIER_OPT, align 4
  %64 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %65 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %10, align 8
  %69 = load i32, i32* @l, align 4
  %70 = call %struct.nfp_insn_meta* @list_next_entry(%struct.nfp_insn_meta* %68, i32 %69)
  store %struct.nfp_insn_meta* %70, %struct.nfp_insn_meta** %10, align 8
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %35

74:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.nfp_insn_meta* @nfp_bpf_goto_meta(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.nfp_insn_meta* @list_next_entry(%struct.nfp_insn_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
