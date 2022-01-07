; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma_priv.h_dtd_pkt_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma_priv.h_dtd_pkt_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DTD_PKT_TYPE = common dso_local global i32 0, align 4
@DTD_PKT_TYPE_SHFT = common dso_local global i32 0, align 4
@DTD_MODE_SHFT = common dso_local global i32 0, align 4
@DTD_DIR_SHFT = common dso_local global i32 0, align 4
@DTD_CHAN_SHFT = common dso_local global i32 0, align 4
@DTD_PRI_SHFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @dtd_pkt_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtd_pkt_ctl(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @DTD_PKT_TYPE, align 4
  %12 = load i32, i32* @DTD_PKT_TYPE_SHFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DTD_MODE_SHFT, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %13, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DTD_DIR_SHFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @DTD_CHAN_SHFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @DTD_PRI_SHFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %29, %30
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
