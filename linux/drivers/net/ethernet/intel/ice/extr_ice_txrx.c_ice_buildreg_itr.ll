; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_buildreg_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_buildreg_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ICE_ITR_MASK = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_INTENA_M = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_CLEARPBA_M = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_ITR_INDX_S = common dso_local global i32 0, align 4
@GLINT_DYN_CTL_INTERVAL_S = common dso_local global i32 0, align 4
@ICE_ITR_GRAN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ice_buildreg_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_buildreg_itr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ICE_ITR_MASK, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @GLINT_DYN_CTL_INTENA_M, align 4
  %9 = load i32, i32* @GLINT_DYN_CTL_CLEARPBA_M, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GLINT_DYN_CTL_ITR_INDX_S, align 4
  %13 = shl i32 %11, %12
  %14 = or i32 %10, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @GLINT_DYN_CTL_INTERVAL_S, align 4
  %17 = load i32, i32* @ICE_ITR_GRAN_S, align 4
  %18 = sub nsw i32 %16, %17
  %19 = shl i32 %15, %18
  %20 = or i32 %14, %19
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
