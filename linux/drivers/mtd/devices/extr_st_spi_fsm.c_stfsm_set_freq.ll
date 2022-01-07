; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"emi_clk = %uHZ, spi_freq = %uHZ, clk_div = %u\0A\00", align 1
@SPI_CLOCKDIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stfsm*, i32)* @stfsm_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stfsm_set_freq(%struct.stfsm* %0, i32 %1) #0 {
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %8 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_get_rate(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 2, %12
  %14 = call i32 @DIV_ROUND_UP(i32 %11, i32 %13)
  %15 = mul nsw i32 2, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 128, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %29 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %42

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 10
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %35 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @DIV_ROUND_UP(i32 %37, i32 10)
  %39 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %40 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %44 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %52 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SPI_CLOCKDIV, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
