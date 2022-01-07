; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ionic_lif = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ionic_identity }
%struct.ionic_identity = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@IONIC_RX_MODE_F_UNICAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IONIC_RX_MODE_F_MULTICAST = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IONIC_RX_MODE_F_BROADCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IONIC_RX_MODE_F_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IONIC_RX_MODE_F_ALLMULTI = common dso_local global i32 0, align 4
@ionic_addr_add = common dso_local global i32 0, align 4
@ionic_addr_del = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ionic_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca %struct.ionic_identity*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %7)
  store %struct.ionic_lif* %8, %struct.ionic_lif** %3, align 8
  %9 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %10 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.ionic_identity* %12, %struct.ionic_identity** %4, align 8
  %13 = load i32, i32* @IONIC_RX_MODE_F_UNICAST, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFF_MULTICAST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @IONIC_RX_MODE_F_MULTICAST, align 4
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_BROADCAST, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @IONIC_RX_MODE_F_BROADCAST, align 4
  br label %36

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_PROMISC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @IONIC_RX_MODE_F_PROMISC, align 4
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_ALLMULTI, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @IONIC_RX_MODE_F_ALLMULTI, align 4
  br label %62

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load i32, i32* @ionic_addr_add, align 4
  %68 = load i32, i32* @ionic_addr_del, align 4
  %69 = call i32 @__dev_uc_sync(%struct.net_device* %66, i32 %67, i32 %68)
  %70 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %71 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = call i32 @netdev_uc_count(%struct.net_device* %76)
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %5, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %62
  %82 = load i32, i32* @IONIC_RX_MODE_F_PROMISC, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %86 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %108

87:                                               ; preds = %62
  %88 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %89 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %94 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IFF_PROMISC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @IONIC_RX_MODE_F_PROMISC, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %92
  br label %107

107:                                              ; preds = %106, %87
  br label %108

108:                                              ; preds = %107, %81
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = load i32, i32* @ionic_addr_add, align 4
  %111 = load i32, i32* @ionic_addr_del, align 4
  %112 = call i32 @__dev_mc_sync(%struct.net_device* %109, i32 %110, i32 %111)
  %113 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %114 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = call i32 @netdev_mc_count(%struct.net_device* %119)
  %121 = load i32, i32* %5, align 4
  %122 = icmp ugt i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %108
  %124 = load i32, i32* @IONIC_RX_MODE_F_ALLMULTI, align 4
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %128 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  br label %150

129:                                              ; preds = %108
  %130 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %131 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %129
  %135 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %136 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %135, i32 0, i32 1
  store i32 0, i32* %136, align 4
  %137 = load %struct.net_device*, %struct.net_device** %2, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @IFF_ALLMULTI, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %134
  %144 = load i32, i32* @IONIC_RX_MODE_F_ALLMULTI, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %143, %134
  br label %149

149:                                              ; preds = %148, %129
  br label %150

150:                                              ; preds = %149, %123
  %151 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %152 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @_ionic_lif_rx_mode(%struct.ionic_lif* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %150
  ret void
}

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netdev_uc_count(%struct.net_device*) #1

declare dso_local i32 @__dev_mc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @_ionic_lif_rx_mode(%struct.ionic_lif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
