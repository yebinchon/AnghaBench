; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_run_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_run_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_ring, %struct.ixgbe_ring }
%struct.ixgbe_ring = type { i32 }
%struct.sk_buff = type { i32 }

@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_run_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_run_loopback_test(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 2
  store %struct.ixgbe_ring* %16, %struct.ixgbe_ring** %4, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 1
  store %struct.ixgbe_ring* %18, %struct.ixgbe_ring** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 1024, i32* %11, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @IXGBE_FLAG_DCB_ENABLED, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.sk_buff* @alloc_skb(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %13, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i32 11, i32* %2, align 4
  br label %112

34:                                               ; preds = %1
  %35 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ixgbe_create_lbtest_frame(%struct.sk_buff* %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @skb_put(%struct.sk_buff* %38, i32 %39)
  %41 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %42 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %45 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 64
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %62

55:                                               ; preds = %34
  %56 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %57 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 64
  %60 = mul nsw i32 %59, 2
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %55, %48
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %102, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 64
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %73 = call i32 @skb_get(%struct.sk_buff* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %75 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %76 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %77 = call i32 @ixgbe_xmit_frame_ring(%struct.sk_buff* %74, %struct.ixgbe_adapter* %75, %struct.ixgbe_ring* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @NETDEV_TX_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %68

88:                                               ; preds = %68
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 64
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 12, i32* %10, align 4
  br label %105

92:                                               ; preds = %88
  %93 = call i32 @msleep(i32 200)
  %94 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %95 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @ixgbe_clean_test_rings(%struct.ixgbe_ring* %94, %struct.ixgbe_ring* %95, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 64
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 13, i32* %10, align 4
  br label %105

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %63

105:                                              ; preds = %100, %91, %63
  %106 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %107 = call i32 @kfree_skb(%struct.sk_buff* %106)
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %105, %33
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @ixgbe_create_lbtest_frame(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @ixgbe_xmit_frame_ring(%struct.sk_buff*, %struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ixgbe_clean_test_rings(%struct.ixgbe_ring*, %struct.ixgbe_ring*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
