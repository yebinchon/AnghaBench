; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_cmp_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_cmp_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i64, %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32, i32 }
%struct.jmp_code_map = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ALU_OP_ADD = common dso_local global i32 0, align 4
@ALU_OP_SUB = common dso_local global i32 0, align 4
@ALU_OP_ADD_C = common dso_local global i32 0, align 4
@ALU_OP_SUB_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @cmp_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_imm(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jmp_code_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %13 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %14 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %13, i32 0, i32 1
  store %struct.bpf_insn* %14, %struct.bpf_insn** %6, align 8
  %15 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %16 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %19 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %11, align 4
  %22 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %23 = call %struct.jmp_code_map* @nfp_jmp_code_get(%struct.nfp_insn_meta* %22)
  store %struct.jmp_code_map* %23, %struct.jmp_code_map** %8, align 8
  %24 = load %struct.jmp_code_map*, %struct.jmp_code_map** %8, align 8
  %25 = icmp ne %struct.jmp_code_map* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %118

29:                                               ; preds = %2
  %30 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %31 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ALU_OP_ADD, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @ALU_OP_SUB, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %9, align 4
  %40 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %41 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @ALU_OP_ADD_C, align 4
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @ALU_OP_SUB_C, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %10, align 4
  %50 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %53 = call i32 @imm_b(%struct.nfp_prog* %52)
  %54 = call i32 @ur_load_imm_any(%struct.nfp_prog* %50, i32 %51, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.jmp_code_map*, %struct.jmp_code_map** %8, align 8
  %56 = getelementptr inbounds %struct.jmp_code_map, %struct.jmp_code_map* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %48
  %60 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %61 = call i32 (...) @reg_none()
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @reg_a(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @emit_alu(%struct.nfp_prog* %60, i32 %61, i32 %63, i32 %64, i32 %65)
  br label %75

67:                                               ; preds = %48
  %68 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %69 = call i32 (...) @reg_none()
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @reg_a(i32 %72)
  %74 = call i32 @emit_alu(%struct.nfp_prog* %68, i32 %69, i32 %70, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %67, %59
  %76 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %77 = call i64 @is_mbpf_jmp64(%struct.nfp_insn_meta* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %75
  %80 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = lshr i32 %81, 32
  %83 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %84 = call i32 @imm_b(%struct.nfp_prog* %83)
  %85 = call i32 @ur_load_imm_any(%struct.nfp_prog* %80, i32 %82, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.jmp_code_map*, %struct.jmp_code_map** %8, align 8
  %87 = getelementptr inbounds %struct.jmp_code_map, %struct.jmp_code_map* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %79
  %91 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %92 = call i32 (...) @reg_none()
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @reg_a(i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @emit_alu(%struct.nfp_prog* %91, i32 %92, i32 %95, i32 %96, i32 %97)
  br label %108

99:                                               ; preds = %79
  %100 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %101 = call i32 (...) @reg_none()
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @reg_a(i32 %105)
  %107 = call i32 @emit_alu(%struct.nfp_prog* %100, i32 %101, i32 %102, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %99, %90
  br label %109

109:                                              ; preds = %108, %75
  %110 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %111 = load %struct.jmp_code_map*, %struct.jmp_code_map** %8, align 8
  %112 = getelementptr inbounds %struct.jmp_code_map, %struct.jmp_code_map* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %115 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @emit_br(%struct.nfp_prog* %110, i32 %113, i32 %116, i32 0)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %109, %26
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.jmp_code_map* @nfp_jmp_code_get(%struct.nfp_insn_meta*) #1

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i64 @is_mbpf_jmp64(%struct.nfp_insn_meta*) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
