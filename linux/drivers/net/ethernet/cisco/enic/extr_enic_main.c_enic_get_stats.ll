; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.enic = type { i32, i32 }
%struct.vnic_stats = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @enic_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_get_stats(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.enic*, align 8
  %6 = alloca %struct.vnic_stats*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.enic* @netdev_priv(%struct.net_device* %8)
  store %struct.enic* %9, %struct.enic** %5, align 8
  %10 = load %struct.enic*, %struct.enic** %5, align 8
  %11 = call i32 @enic_dev_stats_dump(%struct.enic* %10, %struct.vnic_stats** %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %19 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %23 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %25 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %29 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %31 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %35 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %37 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %41 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %43 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %47 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %49 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %53 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %55 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %61 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %65 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.enic*, %struct.enic** %5, align 8
  %67 = getelementptr inbounds %struct.enic, %struct.enic* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %70 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.enic*, %struct.enic** %5, align 8
  %72 = getelementptr inbounds %struct.enic, %struct.enic* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %75 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %77 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.vnic_stats*, %struct.vnic_stats** %6, align 8
  %81 = getelementptr inbounds %struct.vnic_stats, %struct.vnic_stats* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %79, %83
  %85 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %86 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enic_dev_stats_dump(%struct.enic*, %struct.vnic_stats**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
