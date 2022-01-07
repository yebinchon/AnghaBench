; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_setup_tgec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_setup_tgec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@tgec_initialization = common dso_local global i32 0, align 4
@tgec_set_promiscuous = common dso_local global i32 0, align 4
@tgec_modify_mac_address = common dso_local global i32 0, align 4
@tgec_add_hash_mac_address = common dso_local global i32 0, align 4
@tgec_del_hash_mac_address = common dso_local global i32 0, align 4
@tgec_set_tx_pause_frames = common dso_local global i32 0, align 4
@tgec_accept_rx_pause_frames = common dso_local global i32 0, align 4
@tgec_set_exception = common dso_local global i32 0, align 4
@tgec_set_allmulti = common dso_local global i32 0, align 4
@tgec_set_tstamp = common dso_local global i32 0, align 4
@set_multi = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@stop = common dso_local global i32 0, align 4
@adjust_link_void = common dso_local global i32 0, align 4
@tgec_enable = common dso_local global i32 0, align 4
@tgec_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac_device*)* @setup_tgec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_tgec(%struct.mac_device* %0) #0 {
  %2 = alloca %struct.mac_device*, align 8
  store %struct.mac_device* %0, %struct.mac_device** %2, align 8
  %3 = load i32, i32* @tgec_initialization, align 4
  %4 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %5 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %4, i32 0, i32 14
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @tgec_set_promiscuous, align 4
  %7 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %8 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %7, i32 0, i32 13
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @tgec_modify_mac_address, align 4
  %10 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %11 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @tgec_add_hash_mac_address, align 4
  %13 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %14 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @tgec_del_hash_mac_address, align 4
  %16 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %17 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @tgec_set_tx_pause_frames, align 4
  %19 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %20 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @tgec_accept_rx_pause_frames, align 4
  %22 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %23 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @tgec_set_exception, align 4
  %25 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %26 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @tgec_set_allmulti, align 4
  %28 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %29 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @tgec_set_tstamp, align 4
  %31 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %32 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @set_multi, align 4
  %34 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %35 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @start, align 4
  %37 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %38 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @stop, align 4
  %40 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %41 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @adjust_link_void, align 4
  %43 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %44 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @tgec_enable, align 4
  %46 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %47 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @tgec_disable, align 4
  %51 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %52 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
