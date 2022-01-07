; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_free_encap_mac_filt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_free_encap_mac_filt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_vi_mac_exact = type { i32, i32 }
%struct.fw_vi_mac_cmd = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { %struct.fw_vi_mac_exact* }

@FW_VI_MAC_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_VI_MAC_TYPE_EXACTMAC = common dso_local global i32 0, align 4
@FW_VI_MAC_CMD_VALID_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_free_encap_mac_filt(%struct.adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_vi_mac_exact*, align 8
  %10 = alloca [6 x i32], align 16
  %11 = alloca %struct.fw_vi_mac_cmd, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = bitcast [6 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 24, i1 false)
  store i32 0, i32* %12, align 4
  %15 = call i32 @memset(%struct.fw_vi_mac_cmd* %11, i32 0, i32 24)
  %16 = load i32, i32* @FW_VI_MAC_CMD, align 4
  %17 = call i32 @FW_CMD_OP_V(i32 %16)
  %18 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @FW_CMD_EXEC_V(i32 0)
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @FW_VI_MAC_CMD_VIID_V(i32 %24)
  %26 = or i32 %23, %25
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %11, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @FW_VI_MAC_TYPE_EXACTMAC, align 4
  %30 = call i32 @FW_VI_MAC_CMD_ENTRY_TYPE_V(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = call i32 @FW_VI_MAC_CMD_FREEMACS_V(i32 0)
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @FW_CMD_LEN16_V(i32 1)
  %35 = or i32 %33, %34
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %11, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.fw_vi_mac_exact*, %struct.fw_vi_mac_exact** %39, align 8
  store %struct.fw_vi_mac_exact* %40, %struct.fw_vi_mac_exact** %9, align 8
  %41 = load i32, i32* @FW_VI_MAC_CMD_VALID_F, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @FW_VI_MAC_CMD_IDX_V(i32 %42)
  %44 = or i32 %41, %43
  %45 = call i32 @cpu_to_be16(i32 %44)
  %46 = load %struct.fw_vi_mac_exact*, %struct.fw_vi_mac_exact** %9, align 8
  %47 = getelementptr inbounds %struct.fw_vi_mac_exact, %struct.fw_vi_mac_exact* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.fw_vi_mac_exact*, %struct.fw_vi_mac_exact** %9, align 8
  %49 = getelementptr inbounds %struct.fw_vi_mac_exact, %struct.fw_vi_mac_exact* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %52 = call i32 @memcpy(i32 %50, i32* %51, i32 4)
  %53 = load %struct.adapter*, %struct.adapter** %5, align 8
  %54 = load %struct.adapter*, %struct.adapter** %5, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @t4_wr_mbox_meat(%struct.adapter* %53, i32 %56, %struct.fw_vi_mac_cmd* %11, i32 24, %struct.fw_vi_mac_cmd* %11, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.fw_vi_mac_cmd*, i32, i32) #2

declare dso_local i8* @cpu_to_be32(i32) #2

declare dso_local i32 @FW_CMD_OP_V(i32) #2

declare dso_local i32 @FW_CMD_EXEC_V(i32) #2

declare dso_local i32 @FW_VI_MAC_CMD_VIID_V(i32) #2

declare dso_local i32 @FW_VI_MAC_CMD_ENTRY_TYPE_V(i32) #2

declare dso_local i32 @FW_VI_MAC_CMD_FREEMACS_V(i32) #2

declare dso_local i32 @FW_CMD_LEN16_V(i32) #2

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i32 @FW_VI_MAC_CMD_IDX_V(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_vi_mac_cmd*, i32, %struct.fw_vi_mac_cmd*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
