; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgbe_prv_data = type { i32, %struct.xgbe_hw_if }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.4*)*, i32 (%struct.xgbe_prv_data.5*)*, i32 (%struct.xgbe_prv_data.6*)*, i32 (%struct.xgbe_prv_data.7*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque
%struct.xgbe_prv_data.2 = type opaque
%struct.xgbe_prv_data.3 = type opaque
%struct.xgbe_prv_data.4 = type opaque
%struct.xgbe_prv_data.5 = type opaque
%struct.xgbe_prv_data.6 = type opaque
%struct.xgbe_prv_data.7 = type opaque

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"<--xgbe_set_features\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xgbe_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.xgbe_hw_if*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %14)
  store %struct.xgbe_prv_data* %15, %struct.xgbe_prv_data** %6, align 8
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 1
  store %struct.xgbe_hw_if* %17, %struct.xgbe_hw_if** %7, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NETIF_F_RXHASH, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @NETIF_F_RXHASH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %52 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %51, i32 0, i32 0
  %53 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %52, align 8
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %55 = bitcast %struct.xgbe_prv_data* %54 to %struct.xgbe_prv_data.0*
  %56 = call i32 %53(%struct.xgbe_prv_data.0* %55)
  store i32 %56, i32* %13, align 4
  br label %73

57:                                               ; preds = %47, %2
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NETIF_F_RXHASH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %67 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %66, i32 0, i32 1
  %68 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %67, align 8
  %69 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %70 = bitcast %struct.xgbe_prv_data* %69 to %struct.xgbe_prv_data.1*
  %71 = call i32 %68(%struct.xgbe_prv_data.1* %70)
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %65, %62, %57
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %3, align 4
  br label %199

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %88 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %87, i32 0, i32 7
  %89 = load i32 (%struct.xgbe_prv_data.7*)*, i32 (%struct.xgbe_prv_data.7*)** %88, align 8
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %91 = bitcast %struct.xgbe_prv_data* %90 to %struct.xgbe_prv_data.7*
  %92 = call i32 %89(%struct.xgbe_prv_data.7* %91)
  br label %109

93:                                               ; preds = %83, %78
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %103 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %102, i32 0, i32 6
  %104 = load i32 (%struct.xgbe_prv_data.6*)*, i32 (%struct.xgbe_prv_data.6*)** %103, align 8
  %105 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %106 = bitcast %struct.xgbe_prv_data* %105 to %struct.xgbe_prv_data.6*
  %107 = call i32 %104(%struct.xgbe_prv_data.6* %106)
  br label %108

108:                                              ; preds = %101, %98, %93
  br label %109

109:                                              ; preds = %108, %86
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %119 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %118, i32 0, i32 5
  %120 = load i32 (%struct.xgbe_prv_data.5*)*, i32 (%struct.xgbe_prv_data.5*)** %119, align 8
  %121 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %122 = bitcast %struct.xgbe_prv_data* %121 to %struct.xgbe_prv_data.5*
  %123 = call i32 %120(%struct.xgbe_prv_data.5* %122)
  br label %140

124:                                              ; preds = %114, %109
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %134 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %133, i32 0, i32 4
  %135 = load i32 (%struct.xgbe_prv_data.4*)*, i32 (%struct.xgbe_prv_data.4*)** %134, align 8
  %136 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %137 = bitcast %struct.xgbe_prv_data* %136 to %struct.xgbe_prv_data.4*
  %138 = call i32 %135(%struct.xgbe_prv_data.4* %137)
  br label %139

139:                                              ; preds = %132, %129, %124
  br label %140

140:                                              ; preds = %139, %117
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %145
  %149 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %150 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %149, i32 0, i32 3
  %151 = load i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.3*)** %150, align 8
  %152 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %153 = bitcast %struct.xgbe_prv_data* %152 to %struct.xgbe_prv_data.3*
  %154 = call i32 %151(%struct.xgbe_prv_data.3* %153)
  br label %171

155:                                              ; preds = %145, %140
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %165 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %164, i32 0, i32 2
  %166 = load i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.2*)** %165, align 8
  %167 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %168 = bitcast %struct.xgbe_prv_data* %167 to %struct.xgbe_prv_data.2*
  %169 = call i32 %166(%struct.xgbe_prv_data.2* %168)
  br label %170

170:                                              ; preds = %163, %160, %155
  br label %171

171:                                              ; preds = %170, %148
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %181 = call i32 @xgbe_enable_vxlan_accel(%struct.xgbe_prv_data* %180)
  br label %194

182:                                              ; preds = %176, %171
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %192 = call i32 @xgbe_disable_vxlan_accel(%struct.xgbe_prv_data* %191)
  br label %193

193:                                              ; preds = %190, %187, %182
  br label %194

194:                                              ; preds = %193, %179
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %197 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = call i32 @DBGPR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %194, %76
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xgbe_enable_vxlan_accel(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_disable_vxlan_accel(%struct.xgbe_prv_data*) #1

declare dso_local i32 @DBGPR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
