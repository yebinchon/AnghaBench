; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.sk_buff** }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"lmc_start_xmit in\00", align 1
@LMC_TXDESCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"xmit\00", align 1
@LMC_TDES_END_OF_RING = common dso_local global i32 0, align 4
@LMC_EVENT_XMT = common dso_local global i32 0, align 4
@csr_txpoll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"lmc_start_xmit_out\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@LMC_EVENT_TBUSY1 = common dso_local global i32 0, align 4
@LMC_TDES_INTERRUPT_ON_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @lmc_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmc_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.TYPE_8__* @dev_to_sc(%struct.net_device* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @lmc_trace(%struct.net_device* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LMC_TXDESCS, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 7
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %25, i64 %27
  store %struct.sk_buff* %22, %struct.sk_buff** %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @virt_to_bus(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 %32, i32* %39, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @LMC_CONSOLE_LOG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  %54 = load i32, i32* @LMC_TXDESCS, align 4
  %55 = sdiv i32 %54, 2
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %2
  store i32 1610612736, i32* %6, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @netif_wake_queue(%struct.net_device* %58)
  br label %95

60:                                               ; preds = %2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = load i32, i32* @LMC_TXDESCS, align 4
  %69 = sdiv i32 %68, 2
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  store i32 -536870912, i32* %6, align 4
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i32 @netif_wake_queue(%struct.net_device* %72)
  br label %94

74:                                               ; preds = %60
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = load i32, i32* @LMC_TXDESCS, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  store i32 1610612736, i32* %6, align 4
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i32 @netif_wake_queue(%struct.net_device* %86)
  br label %93

88:                                               ; preds = %74
  store i32 -536870912, i32* %6, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @netif_stop_queue(%struct.net_device* %91)
  br label %93

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93, %71
  br label %95

95:                                               ; preds = %94, %57
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @LMC_TXDESCS, align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @LMC_TDES_END_OF_RING, align 4
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %109, %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 4
  store i32 %113, i32* %6, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* @LMC_EVENT_XMT, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @LMC_EVENT_LOG(i32 %130, i32 %131, i32 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 5
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i32 -2147483648, i32* %140, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = load i32, i32* @csr_txpoll, align 4
  %143 = call i32 @LMC_CSR_WRITE(%struct.TYPE_8__* %141, i32 %142, i32 0)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  %146 = load i64, i64* %8, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  %148 = load %struct.net_device*, %struct.net_device** %4, align 8
  %149 = call i32 @lmc_trace(%struct.net_device* %148, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_8__* @dev_to_sc(%struct.net_device*) #1

declare dso_local i32 @lmc_trace(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virt_to_bus(i32) #1

declare dso_local i32 @LMC_CONSOLE_LOG(i8*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @LMC_EVENT_LOG(i32, i32, i32) #1

declare dso_local i32 @LMC_CSR_WRITE(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
