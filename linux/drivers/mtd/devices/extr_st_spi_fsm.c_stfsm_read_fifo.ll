; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Reading %d bytes from FIFO\0A\00", align 1
@SPI_FAST_SEQ_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stfsm*, i32*, i32)* @stfsm_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stfsm_read_fifo(%struct.stfsm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.stfsm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 2
  store i32 %11, i32* %7, align 4
  %12 = load %struct.stfsm*, %struct.stfsm** %4, align 8
  %13 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = and i64 %18, 3
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 3
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %3
  %26 = phi i1 [ true, %3 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  br label %29

29:                                               ; preds = %41, %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %39, %32
  %34 = load %struct.stfsm*, %struct.stfsm** %4, align 8
  %35 = call i32 @stfsm_fifo_available(%struct.stfsm* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %41

39:                                               ; preds = %33
  %40 = call i32 @udelay(i32 1)
  br label %33

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @min(i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.stfsm*, %struct.stfsm** %4, align 8
  %49 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SPI_FAST_SEQ_DATA_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @readsl(i64 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %5, align 8
  br label %29

60:                                               ; preds = %29
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @stfsm_fifo_available(%struct.stfsm*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @readsl(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
