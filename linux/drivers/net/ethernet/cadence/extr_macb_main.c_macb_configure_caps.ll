; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_configure_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_configure_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32, %struct.TYPE_2__*, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.macb_config = type { i32 }

@MACB_CAPS_MACB_IS_GEM = common dso_local global i32 0, align 4
@DCFG1 = common dso_local global i32 0, align 4
@IRQCOR = common dso_local global i32 0, align 4
@MACB_CAPS_ISR_CLEAR_ON_WRITE = common dso_local global i32 0, align 4
@DCFG2 = common dso_local global i32 0, align 4
@RX_PKT_BUFF = common dso_local global i32 0, align 4
@TX_PKT_BUFF = common dso_local global i32 0, align 4
@MACB_CAPS_FIFO_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Cadence caps 0x%08x\0A\00", align 1
@DCFG5 = common dso_local global i32 0, align 4
@HW_DMA_CAP_PTP = common dso_local global i32 0, align 4
@TSU = common dso_local global i32 0, align 4
@gem_ptp_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*, %struct.macb_config*)* @macb_configure_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_configure_caps(%struct.macb* %0, %struct.macb_config* %1) #0 {
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.macb_config*, align 8
  %5 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %3, align 8
  store %struct.macb_config* %1, %struct.macb_config** %4, align 8
  %6 = load %struct.macb_config*, %struct.macb_config** %4, align 8
  %7 = icmp ne %struct.macb_config* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.macb_config*, %struct.macb_config** %4, align 8
  %10 = getelementptr inbounds %struct.macb_config, %struct.macb_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.macb*, %struct.macb** %3, align 8
  %13 = getelementptr inbounds %struct.macb, %struct.macb* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  br label %14

14:                                               ; preds = %8, %2
  %15 = load %struct.macb*, %struct.macb** %3, align 8
  %16 = getelementptr inbounds %struct.macb, %struct.macb* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.macb*, %struct.macb** %3, align 8
  %19 = getelementptr inbounds %struct.macb, %struct.macb* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @hw_is_gem(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %14
  %24 = load i32, i32* @MACB_CAPS_MACB_IS_GEM, align 4
  %25 = load %struct.macb*, %struct.macb** %3, align 8
  %26 = getelementptr inbounds %struct.macb, %struct.macb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.macb*, %struct.macb** %3, align 8
  %30 = load i32, i32* @DCFG1, align 4
  %31 = call i32 @gem_readl(%struct.macb* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @IRQCOR, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @GEM_BFEXT(i32 %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = load i32, i32* @MACB_CAPS_ISR_CLEAR_ON_WRITE, align 4
  %38 = load %struct.macb*, %struct.macb** %3, align 8
  %39 = getelementptr inbounds %struct.macb, %struct.macb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %23
  %43 = load %struct.macb*, %struct.macb** %3, align 8
  %44 = load i32, i32* @DCFG2, align 4
  %45 = call i32 @gem_readl(%struct.macb* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @RX_PKT_BUFF, align 4
  %48 = call i32 @GEM_BIT(i32 %47)
  %49 = load i32, i32* @TX_PKT_BUFF, align 4
  %50 = call i32 @GEM_BIT(i32 %49)
  %51 = or i32 %48, %50
  %52 = and i32 %46, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i32, i32* @MACB_CAPS_FIFO_MODE, align 4
  %56 = load %struct.macb*, %struct.macb** %3, align 8
  %57 = getelementptr inbounds %struct.macb, %struct.macb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %42
  br label %61

61:                                               ; preds = %60, %14
  %62 = load %struct.macb*, %struct.macb** %3, align 8
  %63 = getelementptr inbounds %struct.macb, %struct.macb* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.macb*, %struct.macb** %3, align 8
  %67 = getelementptr inbounds %struct.macb, %struct.macb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i64 @hw_is_gem(i32, i32) #1

declare dso_local i32 @gem_readl(%struct.macb*, i32) #1

declare dso_local i64 @GEM_BFEXT(i32, i32) #1

declare dso_local i32 @GEM_BIT(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
