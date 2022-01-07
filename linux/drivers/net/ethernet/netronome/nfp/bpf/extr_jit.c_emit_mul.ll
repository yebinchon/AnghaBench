; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_mul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_ur_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MUL_TYPE_START = common dso_local global i32 0, align 4
@MUL_STEP_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MUL_LAST = common dso_local global i32 0, align 4
@MUL_LAST_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32)* @emit_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mul(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfp_insn_ur_regs, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MUL_TYPE_START, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MUL_STEP_NONE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %73

26:                                               ; preds = %17, %5
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MUL_LAST, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MUL_LAST_2, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (...) @reg_none()
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @swreg_to_unrestricted(i32 %35, i32 %36, i32 %37, %struct.nfp_insn_ur_regs* %11)
  store i32 %38, i32* %13, align 4
  %39 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  br label %48

41:                                               ; preds = %30
  %42 = call i32 (...) @reg_none()
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @swreg_to_unrestricted(i32 %42, i32 %43, i32 %44, %struct.nfp_insn_ur_regs* %11)
  store i32 %45, i32* %13, align 4
  %46 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %41, %34
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %54 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %73

55:                                               ; preds = %48
  %56 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %57 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.nfp_insn_ur_regs, %struct.nfp_insn_ur_regs* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__emit_mul(%struct.nfp_prog* %56, i32 %58, i32 %59, i32 %60, i32 %61, i32 %63, i32 %65, i32 %67, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %55, %51, %21
  ret void
}

declare dso_local i32 @swreg_to_unrestricted(i32, i32, i32, %struct.nfp_insn_ur_regs*) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @__emit_mul(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
