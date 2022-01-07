; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rss_hash_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rss_hash_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rxnfc = type { i32, i64 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@HCLGE_S_PORT_BIT = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@HCLGE_D_PORT_BIT = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@HCLGE_S_IP_BIT = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@HCLGE_D_IP_BIT = common dso_local global i32 0, align 4
@SCTP_V4_FLOW = common dso_local global i64 0, align 8
@SCTP_V6_FLOW = common dso_local global i64 0, align 8
@HCLGE_V_TAG_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rxnfc*)* @hclge_get_rss_hash_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_rss_hash_bits(%struct.ethtool_rxnfc* %0) #0 {
  %2 = alloca %struct.ethtool_rxnfc*, align 8
  %3 = alloca i32, align 4
  store %struct.ethtool_rxnfc* %0, %struct.ethtool_rxnfc** %2, align 8
  %4 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %2, align 8
  %5 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @RXH_L4_B_0_1, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @HCLGE_S_PORT_BIT, align 4
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %2, align 8
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RXH_L4_B_2_3, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @HCLGE_D_PORT_BIT, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %13
  %26 = load i32, i32* @HCLGE_D_PORT_BIT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %2, align 8
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RXH_IP_SRC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @HCLGE_S_IP_BIT, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load i32, i32* @HCLGE_S_IP_BIT, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %2, align 8
  %48 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RXH_IP_DST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @HCLGE_D_IP_BIT, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @HCLGE_D_IP_BIT, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %2, align 8
  %64 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SCTP_V4_FLOW, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %2, align 8
  %70 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SCTP_V6_FLOW, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68, %62
  %75 = load i32, i32* @HCLGE_V_TAG_BIT, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
