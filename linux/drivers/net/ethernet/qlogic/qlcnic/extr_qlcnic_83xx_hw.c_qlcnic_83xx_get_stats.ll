; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.net_device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }

@QLCNIC_CMD_GET_STATISTICS = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@QLC_83XX_TX_STAT_REGS = common dso_local global i32 0, align 4
@QLC_83XX_STAT_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error getting Tx stats\0A\00", align 1
@BIT_2 = common dso_local global i32 0, align 4
@QLC_83XX_MAC_STAT_REGS = common dso_local global i32 0, align 4
@QLC_83XX_STAT_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error getting MAC stats\0A\00", align 1
@QLC_83XX_RX_STAT_REGS = common dso_local global i32 0, align 4
@QLC_83XX_STAT_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error getting Rx stats\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_get_stats(%struct.qlcnic_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.qlcnic_cmd_args, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = load i32, i32* @QLCNIC_CMD_GET_STATISTICS, align 4
  %13 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %5, %struct.qlcnic_adapter* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %111

17:                                               ; preds = %2
  %18 = load i32, i32* @BIT_1, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %18, %24
  %26 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @QLC_83XX_TX_STAT_REGS, align 4
  %31 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @QLC_83XX_STAT_TX, align 4
  %36 = call i32* @qlcnic_83xx_fill_stats(%struct.qlcnic_adapter* %33, %struct.qlcnic_cmd_args* %5, i32* %34, i32 %35, i32* %7)
  store i32* %36, i32** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %17
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @netdev_err(%struct.net_device* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %109

42:                                               ; preds = %17
  %43 = load i32, i32* @BIT_2, align 4
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %46, 16
  %48 = or i32 %43, %47
  %49 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @QLC_83XX_MAC_STAT_REGS, align 4
  %54 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memset(i32 %58, i32 0, i32 %64)
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @QLC_83XX_STAT_MAC, align 4
  %69 = call i32* @qlcnic_83xx_fill_stats(%struct.qlcnic_adapter* %66, %struct.qlcnic_cmd_args* %5, i32* %67, i32 %68, i32* %7)
  store i32* %69, i32** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %42
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = call i32 @netdev_err(%struct.net_device* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %109

75:                                               ; preds = %42
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 16
  %82 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @QLC_83XX_RX_STAT_REGS, align 4
  %87 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = mul i64 4, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memset(i32 %91, i32 0, i32 %97)
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @QLC_83XX_STAT_RX, align 4
  %102 = call i32* @qlcnic_83xx_fill_stats(%struct.qlcnic_adapter* %99, %struct.qlcnic_cmd_args* %5, i32* %100, i32 %101, i32* %7)
  store i32* %102, i32** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %75
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = call i32 @netdev_err(%struct.net_device* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %75
  br label %109

109:                                              ; preds = %108, %72, %39
  %110 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %5)
  br label %111

111:                                              ; preds = %109, %16
  ret void
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32* @qlcnic_83xx_fill_stats(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*, i32*, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
