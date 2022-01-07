; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_set_rss_hash_opt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_set_rss_hash_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { i64 }
%struct.ethtool_rxnfc = type { i32, i32 }

@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SXGBE_CORE_RSS_CTL_TCP4TE = common dso_local global i32 0, align 4
@SXGBE_CORE_RSS_CTL_UDP4TE = common dso_local global i32 0, align 4
@SXGBE_CORE_RSS_CTL_IP2TE = common dso_local global i32 0, align 4
@SXGBE_CORE_RSS_CTL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sxgbe_priv_data*, %struct.ethtool_rxnfc*)* @sxgbe_set_rss_hash_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_set_rss_hash_opt(%struct.sxgbe_priv_data* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sxgbe_priv_data*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RXH_IP_SRC, align 4
  %11 = load i32, i32* @RXH_IP_DST, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RXH_L4_B_0_1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RXH_L4_B_2_3, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %9, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %151

23:                                               ; preds = %2
  %24 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %126 [
    i32 131, label %27
    i32 130, label %27
    i32 129, label %60
    i32 128, label %60
    i32 133, label %93
    i32 141, label %93
    i32 139, label %93
    i32 137, label %93
    i32 140, label %93
    i32 138, label %93
    i32 136, label %93
    i32 132, label %93
    i32 135, label %93
    i32 134, label %93
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RXH_IP_SRC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %27
  %35 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RXH_IP_DST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RXH_L4_B_0_1, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RXH_L4_B_2_3, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48, %41, %34, %27
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %151

58:                                               ; preds = %48
  %59 = load i32, i32* @SXGBE_CORE_RSS_CTL_TCP4TE, align 4
  store i32 %59, i32* %6, align 4
  br label %129

60:                                               ; preds = %23, %23
  %61 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RXH_IP_SRC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %60
  %68 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RXH_IP_DST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RXH_L4_B_0_1, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RXH_L4_B_2_3, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81, %74, %67, %60
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %151

91:                                               ; preds = %81
  %92 = load i32, i32* @SXGBE_CORE_RSS_CTL_UDP4TE, align 4
  store i32 %92, i32* %6, align 4
  br label %129

93:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  %94 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RXH_IP_SRC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %93
  %101 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RXH_IP_DST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RXH_L4_B_0_1, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %107
  %115 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %116 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @RXH_L4_B_2_3, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114, %107, %100, %93
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %151

124:                                              ; preds = %114
  %125 = load i32, i32* @SXGBE_CORE_RSS_CTL_IP2TE, align 4
  store i32 %125, i32* %6, align 4
  br label %129

126:                                              ; preds = %23
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %151

129:                                              ; preds = %124, %91, %58
  %130 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %4, align 8
  %131 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SXGBE_CORE_RSS_CTL_REG, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @readl(i64 %134)
  %136 = load i32, i32* %6, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %4, align 8
  %140 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SXGBE_CORE_RSS_CTL_REG, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel(i32 %138, i64 %143)
  %145 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %4, align 8
  %146 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SXGBE_CORE_RSS_CTL_REG, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @readl(i64 %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %129, %126, %121, %88, %55, %20
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
