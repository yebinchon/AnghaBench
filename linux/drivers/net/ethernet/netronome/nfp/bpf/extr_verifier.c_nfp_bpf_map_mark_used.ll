; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_map_mark_used.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_map_mark_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bpf_reg_state = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bpf_offloaded_map = type { %struct.TYPE_4__, %struct.nfp_bpf_map* }
%struct.TYPE_4__ = type { i32 }
%struct.nfp_bpf_map = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"map value offset is variable\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"map value access out-of-bounds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.nfp_insn_meta*, %struct.bpf_reg_state*, i32)* @nfp_bpf_map_mark_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_map_mark_used(%struct.bpf_verifier_env* %0, %struct.nfp_insn_meta* %1, %struct.bpf_reg_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca %struct.nfp_insn_meta*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_offloaded_map*, align 8
  %11 = alloca %struct.nfp_bpf_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %7, align 8
  store %struct.bpf_reg_state* %2, %struct.bpf_reg_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %17 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tnum_is_const(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %24 = call i32 @pr_vlog(%struct.bpf_verifier_env* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %91

27:                                               ; preds = %4
  %28 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %29 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %33 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %31, %35
  %37 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %38 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %36, %39
  store i32 %40, i32* %13, align 4
  %41 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %42 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %41, i32 0, i32 0
  %43 = call i32 @BPF_LDST_BYTES(%struct.TYPE_6__* %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %45 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.bpf_offloaded_map* @map_to_offmap(i32 %46)
  store %struct.bpf_offloaded_map* %47, %struct.bpf_offloaded_map** %10, align 8
  %48 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %10, align 8
  %49 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %48, i32 0, i32 1
  %50 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %49, align 8
  store %struct.nfp_bpf_map* %50, %struct.nfp_bpf_map** %11, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add i32 %51, %52
  %54 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %10, align 8
  %55 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ugt i32 %53, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %27
  %60 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %61 = call i32 @pr_vlog(%struct.bpf_verifier_env* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %91

64:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %71 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %11, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = add i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @nfp_bpf_map_mark_used_one(%struct.bpf_verifier_env* %70, %struct.nfp_bpf_map* %71, i32 %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %5, align 4
  br label %91

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add i32 %83, %84
  %86 = urem i32 %85, 4
  %87 = sub i32 4, %86
  %88 = load i32, i32* %14, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %65

90:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %79, %59, %22
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @tnum_is_const(i32) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*) #1

declare dso_local i32 @BPF_LDST_BYTES(%struct.TYPE_6__*) #1

declare dso_local %struct.bpf_offloaded_map* @map_to_offmap(i32) #1

declare dso_local i32 @nfp_bpf_map_mark_used_one(%struct.bpf_verifier_env*, %struct.nfp_bpf_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
