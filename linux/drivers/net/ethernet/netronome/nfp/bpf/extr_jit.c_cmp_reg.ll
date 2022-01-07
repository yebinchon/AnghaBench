; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_cmp_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_cmp_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32, i32 }
%struct.jmp_code_map = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ALU_OP_SUB = common dso_local global i32 0, align 4
@ALU_OP_SUB_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @cmp_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_reg(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca %struct.jmp_code_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %10 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %10, i32 0, i32 0
  store %struct.bpf_insn* %11, %struct.bpf_insn** %6, align 8
  %12 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %13 = call %struct.jmp_code_map* @nfp_jmp_code_get(%struct.nfp_insn_meta* %12)
  store %struct.jmp_code_map* %13, %struct.jmp_code_map** %7, align 8
  %14 = load %struct.jmp_code_map*, %struct.jmp_code_map** %7, align 8
  %15 = icmp ne %struct.jmp_code_map* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 2
  store i32 %23, i32* %8, align 4
  %24 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %25 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %9, align 4
  %28 = load %struct.jmp_code_map*, %struct.jmp_code_map** %7, align 8
  %29 = getelementptr inbounds %struct.jmp_code_map, %struct.jmp_code_map* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = xor i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %32, %19
  %43 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %44 = call i32 (...) @reg_none()
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @reg_a(i32 %45)
  %47 = load i32, i32* @ALU_OP_SUB, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @reg_b(i32 %48)
  %50 = call i32 @emit_alu(%struct.nfp_prog* %43, i32 %44, i32 %46, i32 %47, i32 %49)
  %51 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %52 = call i64 @is_mbpf_jmp64(%struct.nfp_insn_meta* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %42
  %55 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %56 = call i32 (...) @reg_none()
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @reg_a(i32 %58)
  %60 = load i32, i32* @ALU_OP_SUB_C, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @reg_b(i32 %62)
  %64 = call i32 @emit_alu(%struct.nfp_prog* %55, i32 %56, i32 %59, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %54, %42
  %66 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %67 = load %struct.jmp_code_map*, %struct.jmp_code_map** %7, align 8
  %68 = getelementptr inbounds %struct.jmp_code_map, %struct.jmp_code_map* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %71 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @emit_br(%struct.nfp_prog* %66, i32 %69, i32 %72, i32 0)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.jmp_code_map* @nfp_jmp_code_get(%struct.nfp_insn_meta*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i64 @is_mbpf_jmp64(%struct.nfp_insn_meta*) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
