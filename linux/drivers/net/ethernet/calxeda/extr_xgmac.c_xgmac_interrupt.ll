; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgmac_priv = type { i32, i64, i32, i32, %struct.xgmac_extra_stats }
%struct.xgmac_extra_stats = type { i32, i32, i32, i32, i32, i32 }

@XGMAC_DMA_STATUS = common dso_local global i64 0, align 8
@XGMAC_DMA_INTR_ENA = common dso_local global i64 0, align 8
@DMA_STATUS_AIS = common dso_local global i32 0, align 4
@DMA_STATUS_TJT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"transmit jabber\0A\00", align 1
@DMA_STATUS_RU = common dso_local global i32 0, align 4
@DMA_STATUS_RPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"receive process stopped\0A\00", align 1
@DMA_STATUS_ETI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"transmit early interrupt\0A\00", align 1
@DMA_STATUS_TPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"transmit process stopped\0A\00", align 1
@DMA_STATUS_FBI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"fatal bus error\0A\00", align 1
@DMA_STATUS_RI = common dso_local global i32 0, align 4
@DMA_STATUS_TU = common dso_local global i32 0, align 4
@DMA_STATUS_TI = common dso_local global i32 0, align 4
@DMA_INTR_ABNORMAL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xgmac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.xgmac_priv*, align 8
  %8 = alloca %struct.xgmac_extra_stats*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.xgmac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.xgmac_priv* %12, %struct.xgmac_priv** %7, align 8
  %13 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %14 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %13, i32 0, i32 4
  store %struct.xgmac_extra_stats* %14, %struct.xgmac_extra_stats** %8, align 8
  %15 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %16 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XGMAC_DMA_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @__raw_readl(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %22 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XGMAC_DMA_INTR_ENA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @__raw_readl(i64 %25)
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %31 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XGMAC_DMA_STATUS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @__raw_writel(i32 %29, i64 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DMA_STATUS_AIS, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %125

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @DMA_STATUS_TJT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %48 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @netdev_err(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %8, align 8
  %52 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DMA_STATUS_RU, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %8, align 8
  %62 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @DMA_STATUS_RPS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %72 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @netdev_err(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %8, align 8
  %76 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %70, %65
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @DMA_STATUS_ETI, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %86 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @netdev_err(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %8, align 8
  %90 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %84, %79
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @DMA_STATUS_TPS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %100 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @netdev_err(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %8, align 8
  %104 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %108 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %107, i32 0, i32 3
  %109 = call i32 @schedule_work(i32* %108)
  br label %110

110:                                              ; preds = %98, %93
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @DMA_STATUS_FBI, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %117 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @netdev_err(i32 %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %120 = load %struct.xgmac_extra_stats*, %struct.xgmac_extra_stats** %8, align 8
  %121 = getelementptr inbounds %struct.xgmac_extra_stats, %struct.xgmac_extra_stats* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %115, %110
  br label %125

125:                                              ; preds = %124, %2
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @DMA_STATUS_RI, align 4
  %128 = load i32, i32* @DMA_STATUS_TU, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @DMA_STATUS_TI, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %126, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %125
  %135 = load i32, i32* @DMA_INTR_ABNORMAL, align 4
  %136 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %137 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @XGMAC_DMA_INTR_ENA, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @__raw_writel(i32 %135, i64 %140)
  %142 = load %struct.xgmac_priv*, %struct.xgmac_priv** %7, align 8
  %143 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %142, i32 0, i32 0
  %144 = call i32 @napi_schedule(i32* %143)
  br label %145

145:                                              ; preds = %134, %125
  %146 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %146
}

declare dso_local %struct.xgmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
