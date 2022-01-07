; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_ifdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.sk_buff**, %struct.sk_buff**, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"lmc_ifdown in\00", align 1
@csr_intr = common dso_local global i32 0, align 4
@csr_command = common dso_local global i32 0, align 4
@LMC_DEC_ST = common dso_local global i32 0, align 4
@LMC_DEC_SR = common dso_local global i32 0, align 4
@csr_missed_frames = common dso_local global i32 0, align 4
@LMC_RXDESCS = common dso_local global i32 0, align 4
@LMC_TXDESCS = common dso_local global i32 0, align 4
@LMC_MII16_LED_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"lmc_ifdown out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lmc_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmc_ifdown(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.TYPE_14__* @dev_to_sc(%struct.net_device* %7)
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @lmc_trace(%struct.net_device* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = load i32, i32* @csr_intr, align 4
  %20 = call i32 @LMC_CSR_WRITE(%struct.TYPE_14__* %18, i32 %19, i32 0)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = load i32, i32* @csr_command, align 4
  %23 = call i32 @LMC_CSR_READ(%struct.TYPE_14__* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @LMC_DEC_ST, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @LMC_DEC_SR, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = load i32, i32* @csr_command, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @LMC_CSR_WRITE(%struct.TYPE_14__* %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = load i32, i32* @csr_missed_frames, align 4
  %38 = call i32 @LMC_CSR_READ(%struct.TYPE_14__* %36, i32 %37)
  %39 = and i32 %38, 65535
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %39
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %1
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @free_irq(i32 %54, %struct.net_device* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %51, %1
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %111, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @LMC_RXDESCS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %114

64:                                               ; preds = %60
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %67, i64 %69
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %6, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %74, i64 %76
  store %struct.sk_buff* null, %struct.sk_buff** %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 -559038737, i32* %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %64
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i32 @dev_kfree_skb(%struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %101, %64
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load %struct.sk_buff**, %struct.sk_buff*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %107, i64 %109
  store %struct.sk_buff* null, %struct.sk_buff** %110, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %60

114:                                              ; preds = %60
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %144, %114
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @LMC_TXDESCS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %115
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load %struct.sk_buff**, %struct.sk_buff*** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %122, i64 %124
  %126 = load %struct.sk_buff*, %struct.sk_buff** %125, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %119
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load %struct.sk_buff**, %struct.sk_buff*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %131, i64 %133
  %135 = load %struct.sk_buff*, %struct.sk_buff** %134, align 8
  %136 = call i32 @dev_kfree_skb(%struct.sk_buff* %135)
  br label %137

137:                                              ; preds = %128, %119
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load %struct.sk_buff**, %struct.sk_buff*** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %140, i64 %142
  store %struct.sk_buff* null, %struct.sk_buff** %143, align 8
  br label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %115

147:                                              ; preds = %115
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %149 = load i32, i32* @LMC_MII16_LED_ALL, align 4
  %150 = call i32 @lmc_led_off(%struct.TYPE_14__* %148, i32 %149)
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = call i32 @netif_wake_queue(%struct.net_device* %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load %struct.net_device*, %struct.net_device** %2, align 8
  %159 = call i32 @lmc_trace(%struct.net_device* %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.TYPE_14__* @dev_to_sc(%struct.net_device*) #1

declare dso_local i32 @lmc_trace(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @LMC_CSR_WRITE(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @LMC_CSR_READ(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @lmc_led_off(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
