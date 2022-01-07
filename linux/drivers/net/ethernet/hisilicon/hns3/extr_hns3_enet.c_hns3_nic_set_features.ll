; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)* }

@NETIF_F_GRO_HW = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hns3_nic_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_nic_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns3_nic_priv*, align 8
  %8 = alloca %struct.hnae3_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.hns3_nic_priv* %17, %struct.hns3_nic_priv** %7, align 8
  %18 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %19 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %18, i32 0, i32 0
  %20 = load %struct.hnae3_handle*, %struct.hnae3_handle** %19, align 8
  store %struct.hnae3_handle* %20, %struct.hnae3_handle** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %2
  %26 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %27 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.hnae3_handle*, i32)* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %43 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %47, align 8
  %49 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 %48(%struct.hnae3_handle* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %162

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %25, %2
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %64 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %68, align 8
  %70 = icmp ne i32 (%struct.hnae3_handle*, i32)* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %80 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %84, align 8
  %86 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 %85(%struct.hnae3_handle* %86, i32 %87)
  br label %89

89:                                               ; preds = %71, %62, %57
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %89
  %95 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %96 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %100, align 8
  %102 = icmp ne i32 (%struct.hnae3_handle*, i32)* %101, null
  br i1 %102, label %103, label %126

103:                                              ; preds = %94
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %9, align 4
  %111 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %112 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %116, align 8
  %118 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 %117(%struct.hnae3_handle* %118, i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %103
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %162

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %125, %94, %89
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %158

131:                                              ; preds = %126
  %132 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %133 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %137, align 8
  %139 = icmp ne i32 (%struct.hnae3_handle*, i32)* %138, null
  br i1 %139, label %140, label %158

140:                                              ; preds = %131
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %9, align 4
  %148 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %149 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %153, align 8
  %155 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 %154(%struct.hnae3_handle* %155, i32 %156)
  br label %158

158:                                              ; preds = %140, %131, %126
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %158, %123, %54
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
