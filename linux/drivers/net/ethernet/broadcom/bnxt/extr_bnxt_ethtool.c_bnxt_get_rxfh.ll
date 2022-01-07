; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { %struct.bnxt_vnic_info* }
%struct.bnxt_vnic_info = type { i64, i32* }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@HW_HASH_INDEX_SIZE = common dso_local global i32 0, align 4
@HW_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @bnxt_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bnxt*, align 8
  %11 = alloca %struct.bnxt_vnic_info*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.bnxt* @netdev_priv(%struct.net_device* %13)
  store %struct.bnxt* %14, %struct.bnxt** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 0
  %23 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %22, align 8
  %24 = icmp ne %struct.bnxt_vnic_info* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %76

26:                                               ; preds = %20
  %27 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 0
  %29 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %28, align 8
  %30 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %29, i64 0
  store %struct.bnxt_vnic_info* %30, %struct.bnxt_vnic_info** %11, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %26
  %34 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %35 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @HW_HASH_INDEX_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %45 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %39

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %33, %26
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %65 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %11, align 8
  %71 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @HW_HASH_KEY_SIZE, align 4
  %74 = call i32 @memcpy(i32* %69, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %63, %60
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %25
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
