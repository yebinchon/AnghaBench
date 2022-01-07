; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_interrupt_moderation_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_interrupt_moderation_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@HW_ATL_INTR_MODER_MAX = common dso_local global i32 0, align 4
@HW_ATL_INTR_MODER_MIN = common dso_local global i32 0, align 4
@hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_ = internal global [6 x [2 x i32]] [[2 x i32] [i32 15, i32 255], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511], [2 x i32] [i32 15, i32 511]], align 16
@hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_ = internal global [6 x [2 x i32]] [[2 x i32] [i32 6, i32 56], [2 x i32] [i32 12, i32 112], [2 x i32] [i32 12, i32 112], [2 x i32] [i32 24, i32 224], [2 x i32] [i32 48, i32 128], [2 x i32] [i32 4, i32 80]], align 16
@HW_ATL_B0_RINGS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @hw_atl_b0_hw_interrupt_moderation_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_interrupt_moderation_set(%struct.aq_hw_s* %0) #0 {
  %2 = alloca %struct.aq_hw_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 2, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %12 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %144 [
    i32 128, label %16
    i32 130, label %16
    i32 129, label %135
  ]

16:                                               ; preds = %1, %1
  %17 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %18 = call i32 @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(%struct.aq_hw_s* %17, i32 0)
  %19 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %20 = call i32 @hw_atl_tdm_tdm_intr_moder_en_set(%struct.aq_hw_s* %19, i32 1)
  %21 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %22 = call i32 @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(%struct.aq_hw_s* %21, i32 0)
  %23 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %24 = call i32 @hw_atl_rdm_rdm_intr_moder_en_set(%struct.aq_hw_s* %23, i32 1)
  %25 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %26 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %76

31:                                               ; preds = %16
  %32 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %33 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %7, align 4
  %40 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %41 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @HW_ATL_INTR_MODER_MAX, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @min(i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @HW_ATL_INTR_MODER_MIN, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @min(i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @HW_ATL_INTR_MODER_MAX, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @min(i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @HW_ATL_INTR_MODER_MIN, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @min(i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 8
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 %72, 16
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %134

76:                                               ; preds = %16
  %77 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %78 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @hw_atl_utils_mbps_2_speed_index(i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_, i64 0, i64 %83
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %84, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %86, 2
  %88 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %89 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_, i64 0, i64 %93
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %94, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = mul i32 %96, 2
  %98 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %99 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_, i64 0, i64 %103
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %104, i64 0, i64 0
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %106, 8
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_tx_, i64 0, i64 %111
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 16
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_, i64 0, i64 %119
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %120, i64 0, i64 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 8
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [6 x [2 x i32]], [6 x [2 x i32]]* @hw_atl_b0_hw_interrupt_moderation_set.hw_atl_b0_timers_table_rx_, i64 0, i64 %127
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %128, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 16
  %132 = load i32, i32* %5, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %76, %31
  br label %144

135:                                              ; preds = %1
  %136 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %137 = call i32 @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(%struct.aq_hw_s* %136, i32 1)
  %138 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %139 = call i32 @hw_atl_tdm_tdm_intr_moder_en_set(%struct.aq_hw_s* %138, i32 0)
  %140 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %141 = call i32 @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(%struct.aq_hw_s* %140, i32 1)
  %142 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %143 = call i32 @hw_atl_rdm_rdm_intr_moder_en_set(%struct.aq_hw_s* %142, i32 0)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %1, %135, %134
  %145 = load i32, i32* @HW_ATL_B0_RINGS_MAX, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %150, %144
  %147 = load i32, i32* %3, align 4
  %148 = add i32 %147, -1
  store i32 %148, i32* %3, align 4
  %149 = icmp ne i32 %147, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @hw_atl_reg_tx_intr_moder_ctrl_set(%struct.aq_hw_s* %151, i32 %152, i32 %153)
  %155 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @hw_atl_reg_rx_intr_moder_ctrl_set(%struct.aq_hw_s* %155, i32 %156, i32 %157)
  br label %146

159:                                              ; preds = %146
  %160 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %161 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %160)
  ret i32 %161
}

declare dso_local i32 @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tdm_tdm_intr_moder_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_desc_wr_wb_irq_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rdm_rdm_intr_moder_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @hw_atl_utils_mbps_2_speed_index(i32) #1

declare dso_local i32 @hw_atl_reg_tx_intr_moder_ctrl_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_reg_rx_intr_moder_ctrl_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
