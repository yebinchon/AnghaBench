; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_update_ndev_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_update_ndev_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, %struct.TYPE_3__*, %struct.net_device* }
%struct.TYPE_3__ = type { %struct.aq_stats_s* (i32)* }
%struct.aq_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aq_nic_s*)* @aq_nic_update_ndev_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aq_nic_update_ndev_stats(%struct.aq_nic_s* %0) #0 {
  %2 = alloca %struct.aq_nic_s*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.aq_stats_s*, align 8
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %2, align 8
  %5 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %6 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %9 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.aq_stats_s* (i32)*, %struct.aq_stats_s* (i32)** %11, align 8
  %13 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %14 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.aq_stats_s* %12(i32 %15)
  store %struct.aq_stats_s* %16, %struct.aq_stats_s** %4, align 8
  %17 = load %struct.aq_stats_s*, %struct.aq_stats_s** %4, align 8
  %18 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  store i32 %19, i32* %22, align 4
  %23 = load %struct.aq_stats_s*, %struct.aq_stats_s** %4, align 8
  %24 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 4
  %29 = load %struct.aq_stats_s*, %struct.aq_stats_s** %4, align 8
  %30 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 4
  %35 = load %struct.aq_stats_s*, %struct.aq_stats_s** %4, align 8
  %36 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load %struct.aq_stats_s*, %struct.aq_stats_s** %4, align 8
  %42 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.aq_stats_s*, %struct.aq_stats_s** %4, align 8
  %48 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.aq_stats_s*, %struct.aq_stats_s** %4, align 8
  %54 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.aq_stats_s*, %struct.aq_stats_s** %4, align 8
  %60 = getelementptr inbounds %struct.aq_stats_s, %struct.aq_stats_s* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
