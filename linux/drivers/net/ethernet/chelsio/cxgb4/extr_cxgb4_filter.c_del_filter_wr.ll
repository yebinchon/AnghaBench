; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_del_filter_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_del_filter_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.filter_entry* }
%struct.filter_entry = type { i32, i32 }
%struct.fw_filter_wr = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @del_filter_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_filter_wr(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filter_entry*, align 8
  %7 = alloca %struct.fw_filter_wr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.filter_entry*, %struct.filter_entry** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %13, i64 %15
  store %struct.filter_entry* %16, %struct.filter_entry** %6, align 8
  store i32 4, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sk_buff* @alloc_skb(i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.fw_filter_wr* @__skb_put(%struct.sk_buff* %26, i32 %27)
  store %struct.fw_filter_wr* %28, %struct.fw_filter_wr** %7, align 8
  %29 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %30 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fw_filter_wr*, %struct.fw_filter_wr** %7, align 8
  %33 = load %struct.adapter*, %struct.adapter** %4, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @t4_mk_filtdelwr(i32 %31, %struct.fw_filter_wr* %32, i32 %37)
  %39 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %40 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @t4_mgmt_tx(%struct.adapter* %41, %struct.sk_buff* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %25, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.fw_filter_wr* @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @t4_mk_filtdelwr(i32, %struct.fw_filter_wr*, i32) #1

declare dso_local i32 @t4_mgmt_tx(%struct.adapter*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
