; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_formac_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_formac_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FM_CMDREG2 = common dso_local global i32 0, align 4
@FM_IACTR = common dso_local global i32 0, align 4
@FM_MDREG1 = common dso_local global i32 0, align 4
@FM_MDISRCV = common dso_local global i32 0, align 4
@FM_ADDET = common dso_local global i32 0, align 4
@FM_MINIT = common dso_local global i32 0, align 4
@FM_MMODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @formac_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @formac_offline(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @FM_CMDREG2, align 4
  %4 = call i32 @FM_A(i32 %3)
  %5 = load i32, i32* @FM_IACTR, align 4
  %6 = call i32 @outpw(i32 %4, i32 %5)
  %7 = load i32, i32* @FM_MDREG1, align 4
  %8 = call i32 @FM_A(i32 %7)
  %9 = load i32, i32* @FM_MDISRCV, align 4
  %10 = load i32, i32* @FM_ADDET, align 4
  %11 = call i32 @SETMASK(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* @FM_MDREG1, align 4
  %13 = call i32 @FM_A(i32 %12)
  %14 = load i32, i32* @FM_MINIT, align 4
  %15 = load i32, i32* @FM_MMODE, align 4
  %16 = call i32 @SETMASK(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %18 = call i32 @disable_formac(%struct.s_smc* %17)
  %19 = load i32, i32* @FALSE, align 4
  %20 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %21 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @STOPPED, align 4
  %24 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %25 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  ret void
}

declare dso_local i32 @outpw(i32, i32) #1

declare dso_local i32 @FM_A(i32) #1

declare dso_local i32 @SETMASK(i32, i32, i32) #1

declare dso_local i32 @disable_formac(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
