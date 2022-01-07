; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i8*, i64, i8*, i32, i8* }
%struct.sky2_port = type { %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@STAT_TX_TIMER_CTRL = common dso_local global i32 0, align 4
@TIM_STOP = common dso_local global i64 0, align 8
@STAT_TX_TIMER_INI = common dso_local global i32 0, align 4
@STAT_TX_IDX_TH = common dso_local global i32 0, align 4
@STAT_LEV_TIMER_CTRL = common dso_local global i32 0, align 4
@STAT_LEV_TIMER_INI = common dso_local global i32 0, align 4
@STAT_FIFO_WM = common dso_local global i32 0, align 4
@STAT_ISR_TIMER_CTRL = common dso_local global i32 0, align 4
@STAT_ISR_TIMER_INI = common dso_local global i32 0, align 4
@STAT_FIFO_ISR_WM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @sky2_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %10)
  store %struct.sky2_port* %11, %struct.sky2_port** %5, align 8
  %12 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %13 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %12, i32 0, i32 0
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %13, align 8
  store %struct.sky2_hw* %14, %struct.sky2_hw** %6, align 8
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %16 = load i32, i32* @STAT_TX_TIMER_CTRL, align 4
  %17 = call i64 @sky2_read8(%struct.sky2_hw* %15, i32 %16)
  %18 = load i64, i64* @TIM_STOP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 5
  store i8* null, i8** %22, align 8
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %25 = load i32, i32* @STAT_TX_TIMER_INI, align 4
  %26 = call i32 @sky2_read32(%struct.sky2_hw* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @sky2_clk2us(%struct.sky2_hw* %27, i32 %28)
  %30 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %23, %20
  %33 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %34 = load i32, i32* @STAT_TX_IDX_TH, align 4
  %35 = call i32 @sky2_read16(%struct.sky2_hw* %33, i32 %34)
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %39 = load i32, i32* @STAT_LEV_TIMER_CTRL, align 4
  %40 = call i64 @sky2_read8(%struct.sky2_hw* %38, i32 %39)
  %41 = load i64, i64* @TIM_STOP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %44, i32 0, i32 3
  store i8* null, i8** %45, align 8
  br label %55

46:                                               ; preds = %32
  %47 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %48 = load i32, i32* @STAT_LEV_TIMER_INI, align 4
  %49 = call i32 @sky2_read32(%struct.sky2_hw* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @sky2_clk2us(%struct.sky2_hw* %50, i32 %51)
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %46, %43
  %56 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %57 = load i32, i32* @STAT_FIFO_WM, align 4
  %58 = call i64 @sky2_read8(%struct.sky2_hw* %56, i32 %57)
  %59 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %62 = load i32, i32* @STAT_ISR_TIMER_CTRL, align 4
  %63 = call i64 @sky2_read8(%struct.sky2_hw* %61, i32 %62)
  %64 = load i64, i64* @TIM_STOP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %67, i32 0, i32 1
  store i8* null, i8** %68, align 8
  br label %78

69:                                               ; preds = %55
  %70 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %71 = load i32, i32* @STAT_ISR_TIMER_INI, align 4
  %72 = call i32 @sky2_read32(%struct.sky2_hw* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i8* @sky2_clk2us(%struct.sky2_hw* %73, i32 %74)
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %77 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %69, %66
  %79 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %80 = load i32, i32* @STAT_FIFO_ISR_WM, align 4
  %81 = call i64 @sky2_read8(%struct.sky2_hw* %79, i32 %80)
  %82 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %83 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  ret i32 0
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sky2_read8(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_read32(%struct.sky2_hw*, i32) #1

declare dso_local i8* @sky2_clk2us(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_read16(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
