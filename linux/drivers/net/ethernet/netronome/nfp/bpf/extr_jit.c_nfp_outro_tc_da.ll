; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_outro_tc_da.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_outro_tc_da.c"
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
@SHF_OP_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*)* @nfp_outro_tc_da to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_outro_tc_da(%struct.nfp_prog* %0) #0 {
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
  %18 = call i32 @reg_imm(i32 17)
  %19 = load i32, i32* @SHF_SC_L_SHF, align 4
  %20 = call i32 @emit_ld_field(%struct.nfp_prog* %16, i32 %17, i32 12, i32 %18, i32 %19, i32 16)
  %21 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %22 = call i8* @nfp_prog_current_offset(%struct.nfp_prog* %21)
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %24 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %26 = call i32 (...) @reg_none()
  %27 = call i32 @reg_imm(i32 7)
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
  %38 = call i32 @reg_a(i32 0)
  %39 = load i32, i32* @NFP_BPF_ABI_FLAGS, align 4
  %40 = call i32 @wrp_mov(%struct.nfp_prog* %37, i32 %38, i32 %39)
  %41 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %42 = call i32 @reg_b(i32 2)
  %43 = call i32 @wrp_immed(%struct.nfp_prog* %41, i32 %42, i32 1092751889)
  %44 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %45 = call i32 @reg_b(i32 3)
  %46 = call i32 @wrp_immed(%struct.nfp_prog* %44, i32 %45, i32 1090523665)
  %47 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %48 = call i32 @reg_a(i32 1)
  %49 = call i32 (...) @reg_none()
  %50 = load i32, i32* @SHF_OP_NONE, align 4
  %51 = call i32 @reg_b(i32 0)
  %52 = load i32, i32* @SHF_SC_L_SHF, align 4
  %53 = call i32 @emit_shf(%struct.nfp_prog* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 2)
  %54 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %55 = call i32 (...) @reg_none()
  %56 = call i32 @reg_a(i32 1)
  %57 = load i32, i32* @ALU_OP_OR, align 4
  %58 = call i32 @reg_imm(i32 0)
  %59 = call i32 @emit_alu(%struct.nfp_prog* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %61 = call i32 @reg_a(i32 2)
  %62 = call i32 @reg_imm(i32 15)
  %63 = load i32, i32* @SHF_OP_AND, align 4
  %64 = call i32 @reg_b(i32 2)
  %65 = load i32, i32* @SHF_SC_R_SHF, align 4
  %66 = call i32 @emit_shf(%struct.nfp_prog* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 0)
  %67 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %68 = call i32 (...) @reg_none()
  %69 = call i32 @reg_a(i32 1)
  %70 = load i32, i32* @ALU_OP_OR, align 4
  %71 = call i32 @reg_imm(i32 0)
  %72 = call i32 @emit_alu(%struct.nfp_prog* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %74 = call i32 @reg_b(i32 2)
  %75 = call i32 @reg_imm(i32 15)
  %76 = load i32, i32* @SHF_OP_AND, align 4
  %77 = call i32 @reg_b(i32 3)
  %78 = load i32, i32* @SHF_SC_R_SHF, align 4
  %79 = call i32 @emit_shf(%struct.nfp_prog* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 0)
  %80 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %81 = load i32, i32* @BR_UNC, align 4
  %82 = load i32, i32* @BR_OFF_RELO, align 4
  %83 = load i32, i32* @RELO_BR_NEXT_PKT, align 4
  %84 = call i32 @emit_br_relo(%struct.nfp_prog* %80, i32 %81, i32 %82, i32 2, i32 %83)
  %85 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %86 = call i32 @reg_b(i32 2)
  %87 = call i32 @reg_a(i32 2)
  %88 = load i32, i32* @SHF_OP_OR, align 4
  %89 = call i32 @reg_b(i32 2)
  %90 = load i32, i32* @SHF_SC_L_SHF, align 4
  %91 = call i32 @emit_shf(%struct.nfp_prog* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 4)
  %92 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %93 = call i32 @reg_a(i32 0)
  %94 = call i32 @reg_b(i32 2)
  %95 = load i32, i32* @SHF_SC_L_SHF, align 4
  %96 = call i32 @emit_ld_field(%struct.nfp_prog* %92, i32 %93, i32 12, i32 %94, i32 %95, i32 16)
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
