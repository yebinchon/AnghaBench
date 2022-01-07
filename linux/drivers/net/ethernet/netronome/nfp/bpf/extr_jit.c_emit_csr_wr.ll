; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_csr_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_csr_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_ur_regs = type { i32, i32, i32 }

@NN_REG_IMM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32)* @emit_csr_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_csr_wr(%struct.nfp_prog* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_insn_ur_regs, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @swreg_type(i32 %9)
  %11 = load i64, i64* @NN_REG_IMM, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = call i32 (...) @reg_none()
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (...) @reg_none()
  %17 = call i32 @swreg_to_unrestricted(i32 %14, i32 %15, i32 %16, %struct.nfp_insn_ur_regs* %7)
  store i32 %17, i32* %8, align 4
  %18 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %7, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  br label %26

21:                                               ; preds = %3
  %22 = call i32 (...) @reg_none()
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @reg_imm(i32 0)
  %25 = call i32 @swreg_to_unrestricted(i32 %22, i32 %23, i32 %24, %struct.nfp_insn_ur_regs* %7)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %21, %13
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %32 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %35 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %7, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__emit_lcsr(%struct.nfp_prog* %34, i32 %36, i32 %38, i32 1, i32 %39, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %33, %29
  ret void
}

declare dso_local i64 @swreg_type(i32) #1

declare dso_local i32 @swreg_to_unrestricted(i32, i32, i32, %struct.nfp_insn_ur_regs*) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @__emit_lcsr(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
