; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_enter_32bit_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_enter_32bit_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { %struct.stfsm_seq }
%struct.stfsm_seq = type { i32* }

@SPINOR_OP_EN4B = common dso_local global i32 0, align 4
@SPINOR_OP_EX4B = common dso_local global i32 0, align 4
@SEQ_OPC_PADS_1 = common dso_local global i32 0, align 4
@SEQ_OPC_CSDEASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*, i32)* @stfsm_enter_32bit_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_enter_32bit_addr(%struct.stfsm* %0, i32 %1) #0 {
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stfsm_seq*, align 8
  %6 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %8 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %7, i32 0, i32 0
  store %struct.stfsm_seq* %8, %struct.stfsm_seq** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SPINOR_OP_EN4B, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SPINOR_OP_EX4B, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @SEQ_OPC_PADS_1, align 4
  %18 = call i32 @SEQ_OPC_CYCLES(i32 8)
  %19 = or i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @SEQ_OPC_OPCODE(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* @SEQ_OPC_CSDEASSERT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.stfsm_seq*, %struct.stfsm_seq** %5, align 8
  %26 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %30 = load %struct.stfsm_seq*, %struct.stfsm_seq** %5, align 8
  %31 = call i32 @stfsm_load_seq(%struct.stfsm* %29, %struct.stfsm_seq* %30)
  %32 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %33 = call i32 @stfsm_wait_seq(%struct.stfsm* %32)
  ret i32 0
}

declare dso_local i32 @SEQ_OPC_CYCLES(i32) #1

declare dso_local i32 @SEQ_OPC_OPCODE(i32) #1

declare dso_local i32 @stfsm_load_seq(%struct.stfsm*, %struct.stfsm_seq*) #1

declare dso_local i32 @stfsm_wait_seq(%struct.stfsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
