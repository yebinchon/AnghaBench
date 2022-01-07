; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_xcast_mode_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_xcast_mode_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.fm10k_mbx_info }
%struct.fm10k_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_mbx_info.1 = type opaque

@FM10K_XCAST_MODE_NONE = common dso_local global i64 0, align 8
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_PF_MSG_ID_XCAST_MODES = common dso_local global i32 0, align 4
@FM10K_PF_ATTR_ID_XCAST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i32, i64)* @fm10k_update_xcast_mode_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_update_xcast_mode_pf(%struct.fm10k_hw* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fm10k_mbx_info*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %12 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %11, i32 0, i32 0
  store %struct.fm10k_mbx_info* %12, %struct.fm10k_mbx_info** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @FM10K_XCAST_MODE_NONE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @fm10k_glort_valid_pf(%struct.fm10k_hw* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %24, i32* %4, align 4
  br label %48

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %32 = load i32, i32* @FM10K_PF_MSG_ID_XCAST_MODES, align 4
  %33 = call i32 @fm10k_tlv_msg_init(i32* %31, i32 %32)
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %35 = load i32, i32* @FM10K_PF_ATTR_ID_XCAST_MODE, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @fm10k_tlv_attr_put_u32(i32* %34, i32 %35, i32 %36)
  %38 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %8, align 8
  %39 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)** %40, align 8
  %42 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %43 = bitcast %struct.fm10k_hw* %42 to %struct.fm10k_hw.0*
  %44 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %8, align 8
  %45 = bitcast %struct.fm10k_mbx_info* %44 to %struct.fm10k_mbx_info.1*
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %47 = call i32 %41(%struct.fm10k_hw.0* %43, %struct.fm10k_mbx_info.1* %45, i32* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %25, %23, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @fm10k_glort_valid_pf(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @fm10k_tlv_msg_init(i32*, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_u32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
