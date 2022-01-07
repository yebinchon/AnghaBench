; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_resp_phys_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_resp_phys_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.vfpf_port_phys_id_resp_tlv = type { i32 }

@HAS_PHYS_PORT_ID = common dso_local global i32 0, align 4
@CHANNEL_TLV_PHYS_PORT_ID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, i8*, i32*)* @bnx2x_vf_mbx_resp_phys_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_resp_phys_port(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_virtf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vfpf_port_phys_id_resp_tlv*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HAS_PHYS_PORT_ID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %44

17:                                               ; preds = %4
  %18 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CHANNEL_TLV_PHYS_PORT_ID, align 4
  %23 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %18, i8* %19, i32 %21, i32 %22, i32 4)
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = bitcast i32* %29 to %struct.vfpf_port_phys_id_resp_tlv*
  store %struct.vfpf_port_phys_id_resp_tlv* %30, %struct.vfpf_port_phys_id_resp_tlv** %9, align 8
  %31 = load %struct.vfpf_port_phys_id_resp_tlv*, %struct.vfpf_port_phys_id_resp_tlv** %9, align 8
  %32 = getelementptr inbounds %struct.vfpf_port_phys_id_resp_tlv, %struct.vfpf_port_phys_id_resp_tlv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32 %33, i32 %36, i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  br label %44

44:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
