; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.hns_nic_priv = type { i32, %struct.hnae_handle* }
%struct.hnae_handle = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.hnae_handle*, i32*)*, i32 (%struct.hnae_handle*, i32*)* }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"get_stats or update_stats is null!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @hns_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hns_nic_priv*, align 8
  %9 = alloca %struct.hnae_handle*, align 8
  %10 = alloca %struct.rtnl_link_stats64*, align 8
  %11 = alloca %struct.rtnl_link_stats64, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.hns_nic_priv* %14, %struct.hns_nic_priv** %8, align 8
  %15 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %8, align 8
  %16 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %15, i32 0, i32 1
  %17 = load %struct.hnae_handle*, %struct.hnae_handle** %16, align 8
  store %struct.hnae_handle* %17, %struct.hnae_handle** %9, align 8
  %18 = load %struct.hnae_handle*, %struct.hnae_handle** %9, align 8
  %19 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32 (%struct.hnae_handle*, i32*)*, i32 (%struct.hnae_handle*, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.hnae_handle*, i32*)* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.hnae_handle*, %struct.hnae_handle** %9, align 8
  %28 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32 (%struct.hnae_handle*, i32*)*, i32 (%struct.hnae_handle*, i32*)** %32, align 8
  %34 = icmp ne i32 (%struct.hnae_handle*, i32*)* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26, %3
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %195

38:                                               ; preds = %26
  %39 = load %struct.hnae_handle*, %struct.hnae_handle** %9, align 8
  %40 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32 (%struct.hnae_handle*, i32*)*, i32 (%struct.hnae_handle*, i32*)** %44, align 8
  %46 = load %struct.hnae_handle*, %struct.hnae_handle** %9, align 8
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 2
  %49 = call i32 %45(%struct.hnae_handle* %46, i32* %48)
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call %struct.rtnl_link_stats64* @dev_get_stats(%struct.net_device* %50, %struct.rtnl_link_stats64* %11)
  store %struct.rtnl_link_stats64* %51, %struct.rtnl_link_stats64** %10, align 8
  %52 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %53 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %52, i32 0, i32 22
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %58 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %57, i32 0, i32 21
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %63 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %62, i32 0, i32 20
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %68 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %67, i32 0, i32 19
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %73 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %72, i32 0, i32 18
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %78 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %77, i32 0, i32 17
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %83 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %82, i32 0, i32 16
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  store i32 %84, i32* %86, align 4
  %87 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %88 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %87, i32 0, i32 15
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %93 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 8
  store i32 %94, i32* %96, align 4
  %97 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %98 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 9
  store i32 %99, i32* %101, align 4
  %102 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %103 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 10
  store i32 %104, i32* %106, align 4
  %107 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %108 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 11
  store i32 %109, i32* %111, align 4
  %112 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %113 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 12
  store i32 %114, i32* %116, align 4
  %117 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %118 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 13
  store i32 %119, i32* %121, align 4
  %122 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %123 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 14
  store i32 %124, i32* %126, align 4
  %127 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %128 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 15
  store i32 %129, i32* %131, align 4
  %132 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %133 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 16
  store i32 %134, i32* %136, align 4
  %137 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %138 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 17
  store i32 %139, i32* %141, align 4
  %142 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %143 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 18
  store i32 %144, i32* %146, align 4
  %147 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %148 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 19
  store i32 %149, i32* %151, align 4
  %152 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %153 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 20
  store i32 %154, i32* %156, align 4
  %157 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %158 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 21
  store i32 %159, i32* %161, align 4
  %162 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %10, align 8
  %163 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 22
  store i32 %164, i32* %166, align 4
  %167 = load %struct.net_device*, %struct.net_device** %4, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 23
  store i32 %170, i32* %172, align 4
  %173 = load %struct.net_device*, %struct.net_device** %4, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 24
  store i32 %176, i32* %178, align 4
  %179 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %8, align 8
  %180 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 25
  store i32 %181, i32* %183, align 4
  %184 = load %struct.hnae_handle*, %struct.hnae_handle** %9, align 8
  %185 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %184, i32 0, i32 0
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32 (%struct.hnae_handle*, i32*)*, i32 (%struct.hnae_handle*, i32*)** %189, align 8
  %191 = load %struct.hnae_handle*, %struct.hnae_handle** %9, align 8
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 26
  %194 = call i32 %190(%struct.hnae_handle* %191, i32* %193)
  br label %195

195:                                              ; preds = %38, %35
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.rtnl_link_stats64* @dev_get_stats(%struct.net_device*, %struct.rtnl_link_stats64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
