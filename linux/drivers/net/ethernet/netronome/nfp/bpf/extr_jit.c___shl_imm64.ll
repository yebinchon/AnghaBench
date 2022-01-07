; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___shl_imm64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___shl_imm64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@SHF_OP_NONE = common dso_local global i32 0, align 4
@SHF_SC_R_DSHF = common dso_local global i32 0, align 4
@SHF_SC_L_SHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, i32, i32)* @__shl_imm64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__shl_imm64(%struct.nfp_prog* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @reg_both(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @reg_a(i32 %20)
  %22 = load i32, i32* @SHF_OP_NONE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @reg_b(i32 %23)
  %25 = load i32, i32* @SHF_SC_R_DSHF, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 32, %26
  %28 = call i32 @emit_shf(%struct.nfp_prog* %15, i32 %18, i32 %21, i32 %22, i32 %24, i32 %25, i32 %27)
  %29 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @reg_both(i32 %30)
  %32 = call i32 (...) @reg_none()
  %33 = load i32, i32* @SHF_OP_NONE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @reg_b(i32 %34)
  %36 = load i32, i32* @SHF_SC_L_SHF, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @emit_shf(%struct.nfp_prog* %29, i32 %31, i32 %32, i32 %33, i32 %35, i32 %36, i32 %37)
  br label %74

39:                                               ; preds = %11
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @wrp_reg_mov(%struct.nfp_prog* %43, i32 %45, i32 %46)
  %48 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @reg_both(i32 %49)
  %51 = call i32 @wrp_immed(%struct.nfp_prog* %48, i32 %50, i32 0)
  br label %73

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 32
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @reg_both(i32 %58)
  %60 = call i32 (...) @reg_none()
  %61 = load i32, i32* @SHF_OP_NONE, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @reg_b(i32 %62)
  %64 = load i32, i32* @SHF_SC_L_SHF, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, 32
  %67 = call i32 @emit_shf(%struct.nfp_prog* %56, i32 %59, i32 %60, i32 %61, i32 %63, i32 %64, i32 %66)
  %68 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @reg_both(i32 %69)
  %71 = call i32 @wrp_immed(%struct.nfp_prog* %68, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %55, %52
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %14
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %10
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @emit_shf(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @wrp_reg_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
