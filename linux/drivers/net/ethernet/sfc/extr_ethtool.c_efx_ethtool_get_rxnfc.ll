; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.efx_nic = type { i32, i32, %struct.efx_rss_context }
%struct.efx_rss_context = type { i32 }

@FLOW_RSS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RX_CLS_LOC_SPECIAL = common dso_local global i32 0, align 4
@EFX_FILTER_PRI_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @efx_ethtool_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.efx_nic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.efx_rss_context*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %12)
  store %struct.efx_nic* %13, %struct.efx_nic** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %15 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %201 [
    i32 136, label %17
    i32 137, label %23
    i32 139, label %119
    i32 138, label %143
    i32 140, label %172
  ]

17:                                               ; preds = %3
  %18 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %4, align 4
  br label %204

23:                                               ; preds = %3
  %24 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 2
  store %struct.efx_rss_context* %25, %struct.efx_rss_context** %11, align 8
  %26 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %30 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FLOW_RSS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %23
  %36 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %42 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.efx_rss_context* @efx_find_rss_context_entry(%struct.efx_nic* %41, i32 %44)
  store %struct.efx_rss_context* %45, %struct.efx_rss_context** %11, align 8
  %46 = load %struct.efx_rss_context*, %struct.efx_rss_context** %11, align 8
  %47 = icmp ne %struct.efx_rss_context* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %114

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %35, %23
  %53 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %54 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.efx_rss_context*, %struct.efx_rss_context** %11, align 8
  %56 = call i32 @efx_rss_active(%struct.efx_rss_context* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %114

59:                                               ; preds = %52
  %60 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %61 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FLOW_RSS, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  switch i32 %65, label %112 [
    i32 129, label %66
    i32 131, label %72
    i32 133, label %81
    i32 142, label %81
    i32 135, label %81
    i32 128, label %89
    i32 130, label %95
    i32 132, label %104
    i32 141, label %104
    i32 134, label %104
  ]

66:                                               ; preds = %59
  %67 = load %struct.efx_rss_context*, %struct.efx_rss_context** %11, align 8
  %68 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %59, %71
  %73 = load i32, i32* @RXH_L4_B_0_1, align 4
  %74 = load i32, i32* @RXH_L4_B_2_3, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %77 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %72, %66
  br label %81

81:                                               ; preds = %59, %59, %59, %80
  %82 = load i32, i32* @RXH_IP_SRC, align 4
  %83 = load i32, i32* @RXH_IP_DST, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %86 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %113

89:                                               ; preds = %59
  %90 = load %struct.efx_rss_context*, %struct.efx_rss_context** %11, align 8
  %91 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %59, %94
  %96 = load i32, i32* @RXH_L4_B_0_1, align 4
  %97 = load i32, i32* @RXH_L4_B_2_3, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %100 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %89
  br label %104

104:                                              ; preds = %59, %59, %59, %103
  %105 = load i32, i32* @RXH_IP_SRC, align 4
  %106 = load i32, i32* @RXH_IP_DST, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %109 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %113

112:                                              ; preds = %59
  br label %113

113:                                              ; preds = %112, %104, %81
  br label %114

114:                                              ; preds = %113, %58, %48
  %115 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %116 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %4, align 4
  br label %204

119:                                              ; preds = %3
  %120 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %121 = call i8* @efx_filter_get_rx_id_limit(%struct.efx_nic* %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %124 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %126 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load i32, i32* @EOPNOTSUPP, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %204

132:                                              ; preds = %119
  %133 = load i32, i32* @RX_CLS_LOC_SPECIAL, align 4
  %134 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %135 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  %138 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %139 = load i32, i32* @EFX_FILTER_PRI_MANUAL, align 4
  %140 = call i32 @efx_filter_count_rx_used(%struct.efx_nic* %138, i32 %139)
  %141 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %142 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  store i32 0, i32* %4, align 4
  br label %204

143:                                              ; preds = %3
  %144 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %145 = call i8* @efx_filter_get_rx_id_limit(%struct.efx_nic* %144)
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* @EOPNOTSUPP, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %204

150:                                              ; preds = %143
  %151 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %152 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %153 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %152, i32 0, i32 5
  %154 = call i32 @efx_ethtool_get_class_rule(%struct.efx_nic* %151, %struct.TYPE_2__* %153, i32* %9)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %4, align 4
  br label %204

159:                                              ; preds = %150
  %160 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %161 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @FLOW_RSS, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %170 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %159
  store i32 0, i32* %4, align 4
  br label %204

172:                                              ; preds = %3
  %173 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %174 = call i8* @efx_filter_get_rx_id_limit(%struct.efx_nic* %173)
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %177 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %179 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %172
  %183 = load i32, i32* @EOPNOTSUPP, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %4, align 4
  br label %204

185:                                              ; preds = %172
  %186 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %187 = load i32, i32* @EFX_FILTER_PRI_MANUAL, align 4
  %188 = load i32*, i32** %7, align 8
  %189 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %190 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @efx_filter_get_rx_ids(%struct.efx_nic* %186, i32 %187, i32* %188, i32 %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %185
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %4, align 4
  br label %204

197:                                              ; preds = %185
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %200 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  store i32 0, i32* %4, align 4
  br label %204

201:                                              ; preds = %3
  %202 = load i32, i32* @EOPNOTSUPP, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %201, %197, %195, %182, %171, %157, %147, %132, %129, %114, %17
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.efx_rss_context* @efx_find_rss_context_entry(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_rss_active(%struct.efx_rss_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @efx_filter_get_rx_id_limit(%struct.efx_nic*) #1

declare dso_local i32 @efx_filter_count_rx_used(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_ethtool_get_class_rule(%struct.efx_nic*, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @efx_filter_get_rx_ids(%struct.efx_nic*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
