; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_immed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_immed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_ur_regs = type { i32, i32, i32, i32, i32, i32 }

@NN_REG_IMM = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@NN_REG_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32, i32)* @emit_immed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_immed(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nfp_prog*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfp_insn_ur_regs, align 4
  %14 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @swreg_type(i32 %15)
  %17 = load i64, i64* @NN_REG_IMM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %23 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %65

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 255
  %29 = call i32 @reg_imm(i32 %28)
  %30 = call i32 @swreg_to_unrestricted(i32 %25, i32 %26, i32 %29, %struct.nfp_insn_ur_regs* %13)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %36 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %65

37:                                               ; preds = %24
  %38 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @swreg_type(i32 %39)
  %41 = load i64, i64* @NN_REG_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %13, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  br label %49

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %13, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ]
  %51 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %13, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %13, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %13, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %13, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__emit_immed(%struct.nfp_prog* %38, i32 %50, i32 %52, i32 %54, i32 %55, i32 %56, i32 %57, i32 %59, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %49, %33, %19
  ret void
}

declare dso_local i64 @swreg_type(i32) #1

declare dso_local i32 @swreg_to_unrestricted(i32, i32, i32, %struct.nfp_insn_ur_regs*) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @__emit_immed(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
