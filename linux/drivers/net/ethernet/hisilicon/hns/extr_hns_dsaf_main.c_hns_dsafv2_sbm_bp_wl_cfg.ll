; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsafv2_sbm_bp_wl_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsafv2_sbm_bp_wl_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAFV2_SBM_XGE_CHN = common dso_local global i32 0, align 4
@DSAF_SBM_BP_CFG_0_XGE_REG_0_REG = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG0_COM_MAX_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG0_COM_MAX_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG0_VC0_MAX_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG0_VC0_MAX_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG0_VC1_MAX_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG0_VC1_MAX_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAF_SBM_BP_CFG_1_REG_0_REG = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG1_TC4_MAX_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG1_TC4_MAX_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG1_TC0_MAX_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG1_TC0_MAX_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAF_SBM_BP_CFG_2_XGE_REG_0_REG = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_SET_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_SET_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_RESET_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_RESET_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAF_SBM_BP_CFG_3_REG_0_REG = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG3_SET_BUF_NUM_NO_PFC_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG3_SET_BUF_NUM_NO_PFC_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG3_RESET_BUF_NUM_NO_PFC_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG3_RESET_BUF_NUM_NO_PFC_S = common dso_local global i32 0, align 4
@DSAF_SBM_BP_CFG_4_REG_0_REG = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG4_SET_BUF_NUM_NO_PFC_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG4_SET_BUF_NUM_NO_PFC_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG4_RESET_BUF_NUM_NO_PFC_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG4_RESET_BUF_NUM_NO_PFC_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_PPE_CHN = common dso_local global i32 0, align 4
@DSAF_SBM_BP_CFG_2_PPE_REG_0_REG = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_PPE_SET_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_PPE_SET_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_PPE_RESET_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_PPE_RESET_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_PPE_CFG_USEFUL_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_PPE_CFG_USEFUL_NUM_S = common dso_local global i32 0, align 4
@DASFV2_ROCEE_CRD_NUM = common dso_local global i32 0, align 4
@DSAFV2_SBM_BP_CFG_2_ROCEE_REG_0_REG = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_ROCEE_SET_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_ROCEE_SET_BUF_NUM_S = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_ROCEE_RESET_BUF_NUM_M = common dso_local global i32 0, align 4
@DSAFV2_SBM_CFG2_ROCEE_RESET_BUF_NUM_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*)* @hns_dsafv2_sbm_bp_wl_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsafv2_sbm_bp_wl_cfg(%struct.dsaf_device* %0) #0 {
  %2 = alloca %struct.dsaf_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %110, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @DSAFV2_SBM_XGE_CHN, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %113

10:                                               ; preds = %6
  %11 = load i32, i32* @DSAF_SBM_BP_CFG_0_XGE_REG_0_REG, align 4
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 128, %12
  %14 = add nsw i32 %11, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dsaf_read_dev(%struct.dsaf_device* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @DSAFV2_SBM_CFG0_COM_MAX_BUF_NUM_M, align 4
  %20 = load i32, i32* @DSAFV2_SBM_CFG0_COM_MAX_BUF_NUM_S, align 4
  %21 = call i32 @dsaf_set_field(i32 %18, i32 %19, i32 %20, i32 256)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @DSAFV2_SBM_CFG0_VC0_MAX_BUF_NUM_M, align 4
  %24 = load i32, i32* @DSAFV2_SBM_CFG0_VC0_MAX_BUF_NUM_S, align 4
  %25 = call i32 @dsaf_set_field(i32 %22, i32 %23, i32 %24, i32 0)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DSAFV2_SBM_CFG0_VC1_MAX_BUF_NUM_M, align 4
  %28 = load i32, i32* @DSAFV2_SBM_CFG0_VC1_MAX_BUF_NUM_S, align 4
  %29 = call i32 @dsaf_set_field(i32 %26, i32 %27, i32 %28, i32 0)
  %30 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @dsaf_write_dev(%struct.dsaf_device* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @DSAF_SBM_BP_CFG_1_REG_0_REG, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 128, %35
  %37 = add nsw i32 %34, %36
  store i32 %37, i32* %4, align 4
  %38 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dsaf_read_dev(%struct.dsaf_device* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @DSAFV2_SBM_CFG1_TC4_MAX_BUF_NUM_M, align 4
  %43 = load i32, i32* @DSAFV2_SBM_CFG1_TC4_MAX_BUF_NUM_S, align 4
  %44 = call i32 @dsaf_set_field(i32 %41, i32 %42, i32 %43, i32 0)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @DSAFV2_SBM_CFG1_TC0_MAX_BUF_NUM_M, align 4
  %47 = load i32, i32* @DSAFV2_SBM_CFG1_TC0_MAX_BUF_NUM_S, align 4
  %48 = call i32 @dsaf_set_field(i32 %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @dsaf_write_dev(%struct.dsaf_device* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @DSAF_SBM_BP_CFG_2_XGE_REG_0_REG, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 128, %54
  %56 = add nsw i32 %53, %55
  store i32 %56, i32* %4, align 4
  %57 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @dsaf_read_dev(%struct.dsaf_device* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @DSAFV2_SBM_CFG2_SET_BUF_NUM_M, align 4
  %62 = load i32, i32* @DSAFV2_SBM_CFG2_SET_BUF_NUM_S, align 4
  %63 = call i32 @dsaf_set_field(i32 %60, i32 %61, i32 %62, i32 104)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @DSAFV2_SBM_CFG2_RESET_BUF_NUM_M, align 4
  %66 = load i32, i32* @DSAFV2_SBM_CFG2_RESET_BUF_NUM_S, align 4
  %67 = call i32 @dsaf_set_field(i32 %64, i32 %65, i32 %66, i32 128)
  %68 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @dsaf_write_dev(%struct.dsaf_device* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @DSAF_SBM_BP_CFG_3_REG_0_REG, align 4
  %73 = load i32, i32* %5, align 4
  %74 = mul nsw i32 128, %73
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %4, align 4
  %76 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @dsaf_read_dev(%struct.dsaf_device* %76, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @DSAFV2_SBM_CFG3_SET_BUF_NUM_NO_PFC_M, align 4
  %81 = load i32, i32* @DSAFV2_SBM_CFG3_SET_BUF_NUM_NO_PFC_S, align 4
  %82 = call i32 @dsaf_set_field(i32 %79, i32 %80, i32 %81, i32 55)
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @DSAFV2_SBM_CFG3_RESET_BUF_NUM_NO_PFC_M, align 4
  %85 = load i32, i32* @DSAFV2_SBM_CFG3_RESET_BUF_NUM_NO_PFC_S, align 4
  %86 = call i32 @dsaf_set_field(i32 %83, i32 %84, i32 %85, i32 110)
  %87 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @dsaf_write_dev(%struct.dsaf_device* %87, i32 %88, i32 %89)
  %91 = load i32, i32* @DSAF_SBM_BP_CFG_4_REG_0_REG, align 4
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 128, %92
  %94 = add nsw i32 %91, %93
  store i32 %94, i32* %4, align 4
  %95 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @dsaf_read_dev(%struct.dsaf_device* %95, i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @DSAFV2_SBM_CFG4_SET_BUF_NUM_NO_PFC_M, align 4
  %100 = load i32, i32* @DSAFV2_SBM_CFG4_SET_BUF_NUM_NO_PFC_S, align 4
  %101 = call i32 @dsaf_set_field(i32 %98, i32 %99, i32 %100, i32 128)
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @DSAFV2_SBM_CFG4_RESET_BUF_NUM_NO_PFC_M, align 4
  %104 = load i32, i32* @DSAFV2_SBM_CFG4_RESET_BUF_NUM_NO_PFC_S, align 4
  %105 = call i32 @dsaf_set_field(i32 %102, i32 %103, i32 %104, i32 192)
  %106 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @dsaf_write_dev(%struct.dsaf_device* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %10
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %6

113:                                              ; preds = %6
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %142, %113
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @DSAFV2_SBM_PPE_CHN, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %114
  %119 = load i32, i32* @DSAF_SBM_BP_CFG_2_PPE_REG_0_REG, align 4
  %120 = load i32, i32* %5, align 4
  %121 = mul nsw i32 128, %120
  %122 = add nsw i32 %119, %121
  store i32 %122, i32* %4, align 4
  %123 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @dsaf_read_dev(%struct.dsaf_device* %123, i32 %124)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @DSAFV2_SBM_CFG2_PPE_SET_BUF_NUM_M, align 4
  %128 = load i32, i32* @DSAFV2_SBM_CFG2_PPE_SET_BUF_NUM_S, align 4
  %129 = call i32 @dsaf_set_field(i32 %126, i32 %127, i32 %128, i32 2)
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @DSAFV2_SBM_CFG2_PPE_RESET_BUF_NUM_M, align 4
  %132 = load i32, i32* @DSAFV2_SBM_CFG2_PPE_RESET_BUF_NUM_S, align 4
  %133 = call i32 @dsaf_set_field(i32 %130, i32 %131, i32 %132, i32 3)
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @DSAFV2_SBM_CFG2_PPE_CFG_USEFUL_NUM_M, align 4
  %136 = load i32, i32* @DSAFV2_SBM_CFG2_PPE_CFG_USEFUL_NUM_S, align 4
  %137 = call i32 @dsaf_set_field(i32 %134, i32 %135, i32 %136, i32 52)
  %138 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @dsaf_write_dev(%struct.dsaf_device* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %118
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %114

145:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %170, %145
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @DASFV2_ROCEE_CRD_NUM, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %173

150:                                              ; preds = %146
  %151 = load i32, i32* @DSAFV2_SBM_BP_CFG_2_ROCEE_REG_0_REG, align 4
  %152 = load i32, i32* %5, align 4
  %153 = mul nsw i32 128, %152
  %154 = add nsw i32 %151, %153
  store i32 %154, i32* %4, align 4
  %155 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @dsaf_read_dev(%struct.dsaf_device* %155, i32 %156)
  store i32 %157, i32* %3, align 4
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @DSAFV2_SBM_CFG2_ROCEE_SET_BUF_NUM_M, align 4
  %160 = load i32, i32* @DSAFV2_SBM_CFG2_ROCEE_SET_BUF_NUM_S, align 4
  %161 = call i32 @dsaf_set_field(i32 %158, i32 %159, i32 %160, i32 2)
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* @DSAFV2_SBM_CFG2_ROCEE_RESET_BUF_NUM_M, align 4
  %164 = load i32, i32* @DSAFV2_SBM_CFG2_ROCEE_RESET_BUF_NUM_S, align 4
  %165 = call i32 @dsaf_set_field(i32 %162, i32 %163, i32 %164, i32 4)
  %166 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @dsaf_write_dev(%struct.dsaf_device* %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %150
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %146

173:                                              ; preds = %146
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.dsaf_device*, i32) #1

declare dso_local i32 @dsaf_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
