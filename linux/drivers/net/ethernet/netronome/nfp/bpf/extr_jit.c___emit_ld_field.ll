; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_ld_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_ld_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@OP_LDF_BASE = common dso_local global i32 0, align 4
@OP_LDF_A_SRC = common dso_local global i32 0, align 4
@OP_LDF_SC = common dso_local global i32 0, align 4
@OP_LDF_B_SRC = common dso_local global i32 0, align 4
@OP_LDF_I8 = common dso_local global i32 0, align 4
@OP_LDF_SW = common dso_local global i32 0, align 4
@OP_LDF_ZF = common dso_local global i32 0, align 4
@OP_LDF_BMASK = common dso_local global i32 0, align 4
@OP_LDF_SHF = common dso_local global i32 0, align 4
@OP_LDF_WR_AB = common dso_local global i32 0, align 4
@OP_LDF_SRC_LMEXTN = common dso_local global i32 0, align 4
@OP_LDF_DST_LMEXTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @__emit_ld_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__emit_ld_field(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.nfp_prog*, align 8
  %14 = alloca i32, align 4
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
  store %struct.nfp_prog* %0, %struct.nfp_prog** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load i32, i32* @OP_LDF_BASE, align 4
  %27 = load i32, i32* @OP_LDF_A_SRC, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @FIELD_PREP(i32 %27, i32 %28)
  %30 = or i32 %26, %29
  %31 = load i32, i32* @OP_LDF_SC, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @FIELD_PREP(i32 %31, i32 %32)
  %34 = or i32 %30, %33
  %35 = load i32, i32* @OP_LDF_B_SRC, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @FIELD_PREP(i32 %35, i32 %36)
  %38 = or i32 %34, %37
  %39 = load i32, i32* @OP_LDF_I8, align 4
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @FIELD_PREP(i32 %39, i32 %40)
  %42 = or i32 %38, %41
  %43 = load i32, i32* @OP_LDF_SW, align 4
  %44 = load i32, i32* %21, align 4
  %45 = call i32 @FIELD_PREP(i32 %43, i32 %44)
  %46 = or i32 %42, %45
  %47 = load i32, i32* @OP_LDF_ZF, align 4
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @FIELD_PREP(i32 %47, i32 %48)
  %50 = or i32 %46, %49
  %51 = load i32, i32* @OP_LDF_BMASK, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @FIELD_PREP(i32 %51, i32 %52)
  %54 = or i32 %50, %53
  %55 = load i32, i32* @OP_LDF_SHF, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @FIELD_PREP(i32 %55, i32 %56)
  %58 = or i32 %54, %57
  %59 = load i32, i32* @OP_LDF_WR_AB, align 4
  %60 = load i32, i32* %22, align 4
  %61 = call i32 @FIELD_PREP(i32 %59, i32 %60)
  %62 = or i32 %58, %61
  %63 = load i32, i32* @OP_LDF_SRC_LMEXTN, align 4
  %64 = load i32, i32* %24, align 4
  %65 = call i32 @FIELD_PREP(i32 %63, i32 %64)
  %66 = or i32 %62, %65
  %67 = load i32, i32* @OP_LDF_DST_LMEXTN, align 4
  %68 = load i32, i32* %23, align 4
  %69 = call i32 @FIELD_PREP(i32 %67, i32 %68)
  %70 = or i32 %66, %69
  store i32 %70, i32* %25, align 4
  %71 = load %struct.nfp_prog*, %struct.nfp_prog** %13, align 8
  %72 = load i32, i32* %25, align 4
  %73 = call i32 @nfp_prog_push(%struct.nfp_prog* %71, i32 %72)
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @nfp_prog_push(%struct.nfp_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
