; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mv643xx_eth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.mv643xx_eth_private = type { i32, i32, i32, i64, %struct.TYPE_2__, i64, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@INT_CAUSE = common dso_local global i32 0, align 4
@INT_CAUSE_EXT = common dso_local global i32 0, align 4
@mv643xx_eth_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"can't assign irq\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@INT_EXT = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@INT_RX_0 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@INT_TX_END_0 = common dso_local global i32 0, align 4
@INT_MASK_EXT = common dso_local global i32 0, align 4
@INT_EXT_LINK_PHY = common dso_local global i32 0, align 4
@INT_EXT_TX = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mv643xx_eth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.mv643xx_eth_private* %8, %struct.mv643xx_eth_private** %4, align 8
  %9 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %10 = load i32, i32* @INT_CAUSE, align 4
  %11 = call i32 @wrlp(%struct.mv643xx_eth_private* %9, i32 %10, i32 0)
  %12 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %13 = load i32, i32* @INT_CAUSE_EXT, align 4
  %14 = call i32 @wrlp(%struct.mv643xx_eth_private* %12, i32 %13, i32 0)
  %15 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %16 = load i32, i32* @INT_CAUSE_EXT, align 4
  %17 = call i32 @rdlp(%struct.mv643xx_eth_private* %15, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @mv643xx_eth_irq, align 4
  %22 = load i32, i32* @IRQF_SHARED, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @request_irq(i32 %20, i32 %21, i32 %22, i32 %25, %struct.net_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %188

35:                                               ; preds = %1
  %36 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %37 = call i32 @mv643xx_eth_recalc_skb_size(%struct.mv643xx_eth_private* %36)
  %38 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %39 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %38, i32 0, i32 8
  %40 = call i32 @napi_enable(i32* %39)
  %41 = load i32, i32* @INT_EXT, align 4
  %42 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %43 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %86, %35
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %47 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %89

50:                                               ; preds = %44
  %51 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @rxq_init(%struct.mv643xx_eth_private* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %63 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = call i32 @rxq_deinit(i64 %67)
  br label %57

69:                                               ; preds = %57
  br label %181

70:                                               ; preds = %50
  %71 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %72 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load i32, i32* @INT_MAX, align 4
  %78 = call i32 @rxq_refill(i64 %76, i32 %77)
  %79 = load i32, i32* @INT_RX_0, align 4
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 %79, %80
  %82 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %83 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %44

89:                                               ; preds = %44
  %90 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %91 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load i64, i64* @jiffies, align 8
  %96 = load i32, i32* @HZ, align 4
  %97 = sdiv i32 %96, 10
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %95, %98
  %100 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %101 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %104 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %103, i32 0, i32 6
  %105 = call i32 @add_timer(%struct.TYPE_2__* %104)
  br label %106

106:                                              ; preds = %94, %89
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %141, %106
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %110 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %144

113:                                              ; preds = %107
  %114 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @txq_init(%struct.mv643xx_eth_private* %114, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %124, %119
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %6, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %126 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = call i32 @txq_deinit(i64 %130)
  br label %120

132:                                              ; preds = %120
  br label %162

133:                                              ; preds = %113
  %134 = load i32, i32* @INT_TX_END_0, align 4
  %135 = load i32, i32* %6, align 4
  %136 = shl i32 %134, %135
  %137 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %138 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %107

144:                                              ; preds = %107
  %145 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %146 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %145, i32 0, i32 4
  %147 = call i32 @add_timer(%struct.TYPE_2__* %146)
  %148 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %149 = call i32 @port_start(%struct.mv643xx_eth_private* %148)
  %150 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %151 = load i32, i32* @INT_MASK_EXT, align 4
  %152 = load i32, i32* @INT_EXT_LINK_PHY, align 4
  %153 = load i32, i32* @INT_EXT_TX, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @wrlp(%struct.mv643xx_eth_private* %150, i32 %151, i32 %154)
  %156 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %157 = load i32, i32* @INT_MASK, align 4
  %158 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %159 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @wrlp(%struct.mv643xx_eth_private* %156, i32 %157, i32 %160)
  store i32 0, i32* %2, align 4
  br label %188

162:                                              ; preds = %132
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %177, %162
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %166 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %163
  %170 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %171 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  %176 = call i32 @rxq_deinit(i64 %175)
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %163

180:                                              ; preds = %163
  br label %181

181:                                              ; preds = %180, %69
  %182 = load %struct.net_device*, %struct.net_device** %3, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.net_device*, %struct.net_device** %3, align 8
  %186 = call i32 @free_irq(i32 %184, %struct.net_device* %185)
  %187 = load i32, i32* %5, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %181, %144, %30
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mv643xx_eth_recalc_skb_size(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @rxq_init(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @rxq_deinit(i64) #1

declare dso_local i32 @rxq_refill(i64, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @txq_init(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @txq_deinit(i64) #1

declare dso_local i32 @port_start(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
