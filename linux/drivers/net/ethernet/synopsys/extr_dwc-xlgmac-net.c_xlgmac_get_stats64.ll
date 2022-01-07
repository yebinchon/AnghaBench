; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i64, i32, i64, i32, i32, i32, i64, i64, i32, i64 }
%struct.xlgmac_pdata = type { %struct.TYPE_3__, %struct.xlgmac_stats }
%struct.TYPE_3__ = type { i32 (%struct.xlgmac_pdata.0*)* }
%struct.xlgmac_pdata.0 = type opaque
%struct.xlgmac_stats = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @xlgmac_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.xlgmac_pdata*, align 8
  %6 = alloca %struct.xlgmac_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.xlgmac_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.xlgmac_pdata* %8, %struct.xlgmac_pdata** %5, align 8
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %10 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %9, i32 0, i32 1
  store %struct.xlgmac_stats* %10, %struct.xlgmac_stats** %6, align 8
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.0*)** %13, align 8
  %15 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %16 = bitcast %struct.xlgmac_pdata* %15 to %struct.xlgmac_pdata.0*
  %17 = call i32 %14(%struct.xlgmac_pdata.0* %16)
  %18 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %19 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %22 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %21, i32 0, i32 10
  store i64 %20, i64* %22, align 8
  %23 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %24 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %27 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %29 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %32 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %36 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %40 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %44 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %43, i32 0, i32 8
  store i64 %42, i64* %44, align 8
  %45 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %46 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %49 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %48, i32 0, i32 7
  store i64 %47, i64* %49, align 8
  %50 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %51 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %54 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %56 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %61 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %64 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %66 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %69 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %71 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %74 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %76 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.xlgmac_stats*, %struct.xlgmac_stats** %6, align 8
  %79 = getelementptr inbounds %struct.xlgmac_stats, %struct.xlgmac_stats* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %83 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %89 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  ret void
}

declare dso_local %struct.xlgmac_pdata* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
