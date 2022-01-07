; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_link_status_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_link_status_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32* }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.bgx_link_status = type { i32, i32, i32, i32 }

@NIC_MBOX_MSG_BGX_LINK_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i64)* @nic_link_status_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_link_status_get(%struct.nicpf* %0, i64 %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.nic_mbx, align 4
  %6 = alloca %struct.bgx_link_status, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast %union.nic_mbx* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 20, i1 false)
  %10 = load i32, i32* @NIC_MBOX_MSG_BGX_LINK_CHANGE, align 4
  %11 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %14 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %21 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %28 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @bgx_get_lmac_link_state(i32 %29, i64 %30, i64 %31, %struct.bgx_link_status* %6)
  %33 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %6, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %6, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @nic_send_msg_to_vf(%struct.nicpf* %49, i64 %50, %union.nic_mbx* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i64 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i32 @bgx_get_lmac_link_state(i32, i64, i64, %struct.bgx_link_status*) #2

declare dso_local i32 @nic_send_msg_to_vf(%struct.nicpf*, i64, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
