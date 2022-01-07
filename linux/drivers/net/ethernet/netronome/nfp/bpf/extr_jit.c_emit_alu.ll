; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_alu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_alu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_ur_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32)* @emit_alu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_alu(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfp_insn_ur_regs, align 4
  %12 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @swreg_to_unrestricted(i32 %13, i32 %14, i32 %15, %struct.nfp_insn_ur_regs* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %22 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %43

23:                                               ; preds = %5
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__emit_alu(%struct.nfp_prog* %24, i32 %26, i32 %28, i32 %30, i32 %31, i32 %33, i32 %35, i32 %37, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @swreg_to_unrestricted(i32, i32, i32, %struct.nfp_insn_ur_regs*) #1

declare dso_local i32 @__emit_alu(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
