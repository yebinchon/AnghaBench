; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jset_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jset_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32, i32 }

@ALU_OP_AND = common dso_local global i32 0, align 4
@ALU_OP_OR = common dso_local global i32 0, align 4
@BR_BNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @jset_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jset_imm(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %9 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %9, i32 0, i32 0
  store %struct.bpf_insn* %10, %struct.bpf_insn** %5, align 8
  %11 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %12 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %21 = call i32 @imm_b(%struct.nfp_prog* %20)
  %22 = call i32 @ur_load_imm_any(%struct.nfp_prog* %18, i32 %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %25 = call i32 @imm_b(%struct.nfp_prog* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @reg_a(i32 %26)
  %28 = load i32, i32* @ALU_OP_AND, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @emit_alu(%struct.nfp_prog* %23, i32 %25, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %32 = call i64 @is_mbpf_jmp64(%struct.nfp_insn_meta* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %40 = call i32 (...) @reg_none()
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @reg_a(i32 %42)
  %44 = load i32, i32* @ALU_OP_OR, align 4
  %45 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %46 = call i32 @imm_b(%struct.nfp_prog* %45)
  %47 = call i32 @emit_alu(%struct.nfp_prog* %39, i32 %40, i32 %43, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %38, %34, %2
  %49 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %50 = load i32, i32* @BR_BNE, align 4
  %51 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %52 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @emit_br(%struct.nfp_prog* %49, i32 %50, i32 %53, i32 0)
  ret i32 0
}

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i64 @is_mbpf_jmp64(%struct.nfp_insn_meta*) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
