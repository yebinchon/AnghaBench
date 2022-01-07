; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_xc_addr_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_xc_addr_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.fm10k_mbx_info }
%struct.fm10k_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_mbx_info.1 = type opaque
%struct.fm10k_mac_update = type { i32, i64, i8*, i8*, i8*, i32 }

@FM10K_VLAN_CLEAR = common dso_local global i32 0, align 4
@FM10K_VLAN_TABLE_VID_MAX = common dso_local global i32 0, align 4
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_PF_MSG_ID_UPDATE_MAC_FWD_RULE = common dso_local global i32 0, align 4
@FM10K_PF_ATTR_ID_MAC_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i32, i64*, i32, i32, i64)* @fm10k_update_xc_addr_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_update_xc_addr_pf(%struct.fm10k_hw* %0, i32 %1, i64* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fm10k_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.fm10k_mbx_info*, align 8
  %15 = alloca %struct.fm10k_mac_update, align 8
  %16 = alloca [5 x i32], align 16
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %18 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %17, i32 0, i32 0
  store %struct.fm10k_mbx_info* %18, %struct.fm10k_mbx_info** %14, align 8
  %19 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %11, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %11, align 4
  %23 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @fm10k_glort_valid_pf(%struct.fm10k_hw* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @FM10K_VLAN_TABLE_VID_MAX, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %6
  %32 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %32, i32* %7, align 4
  br label %99

33:                                               ; preds = %27
  %34 = load i64*, i64** %10, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 24
  %39 = load i64*, i64** %10, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 16
  %44 = or i32 %38, %43
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 4
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %48, 8
  %50 = or i32 %44, %49
  %51 = load i64*, i64** %10, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 5
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = or i32 %50, %54
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = getelementptr inbounds %struct.fm10k_mac_update, %struct.fm10k_mac_update* %15, i32 0, i32 5
  store i32 %56, i32* %57, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 8
  %63 = load i64*, i64** %10, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = or i32 %62, %66
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = getelementptr inbounds %struct.fm10k_mac_update, %struct.fm10k_mac_update* %15, i32 0, i32 4
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i8* @cpu_to_le16(i32 %70)
  %72 = getelementptr inbounds %struct.fm10k_mac_update, %struct.fm10k_mac_update* %15, i32 0, i32 3
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = getelementptr inbounds %struct.fm10k_mac_update, %struct.fm10k_mac_update* %15, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 1
  %80 = getelementptr inbounds %struct.fm10k_mac_update, %struct.fm10k_mac_update* %15, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds %struct.fm10k_mac_update, %struct.fm10k_mac_update* %15, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %84 = load i32, i32* @FM10K_PF_MSG_ID_UPDATE_MAC_FWD_RULE, align 4
  %85 = call i32 @fm10k_tlv_msg_init(i32* %83, i32 %84)
  %86 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %87 = load i32, i32* @FM10K_PF_ATTR_ID_MAC_UPDATE, align 4
  %88 = call i32 @fm10k_tlv_attr_put_le_struct(i32* %86, i32 %87, %struct.fm10k_mac_update* %15, i32 48)
  %89 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %14, align 8
  %90 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)** %91, align 8
  %93 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %94 = bitcast %struct.fm10k_hw* %93 to %struct.fm10k_hw.0*
  %95 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %14, align 8
  %96 = bitcast %struct.fm10k_mbx_info* %95 to %struct.fm10k_mbx_info.1*
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %98 = call i32 %92(%struct.fm10k_hw.0* %94, %struct.fm10k_mbx_info.1* %96, i32* %97)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %33, %31
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @fm10k_glort_valid_pf(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @fm10k_tlv_msg_init(i32*, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_le_struct(i32*, i32, %struct.fm10k_mac_update*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
