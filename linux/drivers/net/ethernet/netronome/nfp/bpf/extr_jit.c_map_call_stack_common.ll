; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_map_call_stack_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_map_call_stack_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i64 }
%struct.nfp_insn_meta = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NFP_CSR_ACT_LM_ADDR0 = common dso_local global i32 0, align 4
@BPF_FUNC_map_update_elem = common dso_local global i64 0, align 8
@NFP_CSR_ACT_LM_ADDR2 = common dso_local global i32 0, align 4
@BR_UNC = common dso_local global i32 0, align 4
@BR_OFF_RELO = common dso_local global i64 0, align 8
@RELO_BR_HELPER = common dso_local global i32 0, align 4
@RELO_IMMED_REL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @map_call_stack_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_call_stack_common(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %9 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %19 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %17, %22
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %8, align 8
  %26 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %27 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %2
  %35 = phi i1 [ true, %2 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %41 = call i32 @reg_b(i32 4)
  %42 = load i32, i32* @NFP_CSR_ACT_LM_ADDR0, align 4
  %43 = call i32 @emit_csr_wr(%struct.nfp_prog* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %46 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BPF_FUNC_map_update_elem, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %52 = call i32 @reg_b(i32 6)
  %53 = load i32, i32* @NFP_CSR_ACT_LM_ADDR2, align 4
  %54 = call i32 @emit_csr_wr(%struct.nfp_prog* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %44
  %56 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %57 = load i32, i32* @BR_UNC, align 4
  %58 = load i64, i64* @BR_OFF_RELO, align 8
  %59 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %60 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load i32, i32* @RELO_BR_HELPER, align 4
  %64 = call i32 @emit_br_relo(%struct.nfp_prog* %56, i32 %57, i64 %62, i32 2, i32 %63)
  %65 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %66 = call i64 @nfp_prog_current_offset(%struct.nfp_prog* %65)
  %67 = add nsw i64 %66, 2
  store i64 %67, i64* %7, align 8
  %68 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %69 = call i32 @reg_a(i32 0)
  %70 = call i32 @reg_a(i32 2)
  %71 = call i32 @wrp_mov(%struct.nfp_prog* %68, i32 %69, i32 %70)
  %72 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %73 = call i32 @reg_b(i32 0)
  %74 = load i64, i64* %7, align 8
  %75 = load i32, i32* @RELO_IMMED_REL, align 4
  %76 = call i32 @wrp_immed_relo(%struct.nfp_prog* %72, i32 %73, i64 %74, i32 %75)
  %77 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %77, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %55
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %96

84:                                               ; preds = %55
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %96

88:                                               ; preds = %84
  %89 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %90 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %91 = call i32 @stack_reg(%struct.nfp_prog* %90)
  %92 = load i32, i32* @NFP_CSR_ACT_LM_ADDR0, align 4
  %93 = call i32 @emit_csr_wr(%struct.nfp_prog* %89, i32 %91, i32 %92)
  %94 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %95 = call i32 @wrp_nops(%struct.nfp_prog* %94, i32 3)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %88, %87, %81
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @emit_csr_wr(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @emit_br_relo(%struct.nfp_prog*, i32, i64, i32, i32) #1

declare dso_local i64 @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @wrp_immed_relo(%struct.nfp_prog*, i32, i64, i32) #1

declare dso_local i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog*, i64) #1

declare dso_local i32 @stack_reg(%struct.nfp_prog*) #1

declare dso_local i32 @wrp_nops(%struct.nfp_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
