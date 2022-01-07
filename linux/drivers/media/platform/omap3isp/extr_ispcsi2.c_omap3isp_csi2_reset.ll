; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_omap3isp_csi2_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_omap3isp_csi2_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csi2_device = type { i32, %struct.TYPE_2__*, i32, %struct.isp_device* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.isp_device = type { i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ISPCSI2_SYSCONFIG = common dso_local global i32 0, align 4
@ISPCSI2_SYSCONFIG_SOFT_RESET = common dso_local global i32 0, align 4
@ISPCSI2_SYSSTATUS = common dso_local global i32 0, align 4
@ISPCSI2_SYSSTATUS_RESET_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"CSI2: Soft reset try count exceeded!\0A\00", align 1
@ISP_REVISION_15_0 = common dso_local global i64 0, align 8
@ISPCSI2_PHY_CFG = common dso_local global i32 0, align 4
@ISPCSI2_PHY_CFG_RESET_CTRL = common dso_local global i32 0, align 4
@ISPCSIPHY_REG1 = common dso_local global i32 0, align 4
@ISPCSIPHY_REG1_RESET_DONE_CTRLCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"CSI2: Reset for CSI2_96M_FCLK domain Failed!\0A\00", align 1
@ISPCSI2_SYSCONFIG_MSTANDBY_MODE_MASK = common dso_local global i32 0, align 4
@ISPCSI2_SYSCONFIG_AUTO_IDLE = common dso_local global i32 0, align 4
@ISPCSI2_SYSCONFIG_MSTANDBY_MODE_SMART = common dso_local global i32 0, align 4
@ISPCSI2_SYSCONFIG_MSTANDBY_MODE_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_csi2_reset(%struct.isp_csi2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_csi2_device*, align 8
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_csi2_device* %0, %struct.isp_csi2_device** %3, align 8
  %8 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %8, i32 0, i32 3
  %10 = load %struct.isp_device*, %struct.isp_device** %9, align 8
  store %struct.isp_device* %10, %struct.isp_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %12 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %155

18:                                               ; preds = %1
  %19 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %20 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %155

28:                                               ; preds = %18
  %29 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %30 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %31 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ISPCSI2_SYSCONFIG, align 4
  %34 = load i32, i32* @ISPCSI2_SYSCONFIG_SOFT_RESET, align 4
  %35 = call i32 @isp_reg_set(%struct.isp_device* %29, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %57, %28
  %37 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %38 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %39 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ISPCSI2_SYSSTATUS, align 4
  %42 = call i32 @isp_reg_readl(%struct.isp_device* %37, i32 %40, i32 %41)
  %43 = load i32, i32* @ISPCSI2_SYSSTATUS_RESET_DONE, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ISPCSI2_SYSSTATUS_RESET_DONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %60

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 5
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @udelay(i32 100)
  br label %56

56:                                               ; preds = %54, %49
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %36, label %60

60:                                               ; preds = %57, %48
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 5
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %65 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %155

70:                                               ; preds = %60
  %71 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %72 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ISP_REVISION_15_0, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %78 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %79 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ISPCSI2_PHY_CFG, align 4
  %82 = load i32, i32* @ISPCSI2_PHY_CFG_RESET_CTRL, align 4
  %83 = call i32 @isp_reg_set(%struct.isp_device* %77, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %70
  store i32 100, i32* %7, align 4
  br label %85

85:                                               ; preds = %102, %84
  %86 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %87 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %88 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ISPCSIPHY_REG1, align 4
  %93 = call i32 @isp_reg_readl(%struct.isp_device* %86, i32 %91, i32 %92)
  %94 = load i32, i32* @ISPCSIPHY_REG1_RESET_DONE_CTRLCLK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @ISPCSIPHY_REG1_RESET_DONE_CTRLCLK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %106

100:                                              ; preds = %85
  %101 = call i32 @udelay(i32 100)
  br label %102

102:                                              ; preds = %100
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %85, label %106

106:                                              ; preds = %102, %99
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %111 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @EBUSY, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %155

116:                                              ; preds = %106
  %117 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %118 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %116
  %122 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %123 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %124 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ISPCSI2_SYSCONFIG, align 4
  %127 = load i32, i32* @ISPCSI2_SYSCONFIG_MSTANDBY_MODE_MASK, align 4
  %128 = load i32, i32* @ISPCSI2_SYSCONFIG_AUTO_IDLE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @ISPCSI2_SYSCONFIG_MSTANDBY_MODE_SMART, align 4
  %131 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %132 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @ISP_REVISION_15_0, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %121
  %137 = load i32, i32* @ISPCSI2_SYSCONFIG_AUTO_IDLE, align 4
  br label %139

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  %141 = or i32 %130, %140
  %142 = call i32 @isp_reg_clr_set(%struct.isp_device* %122, i32 %125, i32 %126, i32 %129, i32 %141)
  br label %154

143:                                              ; preds = %116
  %144 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %145 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %146 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ISPCSI2_SYSCONFIG, align 4
  %149 = load i32, i32* @ISPCSI2_SYSCONFIG_MSTANDBY_MODE_MASK, align 4
  %150 = load i32, i32* @ISPCSI2_SYSCONFIG_AUTO_IDLE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @ISPCSI2_SYSCONFIG_MSTANDBY_MODE_NO, align 4
  %153 = call i32 @isp_reg_clr_set(%struct.isp_device* %144, i32 %147, i32 %148, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %143, %139
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %154, %109, %63, %25, %15
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @isp_reg_clr_set(%struct.isp_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
