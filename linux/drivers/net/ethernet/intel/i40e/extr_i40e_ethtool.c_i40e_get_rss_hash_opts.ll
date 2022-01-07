; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@I40E_FILTER_PCTYPE_NONF_IPV4_TCP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_IPV4_UDP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_IPV6_TCP = common dso_local global i64 0, align 8
@I40E_FILTER_PCTYPE_NONF_IPV6_UDP = common dso_local global i64 0, align 8
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I40E_L4_SRC_MASK = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@I40E_L4_DST_MASK = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@I40E_L3_SRC_MASK = common dso_local global i32 0, align 4
@I40E_L3_DST_MASK = common dso_local global i32 0, align 4
@I40E_L3_V6_SRC_MASK = common dso_local global i32 0, align 4
@I40E_L3_V6_DST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, %struct.ethtool_rxnfc*)* @i40e_get_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_rss_hash_opts(%struct.i40e_pf* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  store %struct.i40e_hw* %10, %struct.i40e_hw** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %32 [
    i32 131, label %16
    i32 129, label %18
    i32 130, label %20
    i32 128, label %22
    i32 133, label %24
    i32 141, label %24
    i32 139, label %24
    i32 137, label %24
    i32 135, label %24
    i32 132, label %24
    i32 140, label %24
    i32 138, label %24
    i32 136, label %24
    i32 134, label %24
  ]

16:                                               ; preds = %2
  %17 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV4_TCP, align 8
  store i64 %17, i64* %7, align 8
  br label %35

18:                                               ; preds = %2
  %19 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV4_UDP, align 8
  store i64 %19, i64* %7, align 8
  br label %35

20:                                               ; preds = %2
  %21 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV6_TCP, align 8
  store i64 %21, i64* %7, align 8
  br label %35

22:                                               ; preds = %2
  %23 = load i64, i64* @I40E_FILTER_PCTYPE_NONF_IPV6_UDP, align 8
  store i64 %23, i64* %7, align 8
  br label %35

24:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %25 = load i32, i32* @RXH_IP_SRC, align 4
  %26 = load i32, i32* @RXH_IP_DST, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %145

35:                                               ; preds = %24, %22, %20, %18, %16
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @I40E_GLQF_HASH_INSET(i32 0, i64 %40)
  %42 = call i64 @i40e_read_rx_ctl(%struct.i40e_hw* %39, i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @I40E_GLQF_HASH_INSET(i32 1, i64 %45)
  %47 = call i64 @i40e_read_rx_ctl(%struct.i40e_hw* %44, i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %48, 32
  %50 = or i32 %43, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %38, %35
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %144

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @I40E_L4_SRC_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @RXH_L4_B_0_1, align 4
  %61 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @I40E_L4_DST_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @RXH_L4_B_2_3, align 4
  %72 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 131
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 129
  br i1 %85, label %86, label %109

86:                                               ; preds = %81, %76
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @I40E_L3_SRC_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* @RXH_IP_SRC, align 4
  %93 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @I40E_L3_DST_MASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32, i32* @RXH_IP_DST, align 4
  %104 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %97
  br label %143

109:                                              ; preds = %81
  %110 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %111 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 130
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %116 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 128
  br i1 %118, label %119, label %142

119:                                              ; preds = %114, %109
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @I40E_L3_V6_SRC_MASK, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* @RXH_IP_SRC, align 4
  %126 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %119
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @I40E_L3_V6_DST_MASK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i32, i32* @RXH_IP_DST, align 4
  %137 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %138 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %130
  br label %142

142:                                              ; preds = %141, %114
  br label %143

143:                                              ; preds = %142, %108
  br label %144

144:                                              ; preds = %143, %51
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %32
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i64 @i40e_read_rx_ctl(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_GLQF_HASH_INSET(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
