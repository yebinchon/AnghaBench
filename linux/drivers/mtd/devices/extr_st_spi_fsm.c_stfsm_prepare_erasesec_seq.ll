; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_prepare_erasesec_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_prepare_erasesec_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.stfsm_seq = type { i32 }

@FLASH_FLAG_32BIT_ADDR = common dso_local global i32 0, align 4
@ADR_CFG_PADS_1_ADD1 = common dso_local global i32 0, align 4
@ADR_CFG_PADS_1_ADD2 = common dso_local global i32 0, align 4
@ADR_CFG_CSDEASSERT_ADD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stfsm*, %struct.stfsm_seq*)* @stfsm_prepare_erasesec_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stfsm_prepare_erasesec_seq(%struct.stfsm* %0, %struct.stfsm_seq* %1) #0 {
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca %struct.stfsm_seq*, align 8
  %5 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  store %struct.stfsm_seq* %1, %struct.stfsm_seq** %4, align 8
  %6 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %7 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FLASH_FLAG_32BIT_ADDR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 16, i32 8
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ADR_CFG_CYCLES_ADD1(i32 %16)
  %18 = load i32, i32* @ADR_CFG_PADS_1_ADD1, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ADR_CFG_CYCLES_ADD2(i32 16)
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ADR_CFG_PADS_1_ADD2, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ADR_CFG_CSDEASSERT_ADD2, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.stfsm_seq*, %struct.stfsm_seq** %4, align 8
  %27 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @ADR_CFG_CYCLES_ADD1(i32) #1

declare dso_local i32 @ADR_CFG_CYCLES_ADD2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
