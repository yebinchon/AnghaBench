; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@HNS3_MAX_BD_NUM_NORMAL = common dso_local global i32 0, align 4
@HNS3_MAX_BD_NUM_TSO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, %struct.sk_buff**)* @hns3_nic_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_nic_maybe_stop_tx(%struct.hns3_enet_ring* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns3_enet_ring*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %9 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i32 @hns3_nic_bd_num(%struct.sk_buff* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @HNS3_MAX_BD_NUM_NORMAL, align 4
  %15 = icmp ugt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i64 @skb_is_gso(%struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HNS3_MAX_BD_NUM_TSO, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @hns3_skb_need_linearized(%struct.sk_buff* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %79

32:                                               ; preds = %27, %23, %19
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %92

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @hns3_nic_bd_num(%struct.sk_buff* %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i64 @skb_is_gso(%struct.sk_buff* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @HNS3_MAX_BD_NUM_TSO, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51, %41
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call i64 @skb_is_gso(%struct.sk_buff* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @HNS3_MAX_BD_NUM_NORMAL, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %51
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %92

66:                                               ; preds = %59, %55
  %67 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %68 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %67, i32 0, i32 0
  %69 = call i32 @u64_stats_update_begin(i32* %68)
  %70 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %71 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %76 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %75, i32 0, i32 0
  %77 = call i32 @u64_stats_update_end(i32* %76)
  br label %78

78:                                               ; preds = %66, %2
  br label %79

79:                                               ; preds = %78, %31
  %80 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %81 = call i32 @ring_space(%struct.hns3_enet_ring* %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ult i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %87, %63, %38
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @hns3_nic_bd_num(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @hns3_skb_need_linearized(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @ring_space(%struct.hns3_enet_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
