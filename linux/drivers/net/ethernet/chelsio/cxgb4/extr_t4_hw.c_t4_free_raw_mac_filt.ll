; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_free_raw_mac_filt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_free_raw_mac_filt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_vi_mac_cmd = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fw_vi_mac_raw }
%struct.fw_vi_mac_raw = type { i32*, i32*, i32, i8*, i8* }

@FW_VI_MAC_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_VI_MAC_TYPE_RAW = common dso_local global i32 0, align 4
@FW_VI_MAC_ID_BASED_FREE = common dso_local global i32 0, align 4
@DATALKPTYPE_M = common dso_local global i32 0, align 4
@DATAPORTNUM_M = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_free_raw_mac_filt(%struct.adapter* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fw_vi_mac_cmd, align 8
  %18 = alloca %struct.fw_vi_mac_raw*, align 8
  %19 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %17, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.fw_vi_mac_raw* %21, %struct.fw_vi_mac_raw** %18, align 8
  %22 = call i32 @memset(%struct.fw_vi_mac_cmd* %17, i32 0, i32 56)
  %23 = load i32, i32* @FW_VI_MAC_CMD, align 4
  %24 = call i32 @FW_CMD_OP_V(i32 %23)
  %25 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @FW_CMD_EXEC_V(i32 0)
  %30 = or i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @FW_VI_MAC_CMD_VIID_V(i32 %31)
  %33 = or i32 %30, %32
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %17, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = call i32 @FW_CMD_LEN16_V(i32 1)
  %37 = load i32, i32* @FW_VI_MAC_TYPE_RAW, align 4
  %38 = call i32 @FW_VI_MAC_CMD_ENTRY_TYPE_V(i32 %37)
  %39 = or i32 %36, %38
  store i32 %39, i32* %19, align 4
  %40 = call i32 @FW_VI_MAC_CMD_FREEMACS_V(i32 0)
  %41 = load i32, i32* %19, align 4
  %42 = call i32 @FW_CMD_LEN16_V(i32 %41)
  %43 = or i32 %40, %42
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %17, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @FW_VI_MAC_CMD_RAW_IDX_V(i32 %46)
  %48 = load i32, i32* @FW_VI_MAC_ID_BASED_FREE, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %18, align 8
  %52 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @DATALKPTYPE_V(i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @DATAPORTNUM_V(i32 %55)
  %57 = or i32 %54, %56
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %18, align 8
  %60 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @DATALKPTYPE_M, align 4
  %62 = call i32 @DATALKPTYPE_V(i32 %61)
  %63 = load i32, i32* @DATAPORTNUM_M, align 4
  %64 = call i32 @DATAPORTNUM_V(i32 %63)
  %65 = or i32 %62, %64
  %66 = call i32 @cpu_to_be64(i32 %65)
  %67 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %18, align 8
  %68 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %18, align 8
  %70 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = call i32 @memcpy(i32* %73, i32* %74, i32 %75)
  %77 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %18, align 8
  %78 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* @ETH_ALEN, align 4
  %84 = call i32 @memcpy(i32* %81, i32* %82, i32 %83)
  %85 = load %struct.adapter*, %struct.adapter** %9, align 8
  %86 = load %struct.adapter*, %struct.adapter** %9, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @t4_wr_mbox_meat(%struct.adapter* %85, i32 %88, %struct.fw_vi_mac_cmd* %17, i32 56, %struct.fw_vi_mac_cmd* %17, i32 %89)
  ret i32 %90
}

declare dso_local i32 @memset(%struct.fw_vi_mac_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_CMD_EXEC_V(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_VIID_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_ENTRY_TYPE_V(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_FREEMACS_V(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_RAW_IDX_V(i32) #1

declare dso_local i32 @DATALKPTYPE_V(i32) #1

declare dso_local i32 @DATAPORTNUM_V(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_vi_mac_cmd*, i32, %struct.fw_vi_mac_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
