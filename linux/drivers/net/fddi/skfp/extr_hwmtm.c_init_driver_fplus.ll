; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_init_driver_fplus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_init_driver_fplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@FM_LSB = common dso_local global i32 0, align 4
@FM_BMMODE = common dso_local global i32 0, align 4
@FM_ENNPRQ = common dso_local global i32 0, align 4
@FM_ENHSRQ = common dso_local global i32 0, align 4
@FM_MENRQAUNLCK = common dso_local global i32 0, align 4
@FM_MENRS = common dso_local global i32 0, align 4
@FM_CHKPAR = common dso_local global i32 0, align 4
@FM_ENRCVADSWAP = common dso_local global i32 0, align 4
@FM_ENXMTADSWAP = common dso_local global i32 0, align 4
@FM_PARITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_driver_fplus(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @FM_LSB, align 4
  %4 = load i32, i32* @FM_BMMODE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @FM_ENNPRQ, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @FM_ENHSRQ, align 4
  %9 = or i32 %7, %8
  %10 = or i32 %9, 3
  %11 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %12 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @FM_MENRQAUNLCK, align 4
  %16 = load i32, i32* @FM_MENRS, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
