; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_wait_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm_seq = type { i32*, i32 }
%struct.stfsm = type { i32, i32, i64 }

@stfsm_seq_read_status_fifo = common dso_local global %struct.stfsm_seq zeroinitializer, align 8
@SEQ_OPC_PADS_1 = common dso_local global i32 0, align 4
@SPINOR_OP_RDSR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FLASH_MAX_BUSY_WAIT = common dso_local global i64 0, align 8
@FLASH_STATUS_BUSY = common dso_local global i32 0, align 4
@CFG_S25FL_CHECK_ERROR_FLAGS = common dso_local global i32 0, align 4
@S25FL_STATUS_P_ERR = common dso_local global i32 0, align 4
@S25FL_STATUS_E_ERR = common dso_local global i32 0, align 4
@SPI_FAST_SEQ_CFG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"timeout on wait_busy\0A\00", align 1
@FLASH_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*)* @stfsm_wait_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_wait_busy(%struct.stfsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca %struct.stfsm_seq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  store %struct.stfsm_seq* @stfsm_seq_read_status_fifo, %struct.stfsm_seq** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @SEQ_OPC_PADS_1, align 4
  %9 = call i32 @SEQ_OPC_CYCLES(i32 8)
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SPINOR_OP_RDSR, align 4
  %12 = call i32 @SEQ_OPC_OPCODE(i32 %11)
  %13 = or i32 %10, %12
  %14 = load %struct.stfsm_seq*, %struct.stfsm_seq** %4, align 8
  %15 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %19 = load %struct.stfsm_seq*, %struct.stfsm_seq** %4, align 8
  %20 = call i32 @stfsm_load_seq(%struct.stfsm* %18, %struct.stfsm_seq* %19)
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* @FLASH_MAX_BUSY_WAIT, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %77, %1
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %79

28:                                               ; preds = %24
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @time_after_eq(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %36 = call i32 @stfsm_wait_seq(%struct.stfsm* %35)
  %37 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %38 = call i32 @stfsm_read_fifo(%struct.stfsm* %37, i32* %6, i32 4)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @FLASH_STATUS_BUSY, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %85

44:                                               ; preds = %34
  %45 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %46 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CFG_S25FL_CHECK_ERROR_FLAGS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @S25FL_STATUS_P_ERR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @S25FL_STATUS_E_ERR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 255
  store i32 %63, i32* %2, align 4
  br label %85

64:                                               ; preds = %56, %44
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = load %struct.stfsm_seq*, %struct.stfsm_seq** %4, align 8
  %69 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %72 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SPI_FAST_SEQ_CFG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  br label %77

77:                                               ; preds = %67, %64
  %78 = call i32 (...) @cond_resched()
  br label %24

79:                                               ; preds = %24
  %80 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %81 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @FLASH_STATUS_TIMEOUT, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %61, %43
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @SEQ_OPC_CYCLES(i32) #1

declare dso_local i32 @SEQ_OPC_OPCODE(i32) #1

declare dso_local i32 @stfsm_load_seq(%struct.stfsm*, %struct.stfsm_seq*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @stfsm_wait_seq(%struct.stfsm*) #1

declare dso_local i32 @stfsm_read_fifo(%struct.stfsm*, i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
