; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_ld_field_any.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_ld_field_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_re_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32)* @emit_ld_field_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ld_field_any(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nfp_prog*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfp_insn_re_regs, align 4
  %16 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @swreg_to_restricted(i32 %17, i32 %18, i32 %19, %struct.nfp_insn_re_regs* %15, i32 1)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load i32, i32* %16, align 4
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %26 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %48

27:                                               ; preds = %7
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = getelementptr inbounds %struct.nfp_insn_re_regs, %struct.nfp_insn_re_regs* %15, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.nfp_insn_re_regs, %struct.nfp_insn_re_regs* %15, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %13, align 4
  %36 = getelementptr inbounds %struct.nfp_insn_re_regs, %struct.nfp_insn_re_regs* %15, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = getelementptr inbounds %struct.nfp_insn_re_regs, %struct.nfp_insn_re_regs* %15, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.nfp_insn_re_regs, %struct.nfp_insn_re_regs* %15, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.nfp_insn_re_regs, %struct.nfp_insn_re_regs* %15, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.nfp_insn_re_regs, %struct.nfp_insn_re_regs* %15, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__emit_ld_field(%struct.nfp_prog* %28, i32 %29, i32 %31, i32 %32, i32 %34, i32 %35, i32 %37, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @swreg_to_restricted(i32, i32, i32, %struct.nfp_insn_re_regs*, i32) #1

declare dso_local i32 @__emit_ld_field(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
