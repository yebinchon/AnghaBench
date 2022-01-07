; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sky2_port = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@SKY2_HW_RAM_BUFFER = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sky2_port*, i32)* @sky2_rx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sky2_rx_alloc(%struct.sky2_port* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sky2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %11 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %14 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %17 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i64 @sky2_rx_pad(%struct.TYPE_2__* %18)
  %20 = add nsw i64 %15, %19
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.sk_buff* @__netdev_alloc_skb(i32 %12, i64 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %80

26:                                               ; preds = %2
  %27 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %28 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SKY2_HW_RAM_BUFFER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @PTR_ALIGN(i32 %38, i32 8)
  store i8* %39, i8** %8, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  %48 = call i32 @skb_reserve(%struct.sk_buff* %40, i8* %47)
  br label %53

49:                                               ; preds = %26
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = load i8*, i8** @NET_IP_ALIGN, align 8
  %52 = call i32 @skb_reserve(%struct.sk_buff* %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %35
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %57 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = call %struct.page* @alloc_page(i32 %61)
  store %struct.page* %62, %struct.page** %9, align 8
  %63 = load %struct.page*, %struct.page** %9, align 8
  %64 = icmp ne %struct.page* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %77

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.page*, %struct.page** %9, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = call i32 @skb_fill_page_desc(%struct.sk_buff* %67, i32 %68, %struct.page* %69, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %54

75:                                               ; preds = %54
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %76, %struct.sk_buff** %3, align 8
  br label %81

77:                                               ; preds = %65
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  br label %80

80:                                               ; preds = %77, %25
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %81

81:                                               ; preds = %80, %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %82
}

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(i32, i64, i32) #1

declare dso_local i64 @sky2_rx_pad(%struct.TYPE_2__*) #1

declare dso_local i8* @PTR_ALIGN(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i8*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, %struct.page*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
