; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc911x_data = type { i32, i32, i64 }

@INT_STS = common dso_local global i32 0, align 4
@INT_EN = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INT_STS_SW_INT_ = common dso_local global i32 0, align 4
@INT_EN_SW_INT_EN_ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@INT_STS_RXSTOP_INT_ = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"RX Stop interrupt\00", align 1
@INT_STS_TDFA_ = common dso_local global i32 0, align 4
@FIFO_INT = common dso_local global i32 0, align 4
@FIFO_INT_TX_AVAIL_LEVEL_ = common dso_local global i32 0, align 4
@INT_STS_RXE_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"RX Error interrupt\00", align 1
@INT_STS_RSFL_ = common dso_local global i32 0, align 4
@INT_EN_RSFL_EN_ = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"napi_schedule_prep failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @smsc911x_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_irqhandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.smsc911x_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %13)
  store %struct.smsc911x_data* %14, %struct.smsc911x_data** %6, align 8
  %15 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %16 = load i32, i32* @INT_STS, align 4
  %17 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %19 = load i32, i32* @INT_EN, align 4
  %20 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @INT_STS_SW_INT_, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %2
  %30 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %31 = load i32, i32* @INT_EN, align 4
  %32 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @INT_EN_SW_INT_EN_, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %38 = load i32, i32* @INT_EN, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %37, i32 %38, i32 %39)
  %41 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %42 = load i32, i32* @INT_STS, align 4
  %43 = load i32, i32* @INT_STS_SW_INT_, align 4
  %44 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %41, i32 %42, i32 %43)
  %45 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %46 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = call i32 (...) @smp_wmb()
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %29, %2
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @INT_STS_RXSTOP_INT_, align 4
  %54 = and i32 %52, %53
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %49
  %58 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %59 = load i32, i32* @intr, align 4
  %60 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %58, i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %62 = load i32, i32* @INT_STS, align 4
  %63 = load i32, i32* @INT_STS_RXSTOP_INT_, align 4
  %64 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %61, i32 %62, i32 %63)
  %65 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %66 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %71 = call i32 @smsc911x_rx_multicast_update_workaround(%struct.smsc911x_data* %70)
  br label %72

72:                                               ; preds = %69, %57
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %49
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @INT_STS_TDFA_, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %74
  %82 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %83 = load i32, i32* @FIFO_INT, align 4
  %84 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* @FIFO_INT_TX_AVAIL_LEVEL_, align 4
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %89 = load i32, i32* @FIFO_INT, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %88, i32 %89, i32 %90)
  %92 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %93 = load i32, i32* @INT_STS, align 4
  %94 = load i32, i32* @INT_STS_TDFA_, align 4
  %95 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %92, i32 %93, i32 %94)
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = call i32 @netif_wake_queue(%struct.net_device* %96)
  %98 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %81, %74
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @INT_STS_RXE_, align 4
  %104 = and i32 %102, %103
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %99
  %108 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %109 = load i32, i32* @intr, align 4
  %110 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %108, i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %112 = load i32, i32* @INT_STS, align 4
  %113 = load i32, i32* @INT_STS_RXE_, align 4
  %114 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %111, i32 %112, i32 %113)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %107, %99
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @INT_STS_RSFL_, align 4
  %121 = and i32 %119, %120
  %122 = call i64 @likely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %116
  %125 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %126 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %125, i32 0, i32 1
  %127 = call i32 @napi_schedule_prep(i32* %126)
  %128 = call i64 @likely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %124
  %131 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %132 = load i32, i32* @INT_EN, align 4
  %133 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %131, i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* @INT_EN_RSFL_EN_, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %10, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %139 = load i32, i32* @INT_EN, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %138, i32 %139, i32 %140)
  %142 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %143 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %142, i32 0, i32 1
  %144 = call i32 @__napi_schedule(i32* %143)
  br label %149

145:                                              ; preds = %124
  %146 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %147 = load i32, i32* @rx_err, align 4
  %148 = call i32 @SMSC_WARN(%struct.smsc911x_data* %146, i32 %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %149

149:                                              ; preds = %145, %130
  %150 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %149, %116
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @smsc911x_rx_multicast_update_workaround(%struct.smsc911x_data*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
