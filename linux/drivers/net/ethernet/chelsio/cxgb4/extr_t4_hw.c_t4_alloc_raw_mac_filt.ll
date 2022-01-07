; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_alloc_raw_mac_filt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_alloc_raw_mac_filt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_vi_mac_cmd = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fw_vi_mac_raw }
%struct.fw_vi_mac_raw = type { i8*, i32*, i32*, i32, i8* }

@FW_VI_MAC_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_VI_MAC_TYPE_RAW = common dso_local global i32 0, align 4
@DATALKPTYPE_M = common dso_local global i32 0, align 4
@DATAPORTNUM_M = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_alloc_raw_mac_filt(%struct.adapter* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fw_vi_mac_cmd, align 8
  %19 = alloca %struct.fw_vi_mac_raw*, align 8
  %20 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %18, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.fw_vi_mac_raw* %22, %struct.fw_vi_mac_raw** %19, align 8
  %23 = call i32 @memset(%struct.fw_vi_mac_cmd* %18, i32 0, i32 56)
  %24 = load i32, i32* @FW_VI_MAC_CMD, align 4
  %25 = call i32 @FW_CMD_OP_V(i32 %24)
  %26 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @FW_VI_MAC_CMD_VIID_V(i32 %30)
  %32 = or i32 %29, %31
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %18, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = call i32 @FW_CMD_LEN16_V(i32 1)
  %36 = load i32, i32* @FW_VI_MAC_TYPE_RAW, align 4
  %37 = call i32 @FW_VI_MAC_CMD_ENTRY_TYPE_V(i32 %36)
  %38 = or i32 %35, %37
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = getelementptr inbounds %struct.fw_vi_mac_cmd, %struct.fw_vi_mac_cmd* %18, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @FW_VI_MAC_CMD_RAW_IDX_V(i32 %42)
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %19, align 8
  %46 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @DATALKPTYPE_V(i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @DATAPORTNUM_V(i32 %49)
  %51 = or i32 %48, %50
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %19, align 8
  %54 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @DATALKPTYPE_M, align 4
  %56 = call i32 @DATALKPTYPE_V(i32 %55)
  %57 = load i32, i32* @DATAPORTNUM_M, align 4
  %58 = call i32 @DATAPORTNUM_V(i32 %57)
  %59 = or i32 %56, %58
  %60 = call i32 @cpu_to_be64(i32 %59)
  %61 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %19, align 8
  %62 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %19, align 8
  %64 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @memcpy(i32* %67, i32* %68, i32 %69)
  %71 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %19, align 8
  %72 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = call i32 @memcpy(i32* %75, i32* %76, i32 %77)
  %79 = load %struct.adapter*, %struct.adapter** %9, align 8
  %80 = load %struct.adapter*, %struct.adapter** %9, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @t4_wr_mbox_meat(%struct.adapter* %79, i32 %82, %struct.fw_vi_mac_cmd* %18, i32 56, %struct.fw_vi_mac_cmd* %18, i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %8
  %88 = load %struct.fw_vi_mac_raw*, %struct.fw_vi_mac_raw** %19, align 8
  %89 = getelementptr inbounds %struct.fw_vi_mac_raw, %struct.fw_vi_mac_raw* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @be32_to_cpu(i8* %90)
  %92 = call i32 @FW_VI_MAC_CMD_RAW_IDX_G(i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %96, %87
  br label %100

100:                                              ; preds = %99, %8
  %101 = load i32, i32* %17, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.fw_vi_mac_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_VIID_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_ENTRY_TYPE_V(i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_RAW_IDX_V(i32) #1

declare dso_local i32 @DATALKPTYPE_V(i32) #1

declare dso_local i32 @DATAPORTNUM_V(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @t4_wr_mbox_meat(%struct.adapter*, i32, %struct.fw_vi_mac_cmd*, i32, %struct.fw_vi_mac_cmd*, i32) #1

declare dso_local i32 @FW_VI_MAC_CMD_RAW_IDX_G(i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
