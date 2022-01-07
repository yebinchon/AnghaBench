; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_soft_reset_rbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_soft_reset_rbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_MAC_PHY_CONTROL = common dso_local global i32 0, align 4
@HW_ATL_MAC_PHY_MPI_RESET_BIT = common dso_local global i32 0, align 4
@HW_ATL_GLB_SOFT_RES_ADR = common dso_local global i32 0, align 4
@FORCE_FLASHLESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"RBL Restart failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"No FW detected. Dynamic FW load not implemented\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@HW_ATL_MPI_FW_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"FW kickstart failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @hw_atl_utils_soft_reset_rbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_utils_soft_reset_rbl(%struct.aq_hw_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  %9 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %10 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %9, i32 1028, i32 16609)
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %12 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %11, i32 928, i32 1)
  %13 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %14 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %13, i32 12968, i32 0)
  %15 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %16 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %15, i32 904, i32 57005)
  %17 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %18 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %17, i32 1340)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, 16
  %22 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %19, i32 1340, i32 %21)
  %23 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %24 = call i32 @hw_atl_rx_rx_reg_res_dis_set(%struct.aq_hw_s* %23, i32 0)
  %25 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %26 = call i32 @hw_atl_tx_tx_reg_res_dis_set(%struct.aq_hw_s* %25, i32 0)
  %27 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %28 = load i32, i32* @HW_ATL_MAC_PHY_CONTROL, align 4
  %29 = load i32, i32* @HW_ATL_MAC_PHY_MPI_RESET_BIT, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @HW_ATL_MAC_PHY_MPI_RESET_BIT, align 4
  %32 = call i32 @aq_hw_write_reg_bit(%struct.aq_hw_s* %27, i32 %28, i32 %30, i32 %31, i32 0)
  %33 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %34 = load i32, i32* @HW_ATL_GLB_SOFT_RES_ADR, align 4
  %35 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %37 = load i32, i32* @HW_ATL_GLB_SOFT_RES_ADR, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, -16385
  %40 = or i32 %39, 32768
  %41 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %36, i32 %37, i32 %40)
  %42 = load i64, i64* @FORCE_FLASHLESS, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %46 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %45, i32 1332, i32 0)
  br label %47

47:                                               ; preds = %44, %1
  %48 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %49 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %48, i32 1028, i32 16608)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %65, %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 1000
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %55 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %54, i32 904)
  %56 = and i32 %55, 65535
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 57005
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %68

63:                                               ; preds = %59, %53
  %64 = call i32 @AQ_HW_SLEEP(i32 10)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %50

68:                                               ; preds = %62, %50
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 57005
  br i1 %73, label %74, label %78

74:                                               ; preds = %71, %68
  %75 = call i32 @aq_pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %116

78:                                               ; preds = %71
  %79 = load i64, i64* @FORCE_FLASHLESS, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %83 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %82, i32 1332, i32 160)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, 61863
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = call i32 @aq_pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ENOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %116

91:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 1000
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %97 = load i32, i32* @HW_ATL_MPI_FW_VERSION, align 4
  %98 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %107

102:                                              ; preds = %95
  %103 = call i32 @AQ_HW_SLEEP(i32 10)
  br label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %92

107:                                              ; preds = %101, %92
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 1000
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = call i32 @aq_pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %116

114:                                              ; preds = %107
  %115 = call i32 @AQ_HW_SLEEP(i32 15)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %110, %87, %74
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rx_rx_reg_res_dis_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tx_tx_reg_res_dis_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_hw_write_reg_bit(%struct.aq_hw_s*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @AQ_HW_SLEEP(i32) #1

declare dso_local i32 @aq_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
