; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_rtn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_rtn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_ur_regs = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32)* @emit_rtn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_rtn(%struct.nfp_prog* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_insn_ur_regs, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @reg_none()
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @reg_imm(i32 0)
  %12 = call i32 @swreg_to_unrestricted(i32 %9, i32 %10, i32 %11, %struct.nfp_insn_ur_regs* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %18 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %7, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %7, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__emit_br_alu(%struct.nfp_prog* %20, i32 %22, i32 %24, i32 0, i32 %25, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @swreg_to_unrestricted(i32, i32, i32, %struct.nfp_insn_ur_regs*) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @__emit_br_alu(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
