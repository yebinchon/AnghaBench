; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl8169_private = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.rtl8169_counters*, %struct.pci_dev* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.rtl8169_counters = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @rtl8169_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.rtl8169_private*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.rtl8169_counters*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %9)
  store %struct.rtl8169_private* %10, %struct.rtl8169_private** %5, align 8
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %12 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %11, i32 0, i32 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %15 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %14, i32 0, i32 3
  %16 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %15, align 8
  store %struct.rtl8169_counters* %16, %struct.rtl8169_counters** %7, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @pm_runtime_get_noresume(i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i64 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i64 @pm_runtime_active(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @rtl8169_rx_missed(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %28, %23, %2
  br label %32

32:                                               ; preds = %49, %31
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %34 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = call i32 @u64_stats_fetch_begin_irq(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %38 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %42 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %44 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %48 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %47, i32 0, i32 13
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %32
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %51 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @u64_stats_fetch_retry_irq(i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %32, label %56

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %74, %56
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %59 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = call i32 @u64_stats_fetch_begin_irq(i32* %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %63 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %67 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %69 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %73 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %57
  %75 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %76 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @u64_stats_fetch_retry_irq(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %57, label %81

81:                                               ; preds = %74
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %87 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 4
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %93 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 8
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %99 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 4
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %105 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %111 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %117 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %123 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %129 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 0
  %132 = call i64 @pm_runtime_active(i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %81
  %135 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %136 = call i32 @rtl8169_update_counters(%struct.rtl8169_private* %135)
  br label %137

137:                                              ; preds = %134, %81
  %138 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %7, align 8
  %139 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @le64_to_cpu(i32 %140)
  %142 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %143 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @le64_to_cpu(i32 %145)
  %147 = sub nsw i64 %141, %146
  %148 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %149 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %7, align 8
  %151 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @le32_to_cpu(i32 %152)
  %154 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %155 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @le32_to_cpu(i32 %157)
  %159 = sub nsw i64 %153, %158
  %160 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %161 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.rtl8169_counters*, %struct.rtl8169_counters** %7, align 8
  %163 = getelementptr inbounds %struct.rtl8169_counters, %struct.rtl8169_counters* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @le16_to_cpu(i32 %164)
  %166 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %167 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @le16_to_cpu(i32 %169)
  %171 = sub nsw i64 %165, %170
  %172 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %173 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %175 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %174, i32 0, i32 0
  %176 = call i32 @pm_runtime_put_noidle(i32* %175)
  ret void
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @pm_runtime_active(i32*) #1

declare dso_local i32 @rtl8169_rx_missed(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

declare dso_local i32 @rtl8169_update_counters(%struct.rtl8169_private*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
