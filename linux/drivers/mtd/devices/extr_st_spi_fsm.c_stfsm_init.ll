; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i64 }

@SEQ_CFG_SWRESET = common dso_local global i32 0, align 4
@SPI_FAST_SEQ_CFG = common dso_local global i64 0, align 8
@STFSM_FLASH_SAFE_FREQ = common dso_local global i32 0, align 4
@SPI_MODESELECT_FSM = common dso_local global i32 0, align 4
@SPI_CFG_DEVICE_ST = common dso_local global i32 0, align 4
@SPI_CFG_DEFAULT_MIN_CS_HIGH = common dso_local global i32 0, align 4
@SPI_CFG_DEFAULT_CS_SETUPHOLD = common dso_local global i32 0, align 4
@SPI_CFG_DEFAULT_DATA_HOLD = common dso_local global i32 0, align 4
@SPI_CONFIGDATA = common dso_local global i64 0, align 8
@STFSM_DEFAULT_WR_TIME = common dso_local global i32 0, align 4
@SPI_STATUS_WR_TIME_REG = common dso_local global i64 0, align 8
@SPI_PROGRAM_ERASE_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*)* @stfsm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_init(%struct.stfsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  %5 = load i32, i32* @SEQ_CFG_SWRESET, align 4
  %6 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %7 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SPI_FAST_SEQ_CFG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = call i32 @udelay(i32 1)
  %13 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %14 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPI_FAST_SEQ_CFG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 0, i64 %17)
  %19 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %20 = load i32, i32* @STFSM_FLASH_SAFE_FREQ, align 4
  %21 = call i32 @stfsm_set_freq(%struct.stfsm* %19, i32 %20)
  %22 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %23 = load i32, i32* @SPI_MODESELECT_FSM, align 4
  %24 = call i32 @stfsm_set_mode(%struct.stfsm* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %58

29:                                               ; preds = %1
  %30 = load i32, i32* @SPI_CFG_DEVICE_ST, align 4
  %31 = load i32, i32* @SPI_CFG_DEFAULT_MIN_CS_HIGH, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SPI_CFG_DEFAULT_CS_SETUPHOLD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SPI_CFG_DEFAULT_DATA_HOLD, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %38 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPI_CONFIGDATA, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load i32, i32* @STFSM_DEFAULT_WR_TIME, align 4
  %44 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %45 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SPI_STATUS_WR_TIME_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %51 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SPI_PROGRAM_ERASE_TIME, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 1, i64 %54)
  %56 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %57 = call i32 @stfsm_clear_fifo(%struct.stfsm* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %29, %27
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @stfsm_set_freq(%struct.stfsm*, i32) #1

declare dso_local i32 @stfsm_set_mode(%struct.stfsm*, i32) #1

declare dso_local i32 @stfsm_clear_fifo(%struct.stfsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
