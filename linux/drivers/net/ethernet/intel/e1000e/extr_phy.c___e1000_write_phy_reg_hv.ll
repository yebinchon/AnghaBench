; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c___e1000_write_phy_reg_hv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c___e1000_write_phy_reg_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@BM_WUC_PAGE = common dso_local global i32 0, align 4
@HV_INTC_FC_PAGE_START = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"writing PHY page %d (or 0x%x shifted) reg 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32, i32)* @__e1000_write_phy_reg_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__e1000_write_phy_reg_hv(%struct.e1000_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BM_PHY_REG_PAGE(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @BM_PHY_REG_NUM(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @e1000_get_phy_addr_for_hv_page(i32 %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  store i32 %22, i32* %15, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %5
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.1*
  %36 = call i64 %33(%struct.e1000_hw.1* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %6, align 8
  br label %154

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @BM_WUC_PAGE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %47, i32 %48, i32* %9, i32 0, i32 %49)
  store i64 %50, i64* %12, align 8
  br label %140

51:                                               ; preds = %42
  %52 = load i32, i32* %13, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @HV_INTC_FC_PAGE_START, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw* %59, i32 %60, i32* %9, i32 0)
  store i64 %61, i64* %12, align 8
  br label %140

62:                                               ; preds = %54, %51
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %127, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @HV_INTC_FC_PAGE_START, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @e1000_phy_82578, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %70
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %79 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %81, 1
  br i1 %82, label %83, label %108

83:                                               ; preds = %77
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %108

89:                                               ; preds = %83
  %90 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %91 = load i32, i32* %14, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @BIT(i32 11)
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  store i32 32511, i32* %16, align 4
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %101 = call i32 @BIT(i32 6)
  %102 = or i32 %101, 3
  %103 = call i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw* %100, i32 %102, i32* %16, i32 0)
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %140

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %94, %89, %83, %77, %70
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = call i64 @e1000_set_page_igp(%struct.e1000_hw* %113, i32 %116)
  store i64 %117, i64* %12, align 8
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load i64, i64* %12, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %140

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %108
  br label %127

127:                                              ; preds = %126, %62
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @e_dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %131, i32 %132)
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %135 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %136 = load i32, i32* %14, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* %9, align 4
  %139 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %134, i32 %137, i32 %138)
  store i64 %139, i64* %12, align 8
  br label %140

140:                                              ; preds = %127, %124, %106, %58, %46
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %140
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %145 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %147, align 8
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %150 = bitcast %struct.e1000_hw* %149 to %struct.e1000_hw.0*
  %151 = call i32 %148(%struct.e1000_hw.0* %150)
  br label %152

152:                                              ; preds = %143, %140
  %153 = load i64, i64* %12, align 8
  store i64 %153, i64* %6, align 8
  br label %154

154:                                              ; preds = %152, %39
  %155 = load i64, i64* %6, align 8
  ret i64 %155
}

declare dso_local i32 @BM_PHY_REG_PAGE(i32) #1

declare dso_local i32 @BM_PHY_REG_NUM(i32) #1

declare dso_local i32 @e1000_get_phy_addr_for_hv_page(i32) #1

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i32, i32*, i32, i32) #1

declare dso_local i64 @e1000_access_phy_debug_regs_hv(%struct.e1000_hw*, i32, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @e1000_set_page_igp(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*, i32, i32, i32) #1

declare dso_local i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
