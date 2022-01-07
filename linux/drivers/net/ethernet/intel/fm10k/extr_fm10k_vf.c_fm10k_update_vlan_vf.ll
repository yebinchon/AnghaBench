; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_vf.c_fm10k_update_vlan_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_vf.c_fm10k_update_vlan_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.fm10k_mbx_info }
%struct.fm10k_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_mbx_info.1 = type opaque

@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_VLAN_CLEAR = common dso_local global i32 0, align 4
@FM10K_VF_MSG_ID_MAC_VLAN = common dso_local global i32 0, align 4
@FM10K_MAC_VLAN_MSG_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i32, i64, i32)* @fm10k_update_vlan_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_update_vlan_vf(%struct.fm10k_hw* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fm10k_mbx_info*, align 8
  %11 = alloca [4 x i32], align 16
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %13 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %12, i32 0, i32 0
  store %struct.fm10k_mbx_info* %13, %struct.fm10k_mbx_info** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %17, i32* %5, align 4
  br label %52

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 16
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %20, %21
  %23 = ashr i32 %22, 28
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %26, i32* %5, align 4
  br label %52

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @FM10K_VLAN_CLEAR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %36 = load i32, i32* @FM10K_VF_MSG_ID_MAC_VLAN, align 4
  %37 = call i32 @fm10k_tlv_msg_init(i32* %35, i32 %36)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %39 = load i32, i32* @FM10K_MAC_VLAN_MSG_VLAN, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @fm10k_tlv_attr_put_u32(i32* %38, i32 %39, i32 %40)
  %42 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %10, align 8
  %43 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)** %44, align 8
  %46 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %47 = bitcast %struct.fm10k_hw* %46 to %struct.fm10k_hw.0*
  %48 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %10, align 8
  %49 = bitcast %struct.fm10k_mbx_info* %48 to %struct.fm10k_mbx_info.1*
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %51 = call i32 %45(%struct.fm10k_hw.0* %47, %struct.fm10k_mbx_info.1* %49, i32* %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %34, %25, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @fm10k_tlv_msg_init(i32*, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_u32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
