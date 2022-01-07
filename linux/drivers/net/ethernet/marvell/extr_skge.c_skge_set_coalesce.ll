; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.skge_port = type { i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@B2_IRQM_MSK = common dso_local global i32 0, align 4
@rxirqmask = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@txirqmask = common dso_local global i32* null, align 8
@B2_IRQM_CTRL = common dso_local global i32 0, align 4
@TIM_STOP = common dso_local global i32 0, align 4
@B2_IRQM_INI = common dso_local global i32 0, align 4
@TIM_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @skge_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca %struct.skge_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.skge_port* @netdev_priv(%struct.net_device* %11)
  store %struct.skge_port* %12, %struct.skge_port** %6, align 8
  %13 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %14 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %13, i32 0, i32 1
  %15 = load %struct.skge_hw*, %struct.skge_hw** %14, align 8
  store %struct.skge_hw* %15, %struct.skge_hw** %7, align 8
  %16 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %17 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %20 = load i32, i32* @B2_IRQM_MSK, align 4
  %21 = call i32 @skge_read32(%struct.skge_hw* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  store i32 25, i32* %10, align 4
  %22 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i32*, i32** @rxirqmask, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %60

35:                                               ; preds = %2
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 25
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 33333
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %125

48:                                               ; preds = %40
  %49 = load i32*, i32** @rxirqmask, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32*, i32** @txirqmask, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %101

74:                                               ; preds = %60
  %75 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 25
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 33333
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %74
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %125

87:                                               ; preds = %79
  %88 = load i32*, i32** @txirqmask, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @min(i32 %95, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %65
  %102 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %103 = load i32, i32* @B2_IRQM_MSK, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @skge_write32(%struct.skge_hw* %102, i32 %103, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %110 = load i32, i32* @B2_IRQM_CTRL, align 4
  %111 = load i32, i32* @TIM_STOP, align 4
  %112 = call i32 @skge_write32(%struct.skge_hw* %109, i32 %110, i32 %111)
  br label %124

113:                                              ; preds = %101
  %114 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %115 = load i32, i32* @B2_IRQM_INI, align 4
  %116 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @skge_usecs2clk(%struct.skge_hw* %116, i32 %117)
  %119 = call i32 @skge_write32(%struct.skge_hw* %114, i32 %115, i32 %118)
  %120 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %121 = load i32, i32* @B2_IRQM_CTRL, align 4
  %122 = load i32, i32* @TIM_START, align 4
  %123 = call i32 @skge_write32(%struct.skge_hw* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %113, %108
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %84, %45
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_usecs2clk(%struct.skge_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
