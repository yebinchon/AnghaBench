; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jeq_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jeq_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32, i32 }

@ALU_OP_XOR = common dso_local global i32 0, align 4
@ALU_OP_OR = common dso_local global i32 0, align 4
@BR_BEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @jeq_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jeq_imm(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %10 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %11 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %10, i32 0, i32 0
  store %struct.bpf_insn* %11, %struct.bpf_insn** %5, align 8
  %12 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %16 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 2
  %19 = call i32 @reg_a(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 %23, 1
  %25 = call i32 @reg_b(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %2
  %29 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %32 = call i32 @imm_b(%struct.nfp_prog* %31)
  %33 = call i32 @ur_load_imm_any(%struct.nfp_prog* %29, i32 %30, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %36 = call i32 @imm_a(%struct.nfp_prog* %35)
  %37 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %38 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 2
  %41 = call i32 @reg_a(i32 %40)
  %42 = load i32, i32* @ALU_OP_XOR, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @emit_alu(%struct.nfp_prog* %34, i32 %36, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %46 = call i32 @imm_a(%struct.nfp_prog* %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %28, %2
  %48 = load i32, i32* %6, align 4
  %49 = lshr i32 %48, 32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = lshr i32 %53, 32
  %55 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %56 = call i32 @imm_b(%struct.nfp_prog* %55)
  %57 = call i32 @ur_load_imm_any(%struct.nfp_prog* %52, i32 %54, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %59 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %60 = call i32 @imm_b(%struct.nfp_prog* %59)
  %61 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %62 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 %64, 1
  %66 = call i32 @reg_a(i32 %65)
  %67 = load i32, i32* @ALU_OP_XOR, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @emit_alu(%struct.nfp_prog* %58, i32 %60, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %71 = call i32 @imm_b(%struct.nfp_prog* %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %51, %47
  %73 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %74 = call i32 (...) @reg_none()
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @ALU_OP_OR, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @emit_alu(%struct.nfp_prog* %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %80 = load i32, i32* @BR_BEQ, align 4
  %81 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %82 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @emit_br(%struct.nfp_prog* %79, i32 %80, i32 %83, i32 0)
  ret i32 0
}

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @imm_a(%struct.nfp_prog*) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
