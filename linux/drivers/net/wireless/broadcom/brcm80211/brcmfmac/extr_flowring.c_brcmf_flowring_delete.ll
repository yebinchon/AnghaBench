; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { %struct.brcmf_flowring_ring**, %struct.TYPE_2__*, i32 }
%struct.brcmf_flowring_ring = type { i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.brcmf_bus = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.sk_buff = type { i32 }

@BRCMF_FLOWRING_INVALID_IFIDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_flowring_delete(%struct.brcmf_flowring* %0, i64 %1) #0 {
  %3 = alloca %struct.brcmf_flowring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcmf_bus*, align 8
  %6 = alloca %struct.brcmf_flowring_ring*, align 8
  %7 = alloca %struct.brcmf_if*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %3, align 8
  %12 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.brcmf_bus* @dev_get_drvdata(i32 %13)
  store %struct.brcmf_bus* %14, %struct.brcmf_bus** %5, align 8
  %15 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %3, align 8
  %16 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %15, i32 0, i32 0
  %17 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %17, i64 %18
  %20 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %19, align 8
  store %struct.brcmf_flowring_ring* %20, %struct.brcmf_flowring_ring** %6, align 8
  %21 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %6, align 8
  %22 = icmp ne %struct.brcmf_flowring_ring* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %75

24:                                               ; preds = %2
  %25 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @brcmf_flowring_ifidx_get(%struct.brcmf_flowring* %25, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %29 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.brcmf_if* @brcmf_get_ifp(i32 %30, i32 %31)
  store %struct.brcmf_if* %32, %struct.brcmf_if** %7, align 8
  %33 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @brcmf_flowring_block(%struct.brcmf_flowring* %33, i64 %34, i32 0)
  %36 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %6, align 8
  %37 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* @BRCMF_FLOWRING_INVALID_IFIDX, align 4
  %40 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %3, align 8
  %41 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %39, i32* %45, align 4
  %46 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %3, align 8
  %47 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @eth_zero_addr(i32 %52)
  %54 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %3, align 8
  %55 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %54, i32 0, i32 0
  %56 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %56, i64 %57
  store %struct.brcmf_flowring_ring* null, %struct.brcmf_flowring_ring** %58, align 8
  %59 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %6, align 8
  %60 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %59, i32 0, i32 1
  %61 = call %struct.sk_buff* @skb_dequeue(i32* %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %10, align 8
  br label %62

62:                                               ; preds = %65, %24
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = icmp ne %struct.sk_buff* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i32 @brcmf_txfinalize(%struct.brcmf_if* %66, %struct.sk_buff* %67, i32 0)
  %69 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %6, align 8
  %70 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %69, i32 0, i32 1
  %71 = call %struct.sk_buff* @skb_dequeue(i32* %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %10, align 8
  br label %62

72:                                               ; preds = %62
  %73 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %6, align 8
  %74 = call i32 @kfree(%struct.brcmf_flowring_ring* %73)
  br label %75

75:                                               ; preds = %72, %23
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32) #1

declare dso_local i32 @brcmf_flowring_ifidx_get(%struct.brcmf_flowring*, i64) #1

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(i32, i32) #1

declare dso_local i32 @brcmf_flowring_block(%struct.brcmf_flowring*, i64, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @brcmf_txfinalize(%struct.brcmf_if*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_flowring_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
