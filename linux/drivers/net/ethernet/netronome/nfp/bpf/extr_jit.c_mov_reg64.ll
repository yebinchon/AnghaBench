; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mov_reg64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mov_reg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32 }

@BPF_REG_10 = common dso_local global i32 0, align 4
@ALU_OP_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @mov_reg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_reg64(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
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
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %6, align 4
  %15 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %16 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %20 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BPF_REG_10, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %2
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %26 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %27 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %30 = call i32 @stack_imm(%struct.nfp_prog* %29)
  %31 = call i32 @ur_load_imm_any(%struct.nfp_prog* %25, i32 %28, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @reg_both(i32 %33)
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %36 = call i32 @stack_reg(%struct.nfp_prog* %35)
  %37 = load i32, i32* @ALU_OP_ADD, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @emit_alu(%struct.nfp_prog* %32, i32 %34, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @reg_both(i32 %42)
  %44 = call i32 @wrp_immed(%struct.nfp_prog* %40, i32 %43, i32 0)
  br label %56

45:                                               ; preds = %2
  %46 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @wrp_reg_mov(%struct.nfp_prog* %46, i32 %47, i32 %48)
  %50 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @wrp_reg_mov(%struct.nfp_prog* %50, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %45, %24
  ret i32 0
}

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @stack_imm(%struct.nfp_prog*) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @stack_reg(%struct.nfp_prog*) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @wrp_reg_mov(%struct.nfp_prog*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
