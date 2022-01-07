; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___ashr_imm64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___ashr_imm64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@SHF_OP_NONE = common dso_local global i32 0, align 4
@SHF_SC_R_DSHF = common dso_local global i32 0, align 4
@ALU_OP_OR = common dso_local global i32 0, align 4
@SHF_OP_ASHR = common dso_local global i32 0, align 4
@SHF_SC_R_SHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, i32, i32)* @__ashr_imm64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ashr_imm64(%struct.nfp_prog* %0, i32 %1, i32 %2) #0 {
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
  br label %105

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @reg_both(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @reg_a(i32 %19)
  %21 = load i32, i32* @SHF_OP_NONE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @reg_b(i32 %22)
  %24 = load i32, i32* @SHF_SC_R_DSHF, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @emit_shf(%struct.nfp_prog* %15, i32 %17, i32 %20, i32 %21, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %28 = call i32 (...) @reg_none()
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @reg_a(i32 %30)
  %32 = load i32, i32* @ALU_OP_OR, align 4
  %33 = call i32 @reg_imm(i32 0)
  %34 = call i32 @emit_alu(%struct.nfp_prog* %27, i32 %28, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @reg_both(i32 %37)
  %39 = call i32 (...) @reg_none()
  %40 = load i32, i32* @SHF_OP_ASHR, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @reg_b(i32 %42)
  %44 = load i32, i32* @SHF_SC_R_SHF, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @emit_shf(%struct.nfp_prog* %35, i32 %38, i32 %39, i32 %40, i32 %43, i32 %44, i32 %45)
  br label %104

47:                                               ; preds = %11
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @wrp_reg_mov(%struct.nfp_prog* %51, i32 %52, i32 %54)
  %56 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @reg_both(i32 %58)
  %60 = call i32 (...) @reg_none()
  %61 = load i32, i32* @SHF_OP_ASHR, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @reg_b(i32 %63)
  %65 = load i32, i32* @SHF_SC_R_SHF, align 4
  %66 = call i32 @emit_shf(%struct.nfp_prog* %56, i32 %59, i32 %60, i32 %61, i32 %64, i32 %65, i32 31)
  br label %103

67:                                               ; preds = %47
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %68, 32
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %72 = call i32 (...) @reg_none()
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @reg_a(i32 %74)
  %76 = load i32, i32* @ALU_OP_OR, align 4
  %77 = call i32 @reg_imm(i32 0)
  %78 = call i32 @emit_alu(%struct.nfp_prog* %71, i32 %72, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @reg_both(i32 %80)
  %82 = call i32 (...) @reg_none()
  %83 = load i32, i32* @SHF_OP_ASHR, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @reg_b(i32 %85)
  %87 = load i32, i32* @SHF_SC_R_SHF, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 32
  %90 = call i32 @emit_shf(%struct.nfp_prog* %79, i32 %81, i32 %82, i32 %83, i32 %86, i32 %87, i32 %89)
  %91 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @reg_both(i32 %93)
  %95 = call i32 (...) @reg_none()
  %96 = load i32, i32* @SHF_OP_ASHR, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @reg_b(i32 %98)
  %100 = load i32, i32* @SHF_SC_R_SHF, align 4
  %101 = call i32 @emit_shf(%struct.nfp_prog* %91, i32 %94, i32 %95, i32 %96, i32 %99, i32 %100, i32 31)
  br label %102

102:                                              ; preds = %70, %67
  br label %103

103:                                              ; preds = %102, %50
  br label %104

104:                                              ; preds = %103, %14
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %10
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @emit_shf(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @wrp_reg_mov(%struct.nfp_prog*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
