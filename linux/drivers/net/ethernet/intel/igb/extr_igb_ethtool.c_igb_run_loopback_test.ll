; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_run_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_run_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.igb_ring, %struct.igb_ring }
%struct.igb_ring = type { i32 }
%struct.sk_buff = type { i32 }

@IGB_RX_HDR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_run_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_run_loopback_test(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 1
  store %struct.igb_ring* %15, %struct.igb_ring** %4, align 8
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 0
  store %struct.igb_ring* %17, %struct.igb_ring** %5, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @IGB_RX_HDR_LEN, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sk_buff* @alloc_skb(i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %13, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 11, i32* %2, align 4
  br label %99

25:                                               ; preds = %1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @igb_create_lbtest_frame(%struct.sk_buff* %26, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @skb_put(%struct.sk_buff* %29, i32 %30)
  %32 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %33 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %36 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %25
  %40 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %41 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 64
  %44 = mul nsw i32 %43, 2
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %53

46:                                               ; preds = %25
  %47 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %48 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 64
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %46, %39
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %92, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 64
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %64 = call i32 @skb_get(%struct.sk_buff* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %66 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %67 = call i32 @igb_xmit_frame_ring(%struct.sk_buff* %65, %struct.igb_ring* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @NETDEV_TX_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 64
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 12, i32* %10, align 4
  br label %95

82:                                               ; preds = %78
  %83 = call i32 @msleep(i32 200)
  %84 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %85 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @igb_clean_test_rings(%struct.igb_ring* %84, %struct.igb_ring* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 64
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 13, i32* %10, align 4
  br label %95

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %54

95:                                               ; preds = %90, %81, %54
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %24
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @igb_create_lbtest_frame(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @igb_xmit_frame_ring(%struct.sk_buff*, %struct.igb_ring*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @igb_clean_test_rings(%struct.igb_ring*, %struct.igb_ring*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
