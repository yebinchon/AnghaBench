; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_set_vxlan_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_set_vxlan_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@PRS_REG_ENCAPSULATION_TYPE_EN = common dso_local global i32 0, align 4
@PRS_REG_ENCAPSULATION_TYPE_EN_VXLAN_ENABLE_SHIFT = common dso_local global i32 0, align 4
@PRS_REG_OUTPUT_FORMAT_4_0_BB_K2 = common dso_local global i32 0, align 4
@PRS_ETH_OUTPUT_FORMAT = common dso_local global i64 0, align 8
@PRS_ETH_TUNN_OUTPUT_FORMAT = common dso_local global i64 0, align 8
@NIG_REG_ENC_TYPE_ENABLE = common dso_local global i32 0, align 4
@NIG_REG_ENC_TYPE_ENABLE_VXLAN_ENABLE_SHIFT = common dso_local global i32 0, align 4
@DORQ_REG_L2_EDPM_TUNNEL_VXLAN_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_set_vxlan_enable(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %11 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN, align 4
  %12 = call i64 @qed_rd(%struct.qed_hwfn* %9, %struct.qed_ptt* %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN_VXLAN_ENABLE_SHIFT, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %14, i32 %15, i32 %16)
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %20 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN, align 4
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @qed_wr(%struct.qed_hwfn* %18, %struct.qed_ptt* %19, i32 %20, i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %28 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %29 = load i32, i32* @PRS_REG_OUTPUT_FORMAT_4_0_BB_K2, align 4
  %30 = call i64 @qed_rd(%struct.qed_hwfn* %27, %struct.qed_ptt* %28, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @PRS_ETH_OUTPUT_FORMAT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %37 = load i32, i32* @PRS_REG_OUTPUT_FORMAT_4_0_BB_K2, align 4
  %38 = load i64, i64* @PRS_ETH_TUNN_OUTPUT_FORMAT, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @qed_wr(%struct.qed_hwfn* %35, %struct.qed_ptt* %36, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %34, %26
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %44 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %45 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE, align 4
  %46 = call i64 @qed_rd(%struct.qed_hwfn* %43, %struct.qed_ptt* %44, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE_VXLAN_ENABLE_SHIFT, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %48, i32 %49, i32 %50)
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %53 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %54 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE, align 4
  %55 = load i64, i64* %7, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @qed_wr(%struct.qed_hwfn* %52, %struct.qed_ptt* %53, i32 %54, i32 %56)
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %59 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %60 = load i32, i32* @DORQ_REG_L2_EDPM_TUNNEL_VXLAN_EN, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = call i32 @qed_wr(%struct.qed_hwfn* %58, %struct.qed_ptt* %59, i32 %60, i32 %64)
  ret void
}

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64, i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
