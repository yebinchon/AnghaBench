; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_mx25_en_32bit_addr_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_mx25_en_32bit_addr_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm_seq = type { i32*, i32, i32* }

@SEQ_OPC_PADS_1 = common dso_local global i32 0, align 4
@SPINOR_OP_EN4B = common dso_local global i32 0, align 4
@SEQ_OPC_CSDEASSERT = common dso_local global i32 0, align 4
@STFSM_INST_CMD1 = common dso_local global i32 0, align 4
@STFSM_INST_WAIT = common dso_local global i32 0, align 4
@STFSM_INST_STOP = common dso_local global i32 0, align 4
@SEQ_CFG_PADS_1 = common dso_local global i32 0, align 4
@SEQ_CFG_ERASE = common dso_local global i32 0, align 4
@SEQ_CFG_READNOTWRITE = common dso_local global i32 0, align 4
@SEQ_CFG_CSDEASSERT = common dso_local global i32 0, align 4
@SEQ_CFG_STARTSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm_seq*)* @stfsm_mx25_en_32bit_addr_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_mx25_en_32bit_addr_seq(%struct.stfsm_seq* %0) #0 {
  %2 = alloca %struct.stfsm_seq*, align 8
  store %struct.stfsm_seq* %0, %struct.stfsm_seq** %2, align 8
  %3 = load i32, i32* @SEQ_OPC_PADS_1, align 4
  %4 = call i32 @SEQ_OPC_CYCLES(i32 8)
  %5 = or i32 %3, %4
  %6 = load i32, i32* @SPINOR_OP_EN4B, align 4
  %7 = call i32 @SEQ_OPC_OPCODE(i32 %6)
  %8 = or i32 %5, %7
  %9 = load i32, i32* @SEQ_OPC_CSDEASSERT, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.stfsm_seq*, %struct.stfsm_seq** %2, align 8
  %12 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @STFSM_INST_CMD1, align 4
  %16 = load %struct.stfsm_seq*, %struct.stfsm_seq** %2, align 8
  %17 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @STFSM_INST_WAIT, align 4
  %21 = load %struct.stfsm_seq*, %struct.stfsm_seq** %2, align 8
  %22 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @STFSM_INST_STOP, align 4
  %26 = load %struct.stfsm_seq*, %struct.stfsm_seq** %2, align 8
  %27 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @SEQ_CFG_PADS_1, align 4
  %31 = load i32, i32* @SEQ_CFG_ERASE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SEQ_CFG_READNOTWRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SEQ_CFG_CSDEASSERT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SEQ_CFG_STARTSEQ, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.stfsm_seq*, %struct.stfsm_seq** %2, align 8
  %40 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  ret i32 0
}

declare dso_local i32 @SEQ_OPC_CYCLES(i32) #1

declare dso_local i32 @SEQ_OPC_OPCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
