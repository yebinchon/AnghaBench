; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_clear_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_clear_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm_seq = type { i32 }
%struct.stfsm = type { i32, i64 }

@stfsm_seq_load_fifo_byte = common dso_local global %struct.stfsm_seq zeroinitializer, align 4
@SPI_FAST_SEQ_DATA_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"cleared %d words from FIFO\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to clear bytes from the data FIFO\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"cleared %d byte(s) from the data FIFO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stfsm*)* @stfsm_clear_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stfsm_clear_fifo(%struct.stfsm* %0) #0 {
  %2 = alloca %struct.stfsm*, align 8
  %3 = alloca %struct.stfsm_seq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %2, align 8
  store %struct.stfsm_seq* @stfsm_seq_load_fifo_byte, %struct.stfsm_seq** %3, align 8
  %6 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %7 = call i32 @stfsm_fifo_available(%struct.stfsm* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %17 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SPI_FAST_SEQ_DATA_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %27 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %52

41:                                               ; preds = %39
  %42 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %43 = load %struct.stfsm_seq*, %struct.stfsm_seq** %3, align 8
  %44 = call i32 @stfsm_load_seq(%struct.stfsm* %42, %struct.stfsm_seq* %43)
  %45 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %46 = call i32 @stfsm_wait_seq(%struct.stfsm* %45)
  %47 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %48 = call i32 @stfsm_fifo_available(%struct.stfsm* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %32

52:                                               ; preds = %39
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %57 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %73

60:                                               ; preds = %52
  %61 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %62 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SPI_FAST_SEQ_DATA_REG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  %67 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %68 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 4, %70
  %72 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @stfsm_fifo_available(%struct.stfsm*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @stfsm_load_seq(%struct.stfsm*, %struct.stfsm_seq*) #1

declare dso_local i32 @stfsm_wait_seq(%struct.stfsm*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
