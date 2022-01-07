; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_eth_init_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_eth_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device = type { %struct.fman_port** }
%struct.fman_port = type { i32 }
%struct.dpaa_bp = type { i32 }
%struct.fm_port_fqs = type { i32, i32, i32, i32, i32 }
%struct.dpaa_buffer_layout = type { i32 }
%struct.device = type { i32 }

@RX = common dso_local global i64 0, align 8
@TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_device*, %struct.dpaa_bp**, i64, %struct.fm_port_fqs*, %struct.dpaa_buffer_layout*, %struct.device*)* @dpaa_eth_init_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_eth_init_ports(%struct.mac_device* %0, %struct.dpaa_bp** %1, i64 %2, %struct.fm_port_fqs* %3, %struct.dpaa_buffer_layout* %4, %struct.device* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mac_device*, align 8
  %9 = alloca %struct.dpaa_bp**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fm_port_fqs*, align 8
  %12 = alloca %struct.dpaa_buffer_layout*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.fman_port*, align 8
  %15 = alloca %struct.fman_port*, align 8
  %16 = alloca i32, align 4
  store %struct.mac_device* %0, %struct.mac_device** %8, align 8
  store %struct.dpaa_bp** %1, %struct.dpaa_bp*** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.fm_port_fqs* %3, %struct.fm_port_fqs** %11, align 8
  store %struct.dpaa_buffer_layout* %4, %struct.dpaa_buffer_layout** %12, align 8
  store %struct.device* %5, %struct.device** %13, align 8
  %17 = load %struct.mac_device*, %struct.mac_device** %8, align 8
  %18 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %17, i32 0, i32 0
  %19 = load %struct.fman_port**, %struct.fman_port*** %18, align 8
  %20 = load i64, i64* @RX, align 8
  %21 = getelementptr inbounds %struct.fman_port*, %struct.fman_port** %19, i64 %20
  %22 = load %struct.fman_port*, %struct.fman_port** %21, align 8
  store %struct.fman_port* %22, %struct.fman_port** %14, align 8
  %23 = load %struct.mac_device*, %struct.mac_device** %8, align 8
  %24 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %23, i32 0, i32 0
  %25 = load %struct.fman_port**, %struct.fman_port*** %24, align 8
  %26 = load i64, i64* @TX, align 8
  %27 = getelementptr inbounds %struct.fman_port*, %struct.fman_port** %25, i64 %26
  %28 = load %struct.fman_port*, %struct.fman_port** %27, align 8
  store %struct.fman_port* %28, %struct.fman_port** %15, align 8
  %29 = load %struct.fman_port*, %struct.fman_port** %15, align 8
  %30 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %11, align 8
  %31 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %11, align 8
  %34 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dpaa_buffer_layout*, %struct.dpaa_buffer_layout** %12, align 8
  %37 = load i64, i64* @TX, align 8
  %38 = getelementptr inbounds %struct.dpaa_buffer_layout, %struct.dpaa_buffer_layout* %36, i64 %37
  %39 = call i32 @dpaa_eth_init_tx_port(%struct.fman_port* %29, i32 %32, i32 %35, %struct.dpaa_buffer_layout* %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %6
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %7, align 4
  br label %62

44:                                               ; preds = %6
  %45 = load %struct.fman_port*, %struct.fman_port** %14, align 8
  %46 = load %struct.dpaa_bp**, %struct.dpaa_bp*** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %11, align 8
  %49 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %11, align 8
  %52 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fm_port_fqs*, %struct.fm_port_fqs** %11, align 8
  %55 = getelementptr inbounds %struct.fm_port_fqs, %struct.fm_port_fqs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dpaa_buffer_layout*, %struct.dpaa_buffer_layout** %12, align 8
  %58 = load i64, i64* @RX, align 8
  %59 = getelementptr inbounds %struct.dpaa_buffer_layout, %struct.dpaa_buffer_layout* %57, i64 %58
  %60 = call i32 @dpaa_eth_init_rx_port(%struct.fman_port* %45, %struct.dpaa_bp** %46, i64 %47, i32 %50, i32 %53, i32 %56, %struct.dpaa_buffer_layout* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %44, %42
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @dpaa_eth_init_tx_port(%struct.fman_port*, i32, i32, %struct.dpaa_buffer_layout*) #1

declare dso_local i32 @dpaa_eth_init_rx_port(%struct.fman_port*, %struct.dpaa_bp**, i64, i32, i32, i32, %struct.dpaa_buffer_layout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
