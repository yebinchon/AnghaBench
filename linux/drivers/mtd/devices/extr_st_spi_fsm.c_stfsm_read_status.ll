; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm_seq = type { i32* }
%struct.stfsm = type { i32 }

@stfsm_seq_read_status_fifo = common dso_local global %struct.stfsm_seq zeroinitializer, align 8
@.str = private unnamed_addr constant [45 x i8] c"read 'status' register [0x%02x], %d byte(s)\0A\00", align 1
@SEQ_OPC_PADS_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*, i32, i32*, i32)* @stfsm_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_read_status(%struct.stfsm* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.stfsm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stfsm_seq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.stfsm_seq* @stfsm_seq_read_status_fifo, %struct.stfsm_seq** %9, align 8
  store i32* %10, i32** %11, align 8
  %13 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %14 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 2
  br label %24

24:                                               ; preds = %21, %4
  %25 = phi i1 [ false, %4 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* @SEQ_OPC_PADS_1, align 4
  %29 = call i32 @SEQ_OPC_CYCLES(i32 8)
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SEQ_OPC_OPCODE(i32 %31)
  %33 = or i32 %30, %32
  %34 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %35 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %39 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %40 = call i32 @stfsm_load_seq(%struct.stfsm* %38, %struct.stfsm_seq* %39)
  %41 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %42 = call i32 @stfsm_read_fifo(%struct.stfsm* %41, i32* %10, i32 4)
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %57, %24
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %43

60:                                               ; preds = %43
  %61 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %62 = call i32 @stfsm_wait_seq(%struct.stfsm* %61)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @SEQ_OPC_CYCLES(i32) #1

declare dso_local i32 @SEQ_OPC_OPCODE(i32) #1

declare dso_local i32 @stfsm_load_seq(%struct.stfsm*, %struct.stfsm_seq*) #1

declare dso_local i32 @stfsm_read_fifo(%struct.stfsm*, i32*, i32) #1

declare dso_local i32 @stfsm_wait_seq(%struct.stfsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
