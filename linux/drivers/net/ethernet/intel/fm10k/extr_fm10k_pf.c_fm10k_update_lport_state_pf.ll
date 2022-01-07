; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_lport_state_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_lport_state_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.fm10k_mbx_info }
%struct.fm10k_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_mbx_info.1 = type opaque

@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_NONE = common dso_local global i32 0, align 4
@FM10K_PF_MSG_ID_LPORT_CREATE = common dso_local global i32 0, align 4
@FM10K_PF_MSG_ID_LPORT_DELETE = common dso_local global i32 0, align 4
@FM10K_PF_ATTR_ID_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i32, i32, i32)* @fm10k_update_lport_state_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_update_lport_state_pf(%struct.fm10k_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fm10k_mbx_info*, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %14 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %13, i32 0, i32 0
  store %struct.fm10k_mbx_info* %14, %struct.fm10k_mbx_info** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %62

18:                                               ; preds = %4
  %19 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @fm10k_glort_valid_pf(%struct.fm10k_hw* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %24, i32* %5, align 4
  br label %62

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FM10K_XCAST_MODE_NONE, align 4
  %32 = call i32 @fm10k_update_xcast_mode_pf(%struct.fm10k_hw* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @FM10K_PF_MSG_ID_LPORT_CREATE, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @FM10K_PF_MSG_ID_LPORT_DELETE, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @fm10k_tlv_msg_init(i32* %38, i32 %46)
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %49 = load i32, i32* @FM10K_PF_ATTR_ID_PORT, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @fm10k_tlv_attr_put_u32(i32* %48, i32 %49, i32 %50)
  %52 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %10, align 8
  %53 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*, i32*)** %54, align 8
  %56 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %57 = bitcast %struct.fm10k_hw* %56 to %struct.fm10k_hw.0*
  %58 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %10, align 8
  %59 = bitcast %struct.fm10k_mbx_info* %58 to %struct.fm10k_mbx_info.1*
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %61 = call i32 %55(%struct.fm10k_hw.0* %57, %struct.fm10k_mbx_info.1* %59, i32* %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %45, %23, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @fm10k_glort_valid_pf(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @fm10k_update_xcast_mode_pf(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_msg_init(i32*, i32) #1

declare dso_local i32 @fm10k_tlv_attr_put_u32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
