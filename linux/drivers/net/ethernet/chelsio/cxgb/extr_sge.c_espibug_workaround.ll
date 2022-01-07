; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_espibug_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_espibug_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i64, i32, %struct.sk_buff**, %struct.adapter* }
%struct.sk_buff = type { i32*, i32 }
%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@espibug_timer = common dso_local global i32 0, align 4
@ch_mac_addr = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@sge = common dso_local global %struct.sge* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @espibug_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @espibug_workaround(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.sge*, %struct.sge** %3, align 8
  %8 = ptrtoint %struct.sge* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @espibug_timer, align 4
  %11 = call %struct.sge* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.sge* %11, %struct.sge** %3, align 8
  %12 = load %struct.sge*, %struct.sge** %3, align 8
  %13 = getelementptr inbounds %struct.sge, %struct.sge* %12, i32 0, i32 3
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %4, align 8
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @netif_running(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %1
  %24 = load %struct.sge*, %struct.sge** %3, align 8
  %25 = getelementptr inbounds %struct.sge, %struct.sge* %24, i32 0, i32 2
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %25, align 8
  %27 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %26, i64 0
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %5, align 8
  %29 = load %struct.adapter*, %struct.adapter** %4, align 8
  %30 = call i32 @t1_espi_get_mon(%struct.adapter* %29, i32 2352, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 268374015
  %33 = icmp eq i32 %32, 4095
  br i1 %33, label %34, label %73

34:                                               ; preds = %23
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* @ch_mac_addr, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %45, i32 4, i32 %46, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 10
  %54 = load i32, i32* @ch_mac_addr, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %49, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 255, i32* %60, align 4
  br label %61

61:                                               ; preds = %44, %37
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %5, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load %struct.adapter*, %struct.adapter** %4, align 8
  %66 = load %struct.adapter*, %struct.adapter** %4, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @t1_sge_tx(%struct.sk_buff* %64, %struct.adapter* %65, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %61, %34, %23
  br label %74

74:                                               ; preds = %73, %1
  %75 = load %struct.sge*, %struct.sge** %3, align 8
  %76 = getelementptr inbounds %struct.sge, %struct.sge* %75, i32 0, i32 1
  %77 = load i64, i64* @jiffies, align 8
  %78 = load %struct.sge*, %struct.sge** %3, align 8
  %79 = getelementptr inbounds %struct.sge, %struct.sge* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = call i32 @mod_timer(i32* %76, i64 %81)
  ret void
}

declare dso_local %struct.sge* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @t1_espi_get_mon(%struct.adapter*, i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @t1_sge_tx(%struct.sk_buff*, %struct.adapter*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
