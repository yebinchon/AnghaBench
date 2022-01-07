; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_shf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_shf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@OP_SHF_SHIFT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SHF_SC_L_SHF = common dso_local global i32 0, align 4
@OP_SHF_BASE = common dso_local global i32 0, align 4
@OP_SHF_A_SRC = common dso_local global i32 0, align 4
@OP_SHF_SC = common dso_local global i32 0, align 4
@OP_SHF_B_SRC = common dso_local global i32 0, align 4
@OP_SHF_I8 = common dso_local global i32 0, align 4
@OP_SHF_SW = common dso_local global i32 0, align 4
@OP_SHF_DST = common dso_local global i32 0, align 4
@OP_SHF_OP = common dso_local global i32 0, align 4
@OP_SHF_DST_AB = common dso_local global i32 0, align 4
@OP_SHF_WR_AB = common dso_local global i32 0, align 4
@OP_SHF_SRC_LMEXTN = common dso_local global i32 0, align 4
@OP_SHF_DST_LMEXTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @__emit_shf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__emit_shf(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.nfp_prog*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %28 = load i32, i32* @OP_SHF_SHIFT, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @FIELD_FIT(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %13
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %14, align 8
  %36 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %100

37:                                               ; preds = %13
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @SHF_SC_L_SHF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %18, align 4
  %46 = sub nsw i32 32, %45
  store i32 %46, i32* %18, align 4
  br label %47

47:                                               ; preds = %44, %41, %37
  %48 = load i32, i32* @OP_SHF_BASE, align 4
  %49 = load i32, i32* @OP_SHF_A_SRC, align 4
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @FIELD_PREP(i32 %49, i32 %50)
  %52 = or i32 %48, %51
  %53 = load i32, i32* @OP_SHF_SC, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @FIELD_PREP(i32 %53, i32 %54)
  %56 = or i32 %52, %55
  %57 = load i32, i32* @OP_SHF_B_SRC, align 4
  %58 = load i32, i32* %21, align 4
  %59 = call i32 @FIELD_PREP(i32 %57, i32 %58)
  %60 = or i32 %56, %59
  %61 = load i32, i32* @OP_SHF_I8, align 4
  %62 = load i32, i32* %22, align 4
  %63 = call i32 @FIELD_PREP(i32 %61, i32 %62)
  %64 = or i32 %60, %63
  %65 = load i32, i32* @OP_SHF_SW, align 4
  %66 = load i32, i32* %23, align 4
  %67 = call i32 @FIELD_PREP(i32 %65, i32 %66)
  %68 = or i32 %64, %67
  %69 = load i32, i32* @OP_SHF_DST, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @FIELD_PREP(i32 %69, i32 %70)
  %72 = or i32 %68, %71
  %73 = load i32, i32* @OP_SHF_SHIFT, align 4
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @FIELD_PREP(i32 %73, i32 %74)
  %76 = or i32 %72, %75
  %77 = load i32, i32* @OP_SHF_OP, align 4
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @FIELD_PREP(i32 %77, i32 %78)
  %80 = or i32 %76, %79
  %81 = load i32, i32* @OP_SHF_DST_AB, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @FIELD_PREP(i32 %81, i32 %82)
  %84 = or i32 %80, %83
  %85 = load i32, i32* @OP_SHF_WR_AB, align 4
  %86 = load i32, i32* %24, align 4
  %87 = call i32 @FIELD_PREP(i32 %85, i32 %86)
  %88 = or i32 %84, %87
  %89 = load i32, i32* @OP_SHF_SRC_LMEXTN, align 4
  %90 = load i32, i32* %26, align 4
  %91 = call i32 @FIELD_PREP(i32 %89, i32 %90)
  %92 = or i32 %88, %91
  %93 = load i32, i32* @OP_SHF_DST_LMEXTN, align 4
  %94 = load i32, i32* %25, align 4
  %95 = call i32 @FIELD_PREP(i32 %93, i32 %94)
  %96 = or i32 %92, %95
  store i32 %96, i32* %27, align 4
  %97 = load %struct.nfp_prog*, %struct.nfp_prog** %14, align 8
  %98 = load i32, i32* %27, align 4
  %99 = call i32 @nfp_prog_push(%struct.nfp_prog* %97, i32 %98)
  br label %100

100:                                              ; preds = %47, %32
  ret void
}

declare dso_local i32 @FIELD_FIT(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @nfp_prog_push(%struct.nfp_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
