; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jne_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jne_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32, i32 }

@ALU_OP_NONE = common dso_local global i32 0, align 4
@ALU_OP_OR = common dso_local global i32 0, align 4
@BR_BNE = common dso_local global i32 0, align 4
@ALU_OP_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @jne_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jne_imm(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %10 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %10, i32 0, i32 0
  store %struct.bpf_insn* %11, %struct.bpf_insn** %6, align 8
  %12 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %13 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %16 = call i32 @is_mbpf_jmp32(%struct.nfp_insn_meta* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %24 = call i32 (...) @reg_none()
  %25 = call i32 (...) @reg_none()
  %26 = load i32, i32* @ALU_OP_NONE, align 4
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %28 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  %31 = call i32 @reg_b(i32 %30)
  %32 = call i32 @emit_alu(%struct.nfp_prog* %23, i32 %24, i32 %25, i32 %26, i32 %31)
  br label %49

33:                                               ; preds = %19
  %34 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %35 = call i32 (...) @reg_none()
  %36 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 2
  %40 = call i32 @reg_a(i32 %39)
  %41 = load i32, i32* @ALU_OP_OR, align 4
  %42 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 2
  %46 = add nsw i32 %45, 1
  %47 = call i32 @reg_b(i32 %46)
  %48 = call i32 @emit_alu(%struct.nfp_prog* %34, i32 %35, i32 %40, i32 %41, i32 %47)
  br label %49

49:                                               ; preds = %33, %22
  %50 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %51 = load i32, i32* @BR_BNE, align 4
  %52 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %53 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @emit_br(%struct.nfp_prog* %50, i32 %51, i32 %54, i32 0)
  store i32 0, i32* %3, align 4
  br label %105

56:                                               ; preds = %2
  %57 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %60 = call i32 @imm_b(%struct.nfp_prog* %59)
  %61 = call i32 @ur_load_imm_any(%struct.nfp_prog* %57, i32 %58, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %63 = call i32 (...) @reg_none()
  %64 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %65 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  %68 = call i32 @reg_a(i32 %67)
  %69 = load i32, i32* @ALU_OP_XOR, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @emit_alu(%struct.nfp_prog* %62, i32 %63, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %73 = load i32, i32* @BR_BNE, align 4
  %74 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %75 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @emit_br(%struct.nfp_prog* %72, i32 %73, i32 %76, i32 0)
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %105

81:                                               ; preds = %56
  %82 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = lshr i32 %83, 32
  %85 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %86 = call i32 @imm_b(%struct.nfp_prog* %85)
  %87 = call i32 @ur_load_imm_any(%struct.nfp_prog* %82, i32 %84, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %89 = call i32 (...) @reg_none()
  %90 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %91 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 2
  %94 = add nsw i32 %93, 1
  %95 = call i32 @reg_a(i32 %94)
  %96 = load i32, i32* @ALU_OP_XOR, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @emit_alu(%struct.nfp_prog* %88, i32 %89, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %100 = load i32, i32* @BR_BNE, align 4
  %101 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %102 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @emit_br(%struct.nfp_prog* %99, i32 %100, i32 %103, i32 0)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %81, %80, %49
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @is_mbpf_jmp32(%struct.nfp_insn_meta*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i32, i32) #1

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
