; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_am79c961a.c_am79c961_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_am79c961a.c_am79c961_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_priv = type { i32, i32, i32* }
%struct.sk_buff = type { i32 }

@RMD_OWN = common dso_local global i32 0, align 4
@RX_BUFFERS = common dso_local global i64 0, align 8
@RMD_ERR = common dso_local global i32 0, align 4
@RMD_STP = common dso_local global i32 0, align 4
@RMD_ENP = common dso_local global i32 0, align 4
@RMD_FRAM = common dso_local global i32 0, align 4
@RMD_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dev_priv*)* @am79c961_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am79c961_rx(%struct.net_device* %0, %struct.dev_priv* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dev_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dev_priv* %1, %struct.dev_priv** %4, align 8
  br label %10

10:                                               ; preds = %170, %2
  %11 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %12 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %15 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 3
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %20 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %23 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 2
  %31 = call i32 @am_readword(%struct.net_device* %28, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RMD_OWN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %10
  br label %171

37:                                               ; preds = %10
  %38 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %39 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %43 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @RX_BUFFERS, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %50 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %37
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @RMD_ERR, align 4
  %54 = load i32, i32* @RMD_STP, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RMD_ENP, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %52, %57
  %59 = load i32, i32* @RMD_STP, align 4
  %60 = load i32, i32* @RMD_ENP, align 4
  %61 = or i32 %59, %60
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %51
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 2
  %67 = load i32, i32* @RMD_OWN, align 4
  %68 = call i32 @am_writeword(%struct.net_device* %64, i32 %66, i32 %67)
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @RMD_ERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @RMD_FRAM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @RMD_CRC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  br label %113

101:                                              ; preds = %63
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @RMD_STP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %101
  br label %113

113:                                              ; preds = %112, %100
  br label %170

114:                                              ; preds = %51
  %115 = load %struct.net_device*, %struct.net_device** %3, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 6
  %118 = call i32 @am_readword(%struct.net_device* %115, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 2
  %122 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %119, i32 %121)
  store %struct.sk_buff* %122, %struct.sk_buff** %5, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = icmp ne %struct.sk_buff* %123, null
  br i1 %124, label %125, label %158

125:                                              ; preds = %114
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call i32 @skb_reserve(%struct.sk_buff* %126, i32 2)
  %128 = load %struct.net_device*, %struct.net_device** %3, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @skb_put(%struct.sk_buff* %130, i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @am_readbuffer(%struct.net_device* %128, i32 %129, i32 %132, i32 %133)
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 2
  %138 = load i32, i32* @RMD_OWN, align 4
  %139 = call i32 @am_writeword(%struct.net_device* %135, i32 %137, i32 %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = call i32 @eth_type_trans(%struct.sk_buff* %140, %struct.net_device* %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = call i32 @netif_rx(%struct.sk_buff* %145)
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %147
  store i32 %152, i32* %150, align 4
  %153 = load %struct.net_device*, %struct.net_device** %3, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %169

158:                                              ; preds = %114
  %159 = load %struct.net_device*, %struct.net_device** %3, align 8
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 2
  %162 = load i32, i32* @RMD_OWN, align 4
  %163 = call i32 @am_writeword(%struct.net_device* %159, i32 %161, i32 %162)
  %164 = load %struct.net_device*, %struct.net_device** %3, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %171

169:                                              ; preds = %125
  br label %170

170:                                              ; preds = %169, %113
  br i1 true, label %10, label %171

171:                                              ; preds = %170, %158, %36
  ret void
}

declare dso_local i32 @am_readword(%struct.net_device*, i32) #1

declare dso_local i32 @am_writeword(%struct.net_device*, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @am_readbuffer(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
