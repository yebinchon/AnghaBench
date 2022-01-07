; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_write_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_write_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm_seq = type { i32*, i32, i32* }
%struct.stfsm = type { i32 }

@stfsm_seq_write_status = common dso_local global %struct.stfsm_seq zeroinitializer, align 8
@.str = private unnamed_addr constant [68 x i8] c"write 'status' register [0x%02x], %d byte(s), 0x%04x\0A %s wait-busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@SEQ_OPC_PADS_1 = common dso_local global i32 0, align 4
@STA_PADS_1 = common dso_local global i32 0, align 4
@STA_CSDEASSERT = common dso_local global i32 0, align 4
@STFSM_INST_STA_WR1 = common dso_local global i32 0, align 4
@STFSM_INST_STA_WR1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*, i32, i64, i32, i32)* @stfsm_write_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_write_status(%struct.stfsm* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.stfsm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stfsm_seq*, align 8
  store %struct.stfsm* %0, %struct.stfsm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.stfsm_seq* @stfsm_seq_write_status, %struct.stfsm_seq** %11, align 8
  %12 = load %struct.stfsm*, %struct.stfsm** %6, align 8
  %13 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i64 %17, i8* %21)
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 2
  br label %28

28:                                               ; preds = %25, %5
  %29 = phi i1 [ false, %5 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* @SEQ_OPC_PADS_1, align 4
  %33 = call i32 @SEQ_OPC_CYCLES(i32 8)
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @SEQ_OPC_OPCODE(i32 %35)
  %37 = or i32 %34, %36
  %38 = load %struct.stfsm_seq*, %struct.stfsm_seq** %11, align 8
  %39 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @STA_PADS_1, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @STA_CSDEASSERT, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.stfsm_seq*, %struct.stfsm_seq** %11, align 8
  %49 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %28
  %53 = load i32, i32* @STFSM_INST_STA_WR1, align 4
  br label %56

54:                                               ; preds = %28
  %55 = load i32, i32* @STFSM_INST_STA_WR1_2, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.stfsm_seq*, %struct.stfsm_seq** %11, align 8
  %59 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %57, i32* %61, align 4
  %62 = load %struct.stfsm*, %struct.stfsm** %6, align 8
  %63 = load %struct.stfsm_seq*, %struct.stfsm_seq** %11, align 8
  %64 = call i32 @stfsm_load_seq(%struct.stfsm* %62, %struct.stfsm_seq* %63)
  %65 = load %struct.stfsm*, %struct.stfsm** %6, align 8
  %66 = call i32 @stfsm_wait_seq(%struct.stfsm* %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load %struct.stfsm*, %struct.stfsm** %6, align 8
  %71 = call i32 @stfsm_wait_busy(%struct.stfsm* %70)
  br label %72

72:                                               ; preds = %69, %56
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @SEQ_OPC_CYCLES(i32) #1

declare dso_local i32 @SEQ_OPC_OPCODE(i32) #1

declare dso_local i32 @stfsm_load_seq(%struct.stfsm*, %struct.stfsm_seq*) #1

declare dso_local i32 @stfsm_wait_seq(%struct.stfsm*) #1

declare dso_local i32 @stfsm_wait_busy(%struct.stfsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
