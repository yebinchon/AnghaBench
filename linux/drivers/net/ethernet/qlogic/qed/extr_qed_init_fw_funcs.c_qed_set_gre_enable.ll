; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_set_gre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_set_gre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@PRS_REG_ENCAPSULATION_TYPE_EN = common dso_local global i32 0, align 4
@PRS_REG_ENCAPSULATION_TYPE_EN_ETH_OVER_GRE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@PRS_REG_ENCAPSULATION_TYPE_EN_IP_OVER_GRE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@PRS_REG_OUTPUT_FORMAT_4_0_BB_K2 = common dso_local global i32 0, align 4
@PRS_ETH_OUTPUT_FORMAT = common dso_local global i64 0, align 8
@PRS_ETH_TUNN_OUTPUT_FORMAT = common dso_local global i64 0, align 8
@NIG_REG_ENC_TYPE_ENABLE = common dso_local global i32 0, align 4
@NIG_REG_ENC_TYPE_ENABLE_ETH_OVER_GRE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_ENC_TYPE_ENABLE_IP_OVER_GRE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@DORQ_REG_L2_EDPM_TUNNEL_GRE_ETH_EN = common dso_local global i32 0, align 4
@DORQ_REG_L2_EDPM_TUNNEL_GRE_IP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_set_gre_enable(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %12 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %13 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN, align 4
  %14 = call i64 @qed_rd(%struct.qed_hwfn* %11, %struct.qed_ptt* %12, i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN_ETH_OVER_GRE_ENABLE_SHIFT, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN_IP_OVER_GRE_ENABLE_SHIFT, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %21, i32 %22, i32 %23)
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %26 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %27 = load i32, i32* @PRS_REG_ENCAPSULATION_TYPE_EN, align 4
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @qed_wr(%struct.qed_hwfn* %25, %struct.qed_ptt* %26, i32 %27, i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %4
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %35 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %36 = load i32, i32* @PRS_REG_OUTPUT_FORMAT_4_0_BB_K2, align 4
  %37 = call i64 @qed_rd(%struct.qed_hwfn* %34, %struct.qed_ptt* %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @PRS_ETH_OUTPUT_FORMAT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %43 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %44 = load i32, i32* @PRS_REG_OUTPUT_FORMAT_4_0_BB_K2, align 4
  %45 = load i64, i64* @PRS_ETH_TUNN_OUTPUT_FORMAT, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @qed_wr(%struct.qed_hwfn* %42, %struct.qed_ptt* %43, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %41, %33
  br label %49

49:                                               ; preds = %48, %4
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %51 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %52 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE, align 4
  %53 = call i64 @qed_rd(%struct.qed_hwfn* %50, %struct.qed_ptt* %51, i32 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE_ETH_OVER_GRE_ENABLE_SHIFT, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE_IP_OVER_GRE_ENABLE_SHIFT, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @SET_TUNNEL_TYPE_ENABLE_BIT(i64 %60, i32 %61, i32 %62)
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %65 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %66 = load i32, i32* @NIG_REG_ENC_TYPE_ENABLE, align 4
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @qed_wr(%struct.qed_hwfn* %64, %struct.qed_ptt* %65, i32 %66, i32 %68)
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %71 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %72 = load i32, i32* @DORQ_REG_L2_EDPM_TUNNEL_GRE_ETH_EN, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = call i32 @qed_wr(%struct.qed_hwfn* %70, %struct.qed_ptt* %71, i32 %72, i32 %76)
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %79 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %80 = load i32, i32* @DORQ_REG_L2_EDPM_TUNNEL_GRE_IP_EN, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = call i32 @qed_wr(%struct.qed_hwfn* %78, %struct.qed_ptt* %79, i32 %80, i32 %84)
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
