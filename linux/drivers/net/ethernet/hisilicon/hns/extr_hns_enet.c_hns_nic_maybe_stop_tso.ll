; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_maybe_stop_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_maybe_stop_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hnae_ring = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@BD_MAX_SEND_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**, i32*, %struct.hnae_ring*)* @hns_nic_maybe_stop_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_maybe_stop_tso(%struct.sk_buff** %0, i32* %1, %struct.hnae_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hnae_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.hnae_ring* %2, %struct.hnae_ring** %7, align 8
  %15 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %18 = call i32 @skb_headlen(%struct.sk_buff* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @BD_MAX_SEND_SIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @BD_MAX_SEND_SIZE, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %51, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @skb_frag_size(i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @BD_MAX_SEND_SIZE, align 4
  %45 = add nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* @BD_MAX_SEND_SIZE, align 4
  %48 = sdiv i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %29

54:                                               ; preds = %29
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %57 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %54
  %64 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BD_MAX_SEND_SIZE, align 4
  %68 = add nsw i32 %66, %67
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* @BD_MAX_SEND_SIZE, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %73 = call i32 @ring_space(%struct.hnae_ring* %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %105

79:                                               ; preds = %63
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = load i32, i32* @GFP_ATOMIC, align 4
  %82 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %80, i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %13, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %105

88:                                               ; preds = %79
  %89 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %90 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %92 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %91, %struct.sk_buff** %92, align 8
  br label %102

93:                                               ; preds = %54
  %94 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %95 = call i32 @ring_space(%struct.hnae_ring* %94)
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %105

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %98, %85, %76
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ring_space(%struct.hnae_ring*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
