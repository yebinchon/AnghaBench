; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_neg_reg64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_neg_reg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32 }

@ALU_OP_SUB = common dso_local global i32 0, align 4
@ALU_OP_SUB_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @neg_reg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neg_reg64(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %6 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %7 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %6, i32 0, i32 0
  store %struct.bpf_insn* %7, %struct.bpf_insn** %5, align 8
  %8 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %9 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %10 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 2
  %13 = call i32 @reg_both(i32 %12)
  %14 = call i32 @reg_imm(i32 0)
  %15 = load i32, i32* @ALU_OP_SUB, align 4
  %16 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %17 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i32 @reg_b(i32 %19)
  %21 = call i32 @emit_alu(%struct.nfp_prog* %8, i32 %13, i32 %14, i32 %15, i32 %20)
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %23 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %24 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %26, 1
  %28 = call i32 @reg_both(i32 %27)
  %29 = call i32 @reg_imm(i32 0)
  %30 = load i32, i32* @ALU_OP_SUB_C, align 4
  %31 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %32 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 2
  %35 = add nsw i32 %34, 1
  %36 = call i32 @reg_b(i32 %35)
  %37 = call i32 @emit_alu(%struct.nfp_prog* %22, i32 %28, i32 %29, i32 %30, i32 %36)
  ret i32 0
}

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @reg_b(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
