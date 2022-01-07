; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_rss_hash_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_rss_hash_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rxnfc = type { i32, i64 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@I40E_L4_SRC_MASK = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@I40E_L4_DST_MASK = common dso_local global i32 0, align 4
@TCP_V6_FLOW = common dso_local global i64 0, align 8
@UDP_V6_FLOW = common dso_local global i64 0, align 8
@I40E_L3_V6_SRC_MASK = common dso_local global i32 0, align 4
@I40E_L3_V6_DST_MASK = common dso_local global i32 0, align 4
@TCP_V4_FLOW = common dso_local global i64 0, align 8
@UDP_V4_FLOW = common dso_local global i64 0, align 8
@I40E_L3_SRC_MASK = common dso_local global i32 0, align 4
@I40E_L3_DST_MASK = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rxnfc*, i32)* @i40e_get_rss_hash_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_rss_hash_bits(%struct.ethtool_rxnfc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ethtool_rxnfc* %0, %struct.ethtool_rxnfc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RXH_L4_B_0_1, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @I40E_L4_SRC_MASK, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @I40E_L4_SRC_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RXH_L4_B_2_3, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @I40E_L4_DST_MASK, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %25
  %37 = load i32, i32* @I40E_L4_DST_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TCP_V6_FLOW, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UDP_V6_FLOW, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %41
  %54 = load i32, i32* @I40E_L3_V6_SRC_MASK, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @I40E_L3_V6_DST_MASK, align 4
  store i32 %55, i32* %8, align 4
  br label %74

56:                                               ; preds = %47
  %57 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TCP_V4_FLOW, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @UDP_V4_FLOW, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %56
  %69 = load i32, i32* @I40E_L3_SRC_MASK, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @I40E_L3_DST_MASK, align 4
  store i32 %70, i32* %8, align 4
  br label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %108

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RXH_IP_SRC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %90

85:                                               ; preds = %74
  %86 = load i32, i32* %7, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %81
  %91 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %92 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RXH_IP_DST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %106

101:                                              ; preds = %90
  %102 = load i32, i32* %8, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %97
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %71
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
