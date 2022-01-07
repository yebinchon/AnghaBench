; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dpaa2_eth_priv = type { %struct.fsl_mc_io*, i32, %struct.TYPE_2__ }
%struct.fsl_mc_io = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DPNI_OPT_NO_MAC_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"mac_filter_entries=%d, DPNI_OPT_NO_MAC_FILTER option must be disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Unicast addr count reached %d, max allowed is %d; forcing promisc\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"Unicast + multicast addr count reached %d, max allowed is %d; forcing promisc\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Can't set uc promisc\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Can't clear uc filters\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Can't clear uc promisc\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Can't set uc promisc (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Can't set mc promisc (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Can't clear mac filters\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Can't clear ucast promisc\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Can't clear mcast promisc\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Can't set ucast promisc\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Can't set mcast promisc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dpaa2_eth_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa2_eth_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsl_mc_io*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.dpaa2_eth_priv* %12, %struct.dpaa2_eth_priv** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netdev_uc_count(%struct.net_device* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netdev_mc_count(%struct.net_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %18 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %22 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %26 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %29 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %28, i32 0, i32 0
  %30 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %29, align 8
  store %struct.fsl_mc_io* %30, %struct.fsl_mc_io** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DPNI_OPT_NO_MAC_FILTER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %39, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %35, %1
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %47, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  br label %164

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %58, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  br label %174

64:                                               ; preds = %51
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_PROMISC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %164

72:                                               ; preds = %64
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IFF_ALLMULTI, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %72
  %80 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @dpni_set_unicast_promisc(%struct.fsl_mc_io* %80, i32 0, i32 %81, i32 1)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @dpni_clear_mac_filters(%struct.fsl_mc_io* %89, i32 0, i32 %90, i32 1, i32 0)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %88
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %100 = call i32 @add_uc_hw_addr(%struct.net_device* %98, %struct.dpaa2_eth_priv* %99)
  %101 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @dpni_set_unicast_promisc(%struct.fsl_mc_io* %101, i32 0, i32 %102, i32 0)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %97
  br label %174

110:                                              ; preds = %72
  %111 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @dpni_set_unicast_promisc(%struct.fsl_mc_io* %111, i32 0, i32 %112, i32 1)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %110
  %121 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @dpni_set_multicast_promisc(%struct.fsl_mc_io* %121, i32 0, i32 %122, i32 1)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %120
  %131 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @dpni_clear_mac_filters(%struct.fsl_mc_io* %131, i32 0, i32 %132, i32 1, i32 1)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.net_device*, %struct.net_device** %2, align 8
  %138 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %130
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %142 = call i32 @add_mc_hw_addr(%struct.net_device* %140, %struct.dpaa2_eth_priv* %141)
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %145 = call i32 @add_uc_hw_addr(%struct.net_device* %143, %struct.dpaa2_eth_priv* %144)
  %146 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @dpni_set_unicast_promisc(%struct.fsl_mc_io* %146, i32 0, i32 %147, i32 0)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %139
  %155 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @dpni_set_multicast_promisc(%struct.fsl_mc_io* %155, i32 0, i32 %156, i32 0)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.net_device*, %struct.net_device** %2, align 8
  %162 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %161, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %154
  br label %183

164:                                              ; preds = %71, %46
  %165 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @dpni_set_unicast_promisc(%struct.fsl_mc_io* %165, i32 0, i32 %166, i32 1)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load %struct.net_device*, %struct.net_device** %2, align 8
  %172 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %164
  br label %174

174:                                              ; preds = %173, %109, %57
  %175 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @dpni_set_multicast_promisc(%struct.fsl_mc_io* %175, i32 0, i32 %176, i32 1)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load %struct.net_device*, %struct.net_device** %2, align 8
  %182 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %183

183:                                              ; preds = %163, %180, %174
  ret void
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_uc_count(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @dpni_set_unicast_promisc(%struct.fsl_mc_io*, i32, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @dpni_clear_mac_filters(%struct.fsl_mc_io*, i32, i32, i32, i32) #1

declare dso_local i32 @add_uc_hw_addr(%struct.net_device*, %struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpni_set_multicast_promisc(%struct.fsl_mc_io*, i32, i32, i32) #1

declare dso_local i32 @add_mc_hw_addr(%struct.net_device*, %struct.dpaa2_eth_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
