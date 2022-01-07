; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_if.h_decode_txq_desc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_if.h_decode_txq_desc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IONIC_TXQ_DESC_OPCODE_SHIFT = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_OPCODE_MASK = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_FLAGS_SHIFT = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_FLAGS_MASK = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_NSGE_SHIFT = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_NSGE_MASK = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_ADDR_SHIFT = common dso_local global i32 0, align 4
@IONIC_TXQ_DESC_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*)* @decode_txq_desc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_txq_desc_cmd(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IONIC_TXQ_DESC_OPCODE_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = load i32, i32* @IONIC_TXQ_DESC_OPCODE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IONIC_TXQ_DESC_FLAGS_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @IONIC_TXQ_DESC_FLAGS_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @IONIC_TXQ_DESC_NSGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = load i32, i32* @IONIC_TXQ_DESC_NSGE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IONIC_TXQ_DESC_ADDR_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32, i32* @IONIC_TXQ_DESC_ADDR_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
