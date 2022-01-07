; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jeq_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jeq_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32, i32 }

@ALU_OP_XOR = common dso_local global i32 0, align 4
@ALU_OP_OR = common dso_local global i32 0, align 4
@BR_BEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @jeq_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jeq_reg(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %6 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %7 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %6, i32 0, i32 0
  store %struct.bpf_insn* %7, %struct.bpf_insn** %5, align 8
  %8 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %9 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %10 = call i32 @imm_a(%struct.nfp_prog* %9)
  %11 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %12 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  %15 = call i32 @reg_a(i32 %14)
  %16 = load i32, i32* @ALU_OP_XOR, align 4
  %17 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %18 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 2
  %21 = call i32 @reg_b(i32 %20)
  %22 = call i32 @emit_alu(%struct.nfp_prog* %8, i32 %10, i32 %15, i32 %16, i32 %21)
  %23 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %24 = call i64 @is_mbpf_jmp64(%struct.nfp_insn_meta* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %2
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %29 = call i32 @imm_b(%struct.nfp_prog* %28)
  %30 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %31 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  %34 = add nsw i32 %33, 1
  %35 = call i32 @reg_a(i32 %34)
  %36 = load i32, i32* @ALU_OP_XOR, align 4
  %37 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %38 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %40, 1
  %42 = call i32 @reg_b(i32 %41)
  %43 = call i32 @emit_alu(%struct.nfp_prog* %27, i32 %29, i32 %35, i32 %36, i32 %42)
  %44 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %45 = call i32 (...) @reg_none()
  %46 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %47 = call i32 @imm_a(%struct.nfp_prog* %46)
  %48 = load i32, i32* @ALU_OP_OR, align 4
  %49 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %50 = call i32 @imm_b(%struct.nfp_prog* %49)
  %51 = call i32 @emit_alu(%struct.nfp_prog* %44, i32 %45, i32 %47, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %26, %2
  %53 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %54 = load i32, i32* @BR_BEQ, align 4
  %55 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %56 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @emit_br(%struct.nfp_prog* %53, i32 %54, i32 %57, i32 0)
  ret i32 0
}

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @imm_a(%struct.nfp_prog*) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i64 @is_mbpf_jmp64(%struct.nfp_insn_meta*) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
