; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_br.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c___emit_br.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@OP_BR_ADDR_LO = common dso_local global i32 0, align 4
@OP_BR_BASE = common dso_local global i32 0, align 4
@OP_BR_MASK = common dso_local global i32 0, align 4
@OP_BR_EV_PIP = common dso_local global i32 0, align 4
@OP_BR_CSS = common dso_local global i32 0, align 4
@OP_BR_DEFBR = common dso_local global i32 0, align 4
@OP_BR_ADDR_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32, i32)* @__emit_br to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__emit_br(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nfp_prog*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @OP_BR_ADDR_LO, align 4
  %18 = load i32, i32* @OP_BR_ADDR_LO, align 4
  %19 = call i32 @__bf_shf(i32 %18)
  %20 = ashr i32 %17, %19
  %21 = and i32 %16, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* @OP_BR_BASE, align 4
  %27 = load i32, i32* @OP_BR_MASK, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @FIELD_PREP(i32 %27, i32 %28)
  %30 = or i32 %26, %29
  %31 = load i32, i32* @OP_BR_EV_PIP, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @FIELD_PREP(i32 %31, i32 %32)
  %34 = or i32 %30, %33
  %35 = load i32, i32* @OP_BR_CSS, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @FIELD_PREP(i32 %35, i32 %36)
  %38 = or i32 %34, %37
  %39 = load i32, i32* @OP_BR_DEFBR, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @FIELD_PREP(i32 %39, i32 %40)
  %42 = or i32 %38, %41
  %43 = load i32, i32* @OP_BR_ADDR_LO, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @FIELD_PREP(i32 %43, i32 %44)
  %46 = or i32 %42, %45
  %47 = load i32, i32* @OP_BR_ADDR_HI, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @FIELD_PREP(i32 %47, i32 %48)
  %50 = or i32 %46, %49
  store i32 %50, i32* %15, align 4
  %51 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @nfp_prog_push(%struct.nfp_prog* %51, i32 %52)
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
