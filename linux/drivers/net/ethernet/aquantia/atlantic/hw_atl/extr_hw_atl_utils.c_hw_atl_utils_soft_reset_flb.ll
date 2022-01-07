; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_soft_reset_flb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_soft_reset_flb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_GLB_SOFT_RES_ADR = common dso_local global i32 0, align 4
@HW_ATL_MPI_DAISY_CHAIN_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MAC kickstart failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HW_ATL_MAC_PHY_CONTROL = common dso_local global i32 0, align 4
@HW_ATL_MAC_PHY_MPI_RESET_BIT = common dso_local global i32 0, align 4
@HW_ATL_MPI_FW_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"FW kickstart failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @hw_atl_utils_soft_reset_flb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_utils_soft_reset_flb(%struct.aq_hw_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %10 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %9, i32 1028, i32 16609)
  %11 = call i32 @AQ_HW_SLEEP(i32 50)
  %12 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %13 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %12, i32 1340)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, 16
  %17 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %14, i32 1340, i32 %16)
  %18 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %19 = load i32, i32* @HW_ATL_GLB_SOFT_RES_ADR, align 4
  %20 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %22 = load i32, i32* @HW_ATL_GLB_SOFT_RES_ADR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 49151
  %25 = or i32 %24, 32768
  %26 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %21, i32 %22, i32 %25)
  %27 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %28 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %27, i32 1028, i32 32992)
  %29 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %30 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %29, i32 12968, i32 0)
  %31 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %32 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %31, i32 1312, i32 1)
  %33 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %34 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %33, i32 1340)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, 16
  %38 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %35, i32 1340, i32 %37)
  %39 = call i32 @AQ_HW_SLEEP(i32 10)
  %40 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, -17
  %43 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %40, i32 1340, i32 %42)
  %44 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %45 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %44, i32 1028, i32 98528)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %60, %1
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 1000
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %51 = load i32, i32* @HW_ATL_MPI_DAISY_CHAIN_STATUS, align 4
  %52 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 16
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %63

58:                                               ; preds = %49
  %59 = call i32 @AQ_HW_SLEEP(i32 10)
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %46

63:                                               ; preds = %57, %46
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 1000
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = call i32 @aq_pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %119

70:                                               ; preds = %63
  %71 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %72 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %71, i32 1028, i32 32992)
  %73 = call i32 @AQ_HW_SLEEP(i32 50)
  %74 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %75 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %74, i32 928, i32 1)
  %76 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %77 = call i32 @hw_atl_rx_rx_reg_res_dis_set(%struct.aq_hw_s* %76, i32 0)
  %78 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %79 = call i32 @hw_atl_tx_tx_reg_res_dis_set(%struct.aq_hw_s* %78, i32 0)
  %80 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %81 = load i32, i32* @HW_ATL_MAC_PHY_CONTROL, align 4
  %82 = load i32, i32* @HW_ATL_MAC_PHY_MPI_RESET_BIT, align 4
  %83 = call i32 @BIT(i32 %82)
  %84 = load i32, i32* @HW_ATL_MAC_PHY_MPI_RESET_BIT, align 4
  %85 = call i32 @aq_hw_write_reg_bit(%struct.aq_hw_s* %80, i32 %81, i32 %83, i32 %84, i32 0)
  %86 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %87 = load i32, i32* @HW_ATL_GLB_SOFT_RES_ADR, align 4
  %88 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %90 = load i32, i32* @HW_ATL_GLB_SOFT_RES_ADR, align 4
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, 49151
  %93 = or i32 %92, 32768
  %94 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %89, i32 %90, i32 %93)
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %107, %70
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 1000
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %100 = load i32, i32* @HW_ATL_MPI_FW_VERSION, align 4
  %101 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %110

105:                                              ; preds = %98
  %106 = call i32 @AQ_HW_SLEEP(i32 10)
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %95

110:                                              ; preds = %104, %95
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 1000
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = call i32 @aq_pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %119

117:                                              ; preds = %110
  %118 = call i32 @AQ_HW_SLEEP(i32 15)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %113, %66
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @AQ_HW_SLEEP(i32) #1

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_pr_err(i8*) #1

declare dso_local i32 @hw_atl_rx_rx_reg_res_dis_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tx_tx_reg_res_dis_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_hw_write_reg_bit(%struct.aq_hw_s*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
