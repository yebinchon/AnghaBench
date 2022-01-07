; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_xircom_cb.c_xircom_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_xircom_cb.c_xircom_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.xircom_private = type { i32, i64*, i32, %struct.sk_buff** }

@NUMDESCRIPTORS = common dso_local global i32 0, align 4
@bufferoffsets = common dso_local global i32* null, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xircom_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xircom_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xircom_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.xircom_private* @netdev_priv(%struct.net_device* %10)
  store %struct.xircom_private* %11, %struct.xircom_private** %6, align 8
  %12 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %13 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %12, i32 0, i32 2
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %30, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @NUMDESCRIPTORS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** @bufferoffsets, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @investigate_write_descriptor(%struct.net_device* %21, %struct.xircom_private* %22, i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %35 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* @NUMDESCRIPTORS, align 4
  %39 = srem i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %41 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  %43 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %44 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 4, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %167

52:                                               ; preds = %33
  %53 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %54 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32*, i32** @bufferoffsets, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %55, i64 %62
  %64 = call i32 @memset(i64* %63, i32 0, i32 1536)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %67 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32*, i32** @bufferoffsets, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %68, i64 %75
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %65, i64* %76, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = sext i32 %84 to i64
  %86 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %87 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 4, %89
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  store i64 %85, i64* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @NUMDESCRIPTORS, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %52
  %99 = call i32 @cpu_to_le32(i32 33554432)
  %100 = sext i32 %99 to i64
  %101 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %102 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = mul nsw i32 4, %104
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %103, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = or i64 %109, %100
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %98, %52
  %112 = call i32 @cpu_to_le32(i32 -268435456)
  %113 = sext i32 %112 to i64
  %114 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %115 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = mul nsw i32 4, %117
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %116, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = or i64 %122, %113
  store i64 %123, i64* %121, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %126 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %125, i32 0, i32 3
  %127 = load %struct.sk_buff**, %struct.sk_buff*** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %127, i64 %129
  store %struct.sk_buff* %124, %struct.sk_buff** %130, align 8
  %131 = call i32 (...) @wmb()
  %132 = call i32 @cpu_to_le32(i32 -2147483648)
  %133 = sext i32 %132 to i64
  %134 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %135 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 4, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  store i64 %133, i64* %140, align 8
  %141 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %142 = call i32 @trigger_transmit(%struct.xircom_private* %141)
  %143 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %144 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = mul nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @cpu_to_le32(i32 134217728)
  %152 = sext i32 %151 to i64
  %153 = and i64 %150, %152
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %111
  %156 = load %struct.net_device*, %struct.net_device** %5, align 8
  %157 = call i32 @netif_stop_queue(%struct.net_device* %156)
  br label %158

158:                                              ; preds = %155, %111
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %161 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %163 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %162, i32 0, i32 2
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32* %163, i64 %164)
  %166 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %166, i32* %3, align 4
  br label %177

167:                                              ; preds = %33
  %168 = load %struct.net_device*, %struct.net_device** %5, align 8
  %169 = call i32 @netif_stop_queue(%struct.net_device* %168)
  %170 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %171 = getelementptr inbounds %struct.xircom_private, %struct.xircom_private* %170, i32 0, i32 2
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load %struct.xircom_private*, %struct.xircom_private** %6, align 8
  %175 = call i32 @trigger_transmit(%struct.xircom_private* %174)
  %176 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %167, %158
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.xircom_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @investigate_write_descriptor(%struct.net_device*, %struct.xircom_private*, i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @trigger_transmit(%struct.xircom_private*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
