; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xlgmac_pdata = type { i32, %struct.xlgmac_hw_ops }
%struct.xlgmac_hw_ops = type { i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.1*)*, i32 (%struct.xlgmac_pdata.2*)*, i32 (%struct.xlgmac_pdata.3*)*, i32 (%struct.xlgmac_pdata.4*)*, i32 (%struct.xlgmac_pdata.5*)*, i32 (%struct.xlgmac_pdata.6*)*, i32 (%struct.xlgmac_pdata.7*)* }
%struct.xlgmac_pdata.0 = type opaque
%struct.xlgmac_pdata.1 = type opaque
%struct.xlgmac_pdata.2 = type opaque
%struct.xlgmac_pdata.3 = type opaque
%struct.xlgmac_pdata.4 = type opaque
%struct.xlgmac_pdata.5 = type opaque
%struct.xlgmac_pdata.6 = type opaque
%struct.xlgmac_pdata.7 = type opaque

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xlgmac_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xlgmac_pdata*, align 8
  %11 = alloca %struct.xlgmac_hw_ops*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.xlgmac_pdata* @netdev_priv(%struct.net_device* %13)
  store %struct.xlgmac_pdata* %14, %struct.xlgmac_pdata** %10, align 8
  %15 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %16 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %15, i32 0, i32 1
  store %struct.xlgmac_hw_ops* %16, %struct.xlgmac_hw_ops** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %18 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NETIF_F_RXHASH, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %23 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %28 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %33 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @NETIF_F_RXHASH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %46 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.0*)** %46, align 8
  %48 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %49 = bitcast %struct.xlgmac_pdata* %48 to %struct.xlgmac_pdata.0*
  %50 = call i32 %47(%struct.xlgmac_pdata.0* %49)
  store i32 %50, i32* %12, align 4
  br label %67

51:                                               ; preds = %41, %2
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @NETIF_F_RXHASH, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %61 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %60, i32 0, i32 1
  %62 = load i32 (%struct.xlgmac_pdata.1*)*, i32 (%struct.xlgmac_pdata.1*)** %61, align 8
  %63 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %64 = bitcast %struct.xlgmac_pdata* %63 to %struct.xlgmac_pdata.1*
  %65 = call i32 %62(%struct.xlgmac_pdata.1* %64)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %59, %56, %51
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %3, align 4
  br label %169

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %82 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %81, i32 0, i32 7
  %83 = load i32 (%struct.xlgmac_pdata.7*)*, i32 (%struct.xlgmac_pdata.7*)** %82, align 8
  %84 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %85 = bitcast %struct.xlgmac_pdata* %84 to %struct.xlgmac_pdata.7*
  %86 = call i32 %83(%struct.xlgmac_pdata.7* %85)
  br label %103

87:                                               ; preds = %77, %72
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %97 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %96, i32 0, i32 6
  %98 = load i32 (%struct.xlgmac_pdata.6*)*, i32 (%struct.xlgmac_pdata.6*)** %97, align 8
  %99 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %100 = bitcast %struct.xlgmac_pdata* %99 to %struct.xlgmac_pdata.6*
  %101 = call i32 %98(%struct.xlgmac_pdata.6* %100)
  br label %102

102:                                              ; preds = %95, %92, %87
  br label %103

103:                                              ; preds = %102, %80
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %113 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %112, i32 0, i32 5
  %114 = load i32 (%struct.xlgmac_pdata.5*)*, i32 (%struct.xlgmac_pdata.5*)** %113, align 8
  %115 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %116 = bitcast %struct.xlgmac_pdata* %115 to %struct.xlgmac_pdata.5*
  %117 = call i32 %114(%struct.xlgmac_pdata.5* %116)
  br label %134

118:                                              ; preds = %108, %103
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %128 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %127, i32 0, i32 4
  %129 = load i32 (%struct.xlgmac_pdata.4*)*, i32 (%struct.xlgmac_pdata.4*)** %128, align 8
  %130 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %131 = bitcast %struct.xlgmac_pdata* %130 to %struct.xlgmac_pdata.4*
  %132 = call i32 %129(%struct.xlgmac_pdata.4* %131)
  br label %133

133:                                              ; preds = %126, %123, %118
  br label %134

134:                                              ; preds = %133, %111
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %139
  %143 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %144 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %143, i32 0, i32 3
  %145 = load i32 (%struct.xlgmac_pdata.3*)*, i32 (%struct.xlgmac_pdata.3*)** %144, align 8
  %146 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %147 = bitcast %struct.xlgmac_pdata* %146 to %struct.xlgmac_pdata.3*
  %148 = call i32 %145(%struct.xlgmac_pdata.3* %147)
  br label %165

149:                                              ; preds = %139, %134
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %11, align 8
  %159 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %158, i32 0, i32 2
  %160 = load i32 (%struct.xlgmac_pdata.2*)*, i32 (%struct.xlgmac_pdata.2*)** %159, align 8
  %161 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %162 = bitcast %struct.xlgmac_pdata* %161 to %struct.xlgmac_pdata.2*
  %163 = call i32 %160(%struct.xlgmac_pdata.2* %162)
  br label %164

164:                                              ; preds = %157, %154, %149
  br label %165

165:                                              ; preds = %164, %142
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  %168 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %70
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.xlgmac_pdata* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
