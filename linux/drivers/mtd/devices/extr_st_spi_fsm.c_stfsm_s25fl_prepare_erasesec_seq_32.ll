; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_s25fl_prepare_erasesec_seq_32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_s25fl_prepare_erasesec_seq_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm_seq = type { i32*, i32 }

@SEQ_OPC_PADS_1 = common dso_local global i32 0, align 4
@S25FL_CMD_SE4 = common dso_local global i32 0, align 4
@ADR_CFG_PADS_1_ADD1 = common dso_local global i32 0, align 4
@ADR_CFG_PADS_1_ADD2 = common dso_local global i32 0, align 4
@ADR_CFG_CSDEASSERT_ADD2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stfsm_seq*)* @stfsm_s25fl_prepare_erasesec_seq_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stfsm_s25fl_prepare_erasesec_seq_32(%struct.stfsm_seq* %0) #0 {
  %2 = alloca %struct.stfsm_seq*, align 8
  store %struct.stfsm_seq* %0, %struct.stfsm_seq** %2, align 8
  %3 = load i32, i32* @SEQ_OPC_PADS_1, align 4
  %4 = call i32 @SEQ_OPC_CYCLES(i32 8)
  %5 = or i32 %3, %4
  %6 = load i32, i32* @S25FL_CMD_SE4, align 4
  %7 = call i32 @SEQ_OPC_OPCODE(i32 %6)
  %8 = or i32 %5, %7
  %9 = load %struct.stfsm_seq*, %struct.stfsm_seq** %2, align 8
  %10 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %8, i32* %12, align 4
  %13 = call i32 @ADR_CFG_CYCLES_ADD1(i32 16)
  %14 = load i32, i32* @ADR_CFG_PADS_1_ADD1, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ADR_CFG_CYCLES_ADD2(i32 16)
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ADR_CFG_PADS_1_ADD2, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ADR_CFG_CSDEASSERT_ADD2, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.stfsm_seq*, %struct.stfsm_seq** %2, align 8
  %23 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  ret void
}

declare dso_local i32 @SEQ_OPC_CYCLES(i32) #1

declare dso_local i32 @SEQ_OPC_OPCODE(i32) #1

declare dso_local i32 @ADR_CFG_CYCLES_ADD1(i32) #1

declare dso_local i32 @ADR_CFG_CYCLES_ADD2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
