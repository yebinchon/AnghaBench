; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_resp_fp_hsi_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_resp_fp_hsi_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.vfpf_fp_hsi_resp_tlv = type { i32 }

@CHANNEL_TLV_FP_HSI_SUPPORT = common dso_local global i32 0, align 4
@ETH_FP_HSI_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, i8*, i32*)* @bnx2x_vf_mbx_resp_fp_hsi_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_resp_fp_hsi_ver(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_virtf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vfpf_fp_hsi_resp_tlv*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CHANNEL_TLV_FP_HSI_SUPPORT, align 4
  %15 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %10, i8* %11, i32 %13, i32 %14, i32 4)
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = bitcast i32* %21 to %struct.vfpf_fp_hsi_resp_tlv*
  store %struct.vfpf_fp_hsi_resp_tlv* %22, %struct.vfpf_fp_hsi_resp_tlv** %9, align 8
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %24 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETH_FP_HSI_VERSION, align 4
  %27 = icmp sgt i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = load %struct.vfpf_fp_hsi_resp_tlv*, %struct.vfpf_fp_hsi_resp_tlv** %9, align 8
  %31 = getelementptr inbounds %struct.vfpf_fp_hsi_resp_tlv, %struct.vfpf_fp_hsi_resp_tlv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  ret void
}

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
