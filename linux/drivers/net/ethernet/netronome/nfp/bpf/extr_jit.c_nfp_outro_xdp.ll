; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_outro_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_outro_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i8*, i8* }

@BR_UNC = common dso_local global i32 0, align 4
@BR_OFF_RELO = common dso_local global i32 0, align 4
@RELO_BR_NEXT_PKT = common dso_local global i32 0, align 4
@NFP_BPF_ABI_FLAGS = common dso_local global i32 0, align 4
@SHF_SC_L_SHF = common dso_local global i32 0, align 4
@ALU_OP_SUB = common dso_local global i32 0, align 4
@BR_BLO = common dso_local global i32 0, align 4
@SHF_OP_NONE = common dso_local global i32 0, align 4
@ALU_OP_OR = common dso_local global i32 0, align 4
@SHF_OP_AND = common dso_local global i32 0, align 4
@SHF_SC_R_SHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*)* @nfp_outro_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_outro_xdp(%struct.nfp_prog* %0) #0 {
  %2 = alloca %struct.nfp_prog*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %2, align 8
  %3 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %4 = call i8* @nfp_prog_current_offset(%struct.nfp_prog* %3)
  %5 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %6 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %5, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %8 = load i32, i32* @BR_UNC, align 4
  %9 = load i32, i32* @BR_OFF_RELO, align 4
  %10 = load i32, i32* @RELO_BR_NEXT_PKT, align 4
  %11 = call i32 @emit_br_relo(%struct.nfp_prog* %7, i32 %8, i32 %9, i32 2, i32 %10)
  %12 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %13 = call i32 @reg_a(i32 0)
  %14 = load i32, i32* @NFP_BPF_ABI_FLAGS, align 4
  %15 = call i32 @wrp_mov(%struct.nfp_prog* %12, i32 %13, i32 %14)
  %16 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %17 = call i32 @reg_a(i32 0)
  %18 = call i32 @reg_imm(i32 130)
  %19 = load i32, i32* @SHF_SC_L_SHF, align 4
  %20 = call i32 @emit_ld_field(%struct.nfp_prog* %16, i32 %17, i32 12, i32 %18, i32 %19, i32 16)
  %21 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %22 = call i8* @nfp_prog_current_offset(%struct.nfp_prog* %21)
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %24 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %26 = call i32 (...) @reg_none()
  %27 = call i32 @reg_imm(i32 3)
  %28 = load i32, i32* @ALU_OP_SUB, align 4
  %29 = call i32 @reg_b(i32 0)
  %30 = call i32 @emit_alu(%struct.nfp_prog* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %32 = load i32, i32* @BR_BLO, align 4
  %33 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %34 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @emit_br(%struct.nfp_prog* %31, i32 %32, i8* %35, i32 0)
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %38 = call i32 @reg_b(i32 2)
  %39 = call i32 @wrp_immed(%struct.nfp_prog* %37, i32 %38, i32 1141973634)
  %40 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %41 = call i32 @reg_a(i32 1)
  %42 = call i32 (...) @reg_none()
  %43 = load i32, i32* @SHF_OP_NONE, align 4
  %44 = call i32 @reg_b(i32 0)
  %45 = load i32, i32* @SHF_SC_L_SHF, align 4
  %46 = call i32 @emit_shf(%struct.nfp_prog* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 3)
  %47 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %48 = call i32 (...) @reg_none()
  %49 = call i32 @reg_a(i32 1)
  %50 = load i32, i32* @ALU_OP_OR, align 4
  %51 = call i32 @reg_imm(i32 0)
  %52 = call i32 @emit_alu(%struct.nfp_prog* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %54 = call i32 @reg_b(i32 2)
  %55 = call i32 @reg_imm(i32 255)
  %56 = load i32, i32* @SHF_OP_AND, align 4
  %57 = call i32 @reg_b(i32 2)
  %58 = load i32, i32* @SHF_SC_R_SHF, align 4
  %59 = call i32 @emit_shf(%struct.nfp_prog* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 0)
  %60 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %61 = load i32, i32* @BR_UNC, align 4
  %62 = load i32, i32* @BR_OFF_RELO, align 4
  %63 = load i32, i32* @RELO_BR_NEXT_PKT, align 4
  %64 = call i32 @emit_br_relo(%struct.nfp_prog* %60, i32 %61, i32 %62, i32 2, i32 %63)
  %65 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %66 = call i32 @reg_a(i32 0)
  %67 = load i32, i32* @NFP_BPF_ABI_FLAGS, align 4
  %68 = call i32 @wrp_mov(%struct.nfp_prog* %65, i32 %66, i32 %67)
  %69 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %70 = call i32 @reg_a(i32 0)
  %71 = call i32 @reg_b(i32 2)
  %72 = load i32, i32* @SHF_SC_L_SHF, align 4
  %73 = call i32 @emit_ld_field(%struct.nfp_prog* %69, i32 %70, i32 12, i32 %71, i32 %72, i32 16)
  ret void
}

declare dso_local i8* @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @emit_br_relo(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @emit_ld_field(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i8*, i32) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @emit_shf(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
