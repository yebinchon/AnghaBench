; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.atl1c_adapter = type { i64, i64, %struct.page*, i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.atl1c_adapter*)* @atl1c_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @atl1c_alloc_skb(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  %6 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PAGE_SIZE, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.sk_buff* @netdev_alloc_skb(i32 %14, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %2, align 8
  br label %79

19:                                               ; preds = %1
  %20 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %20, i32 0, i32 2
  %22 = load %struct.page*, %struct.page** %21, align 8
  store %struct.page* %22, %struct.page** %5, align 8
  %23 = load %struct.page*, %struct.page** %5, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.page* @alloc_page(i32 %26)
  store %struct.page* %27, %struct.page** %5, align 8
  %28 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %28, i32 0, i32 2
  store %struct.page* %27, %struct.page** %29, align 8
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = icmp ne %struct.page* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %79

37:                                               ; preds = %25
  %38 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %19
  %41 = load %struct.page*, %struct.page** %5, align 8
  %42 = call i64 @page_address(%struct.page* %41)
  %43 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.sk_buff* @build_skb(i64 %46, i64 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i64 @likely(%struct.sk_buff* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %40
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = load i32, i32* @NET_SKB_PAD, align 4
  %57 = call i32 @skb_reserve(%struct.sk_buff* %55, i32 %56)
  %58 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %71, i32 0, i32 2
  store %struct.page* null, %struct.page** %72, align 8
  br label %76

73:                                               ; preds = %54
  %74 = load %struct.page*, %struct.page** %5, align 8
  %75 = call i32 @get_page(%struct.page* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %40
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %78, %struct.sk_buff** %2, align 8
  br label %79

79:                                               ; preds = %77, %36, %11
  %80 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %80
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i64, i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
