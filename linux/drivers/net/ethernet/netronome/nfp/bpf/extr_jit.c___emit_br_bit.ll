; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_br_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_br_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@OP_BR_BIT_ADDR_LO = common dso_local global i32 0, align 4
@OP_BR_BIT_BASE = common dso_local global i32 0, align 4
@OP_BR_BIT_A_SRC = common dso_local global i32 0, align 4
@OP_BR_BIT_B_SRC = common dso_local global i32 0, align 4
@OP_BR_BIT_BV = common dso_local global i32 0, align 4
@OP_BR_BIT_DEFBR = common dso_local global i32 0, align 4
@OP_BR_BIT_ADDR_HI = common dso_local global i32 0, align 4
@OP_BR_BIT_SRC_LMEXTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32, i32, i32)* @__emit_br_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__emit_br_bit(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nfp_prog*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @OP_BR_BIT_ADDR_LO, align 4
  %20 = load i32, i32* @OP_BR_BIT_ADDR_LO, align 4
  %21 = call i32 @__bf_shf(i32 %20)
  %22 = ashr i32 %19, %21
  %23 = and i32 %18, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* @OP_BR_BIT_BASE, align 4
  %29 = load i32, i32* @OP_BR_BIT_A_SRC, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @FIELD_PREP(i32 %29, i32 %30)
  %32 = or i32 %28, %31
  %33 = load i32, i32* @OP_BR_BIT_B_SRC, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @FIELD_PREP(i32 %33, i32 %34)
  %36 = or i32 %32, %35
  %37 = load i32, i32* @OP_BR_BIT_BV, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @FIELD_PREP(i32 %37, i32 %38)
  %40 = or i32 %36, %39
  %41 = load i32, i32* @OP_BR_BIT_DEFBR, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @FIELD_PREP(i32 %41, i32 %42)
  %44 = or i32 %40, %43
  %45 = load i32, i32* @OP_BR_BIT_ADDR_LO, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @FIELD_PREP(i32 %45, i32 %46)
  %48 = or i32 %44, %47
  %49 = load i32, i32* @OP_BR_BIT_ADDR_HI, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @FIELD_PREP(i32 %49, i32 %50)
  %52 = or i32 %48, %51
  %53 = load i32, i32* @OP_BR_BIT_SRC_LMEXTN, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @FIELD_PREP(i32 %53, i32 %54)
  %56 = or i32 %52, %55
  store i32 %56, i32* %17, align 4
  %57 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @nfp_prog_push(%struct.nfp_prog* %57, i32 %58)
  ret void
}

declare dso_local i32 @__bf_shf(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @nfp_prog_push(%struct.nfp_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
