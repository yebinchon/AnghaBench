; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_skb_need_linearized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_skb_need_linearized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@HNS3_MAX_BD_NUM_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @hns3_skb_need_linearized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_skb_need_linearized(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load i32, i32* @HNS3_MAX_BD_NUM_NORMAL, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i64 @skb_frag_size(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i64 @skb_headlen(%struct.sk_buff* %32)
  %34 = add nsw i64 %31, %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = zext i32 %38 to i64
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i64 @hns3_gso_hdr_len(%struct.sk_buff* %40)
  %42 = add nsw i64 %39, %41
  %43 = icmp slt i64 %34, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %29
  store i32 1, i32* %2, align 4
  br label %102

52:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %98, %52
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %54, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %53
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i64 @skb_frag_size(i32* %70)
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = sub nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = call i64 @skb_frag_size(i32* %84)
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %90, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %102

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %53

101:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %96, %51
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @hns3_gso_hdr_len(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
