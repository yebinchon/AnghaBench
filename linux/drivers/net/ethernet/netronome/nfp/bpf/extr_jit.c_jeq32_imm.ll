; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jeq32_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jeq32_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32, i32 }

@ALU_OP_XOR = common dso_local global i32 0, align 4
@BR_BEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @jeq32_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jeq32_imm(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %7 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %8 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %7, i32 0, i32 0
  store %struct.bpf_insn* %8, %struct.bpf_insn** %5, align 8
  %9 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %10 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %14 = call i32 @imm_b(%struct.nfp_prog* %13)
  %15 = call i32 @ur_load_imm_any(%struct.nfp_prog* %9, i32 %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %17 = call i32 (...) @reg_none()
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %19 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  %22 = call i32 @reg_a(i32 %21)
  %23 = load i32, i32* @ALU_OP_XOR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @emit_alu(%struct.nfp_prog* %16, i32 %17, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %27 = load i32, i32* @BR_BEQ, align 4
  %28 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %29 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @emit_br(%struct.nfp_prog* %26, i32 %27, i32 %30, i32 0)
  ret i32 0
}

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
