; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_epp.c_baycom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_epp.c_baycom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdlcdrv_channel_params = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i32, i64, i32, i32, i32, i32, i64, i32, i32*, i32* }
%struct.baycom_state = type { i32*, i64, %struct.hdlcdrv_channel_params }

@__const.baycom_probe.dflt_ch_params = private unnamed_addr constant %struct.hdlcdrv_channel_params { i32 20, i32 2, i32 10, i32 40, i32 0 }, align 4
@baycom_netdev_ops = common dso_local global i32 0, align 4
@ax25_header_ops = common dso_local global i32 0, align 4
@ARPHRD_AX25 = common dso_local global i32 0, align 4
@AX25_MAX_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_BPQ_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_DEF_PACLEN = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@ax25_bcast = common dso_local global i32 0, align 4
@null_ax25_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @baycom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @baycom_probe(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hdlcdrv_channel_params, align 4
  %4 = alloca %struct.baycom_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = bitcast %struct.hdlcdrv_channel_params* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.hdlcdrv_channel_params* @__const.baycom_probe.dflt_ch_params to i8*), i64 20, i1 false)
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %6)
  store %struct.baycom_state* %7, %struct.baycom_state** %4, align 8
  %8 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %9 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %8, i32 0, i32 2
  %10 = bitcast %struct.hdlcdrv_channel_params* %9 to i8*
  %11 = bitcast %struct.hdlcdrv_channel_params* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 4 %11, i64 20, i1 false)
  %12 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %13 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %15 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 9
  store i32* @baycom_netdev_ops, i32** %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 8
  store i32* @ax25_header_ops, i32** %19, align 8
  %20 = load i32, i32* @ARPHRD_AX25, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* @AX25_MAX_HEADER_LEN, align 8
  %24 = load i64, i64* @AX25_BPQ_HEADER_LEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 6
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @AX25_DEF_PACLEN, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @AX25_ADDR_LEN, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AX25_ADDR_LEN, align 4
  %38 = call i32 @memcpy(i32 %36, i32* @ax25_bcast, i32 %37)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AX25_ADDR_LEN, align 4
  %43 = call i32 @memcpy(i32 %41, i32* @null_ax25_address, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  store i32 16, i32* %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
