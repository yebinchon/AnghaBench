; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_defaults_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_defaults_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__**, i32, i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@MVPP21 = common dso_local global i64 0, align 8
@MVPP2_GMAC_PORT_FIFO_CFG_1_REG = common dso_local global i64 0, align 8
@MVPP2_GMAC_TX_FIFO_MIN_TH_ALL_MASK = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_PORT_INDEX_REG = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_CMD_1_REG = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_FIXED_PRIO_REG = common dso_local global i32 0, align 4
@MVPP2_MAX_TXQ = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_PERIOD_REG = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_REFILL_REG = common dso_local global i32 0, align 4
@MVPP2_TXP_REFILL_PERIOD_ALL_MASK = common dso_local global i32 0, align 4
@MVPP2_TXP_REFILL_TOKENS_ALL_MASK = common dso_local global i32 0, align 4
@MVPP2_TXP_TOKEN_SIZE_MAX = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_TOKEN_SIZE_REG = common dso_local global i32 0, align 4
@MVPP2_RX_USE_PSEUDO_FOR_CSUM_MASK = common dso_local global i32 0, align 4
@MVPP2_SNOOP_PKT_SIZE_MASK = common dso_local global i32 0, align 4
@MVPP2_SNOOP_BUF_HDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_defaults_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_defaults_set(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MVPP21, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %16 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MVPP2_GMAC_PORT_FIFO_CFG_1_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @MVPP2_GMAC_TX_FIFO_MIN_TH_ALL_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = call i32 @MVPP2_GMAC_TX_FIFO_MIN_TH_MASK(i32 58)
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %30 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MVPP2_GMAC_PORT_FIFO_CFG_1_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  br label %35

35:                                               ; preds = %14, %1
  %36 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %37 = call i32 @mvpp2_egress_port(%struct.mvpp2_port* %36)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %39 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* @MVPP2_TXP_SCHED_PORT_INDEX_REG, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @mvpp2_write(%struct.TYPE_5__* %40, i32 %41, i32 %42)
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %45 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* @MVPP2_TXP_SCHED_CMD_1_REG, align 4
  %48 = call i32 @mvpp2_write(%struct.TYPE_5__* %46, i32 %47, i32 0)
  %49 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %50 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* @MVPP2_TXP_SCHED_FIXED_PRIO_REG, align 4
  %53 = call i32 @mvpp2_write(%struct.TYPE_5__* %51, i32 %52, i32 0)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %65, %35
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MVPP2_MAX_TXQ, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %60 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @MVPP2_TXQ_SCHED_TOKEN_CNTR_REG(i32 %62)
  %64 = call i32 @mvpp2_write(%struct.TYPE_5__* %61, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %70 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* @MVPP2_TXP_SCHED_PERIOD_REG, align 4
  %73 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %74 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @USEC_PER_SEC, align 4
  %79 = sdiv i32 %77, %78
  %80 = call i32 @mvpp2_write(%struct.TYPE_5__* %71, i32 %72, i32 %79)
  %81 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %82 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* @MVPP2_TXP_SCHED_REFILL_REG, align 4
  %85 = call i32 @mvpp2_read(%struct.TYPE_5__* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* @MVPP2_TXP_REFILL_PERIOD_ALL_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = call i32 @MVPP2_TXP_REFILL_PERIOD_MASK(i32 1)
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @MVPP2_TXP_REFILL_TOKENS_ALL_MASK, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %97 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* @MVPP2_TXP_SCHED_REFILL_REG, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @mvpp2_write(%struct.TYPE_5__* %98, i32 %99, i32 %100)
  %102 = load i32, i32* @MVPP2_TXP_TOKEN_SIZE_MAX, align 4
  store i32 %102, i32* %4, align 4
  %103 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %104 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* @MVPP2_TXP_SCHED_TOKEN_SIZE_REG, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @mvpp2_write(%struct.TYPE_5__* %105, i32 %106, i32 %107)
  %109 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %110 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %113 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @MVPP2_RX_CTRL_REG(i32 %114)
  %116 = load i32, i32* @MVPP2_RX_USE_PSEUDO_FOR_CSUM_MASK, align 4
  %117 = call i32 @MVPP2_RX_LOW_LATENCY_PKT_SIZE(i32 256)
  %118 = or i32 %116, %117
  %119 = call i32 @mvpp2_write(%struct.TYPE_5__* %111, i32 %115, i32 %118)
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %154, %68
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %123 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %157

126:                                              ; preds = %120
  %127 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %128 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %129, i64 %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %5, align 4
  %136 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %137 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @MVPP2_RXQ_CONFIG_REG(i32 %139)
  %141 = call i32 @mvpp2_read(%struct.TYPE_5__* %138, i32 %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* @MVPP2_SNOOP_PKT_SIZE_MASK, align 4
  %143 = load i32, i32* @MVPP2_SNOOP_BUF_HDR_MASK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %4, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %4, align 4
  %147 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %148 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @MVPP2_RXQ_CONFIG_REG(i32 %150)
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @mvpp2_write(%struct.TYPE_5__* %149, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %126
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %120

157:                                              ; preds = %120
  %158 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %159 = call i32 @mvpp2_interrupts_disable(%struct.mvpp2_port* %158)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @MVPP2_GMAC_TX_FIFO_MIN_TH_MASK(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mvpp2_egress_port(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_write(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @MVPP2_TXQ_SCHED_TOKEN_CNTR_REG(i32) #1

declare dso_local i32 @mvpp2_read(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @MVPP2_TXP_REFILL_PERIOD_MASK(i32) #1

declare dso_local i32 @MVPP2_RX_CTRL_REG(i32) #1

declare dso_local i32 @MVPP2_RX_LOW_LATENCY_PKT_SIZE(i32) #1

declare dso_local i32 @MVPP2_RXQ_CONFIG_REG(i32) #1

declare dso_local i32 @mvpp2_interrupts_disable(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
