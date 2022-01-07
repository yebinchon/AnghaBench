; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i32, i32, i32, i64 }

@PM_DOMAIN_VFE0 = common dso_local global i32 0, align 4
@PM_DOMAIN_VFE1 = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_STROBED_RST_EN = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_MISC_LOGIC_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_SW_REG_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_PIX_INTF_0_CSID_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_PIX_INTF_0_VFE_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_PIX_INTF_1_CSID_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_PIX_INTF_1_VFE_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_RDI_INTF_0_CSID_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_RDI_INTF_0_VFE_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_RDI_INTF_1_CSID_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_RDI_INTF_1_VFE_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_RDI_INTF_2_CSID_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_RDI_INTF_2_VFE_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_PIX_OUTPUT_0_MISR_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_RDI_OUTPUT_0_MISR_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_RDI_OUTPUT_1_MISR_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0_RDI_OUTPUT_2_MISR_RST = common dso_local global i32 0, align 4
@ISPIF_RST_CMD_0 = common dso_local global i64 0, align 8
@ISPIF_RESET_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ISPIF reset timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispif_device*)* @ispif_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ispif_reset(%struct.ispif_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ispif_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ispif_device* %0, %struct.ispif_device** %3, align 8
  %7 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %8 = call i32 @to_camss(%struct.ispif_device* %7)
  %9 = load i32, i32* @PM_DOMAIN_VFE0, align 4
  %10 = call i32 @camss_pm_domain_on(i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %17 = call i32 @to_camss(%struct.ispif_device* %16)
  %18 = load i32, i32* @PM_DOMAIN_VFE1, align 4
  %19 = call i32 @camss_pm_domain_on(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %112

24:                                               ; preds = %15
  %25 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %26 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %29 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %32 = call i32 @to_device(%struct.ispif_device* %31)
  %33 = call i32 @camss_enable_clocks(i32 %27, i32 %30, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %112

38:                                               ; preds = %24
  %39 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %40 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %39, i32 0, i32 2
  %41 = call i32 @reinit_completion(i32* %40)
  %42 = load i32, i32* @ISPIF_RST_CMD_0_STROBED_RST_EN, align 4
  %43 = load i32, i32* @ISPIF_RST_CMD_0_MISC_LOGIC_RST, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ISPIF_RST_CMD_0_SW_REG_RST, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ISPIF_RST_CMD_0_PIX_INTF_0_CSID_RST, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ISPIF_RST_CMD_0_PIX_INTF_0_VFE_RST, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ISPIF_RST_CMD_0_PIX_INTF_1_CSID_RST, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ISPIF_RST_CMD_0_PIX_INTF_1_VFE_RST, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ISPIF_RST_CMD_0_RDI_INTF_0_CSID_RST, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ISPIF_RST_CMD_0_RDI_INTF_0_VFE_RST, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ISPIF_RST_CMD_0_RDI_INTF_1_CSID_RST, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ISPIF_RST_CMD_0_RDI_INTF_1_VFE_RST, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ISPIF_RST_CMD_0_RDI_INTF_2_CSID_RST, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ISPIF_RST_CMD_0_RDI_INTF_2_VFE_RST, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ISPIF_RST_CMD_0_PIX_OUTPUT_0_MISR_RST, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ISPIF_RST_CMD_0_RDI_OUTPUT_0_MISR_RST, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ISPIF_RST_CMD_0_RDI_OUTPUT_1_MISR_RST, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ISPIF_RST_CMD_0_RDI_OUTPUT_2_MISR_RST, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %77 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ISPIF_RST_CMD_0, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel_relaxed(i32 %75, i64 %80)
  %82 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %83 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %82, i32 0, i32 2
  %84 = load i32, i32* @ISPIF_RESET_TIMEOUT_MS, align 4
  %85 = call i32 @msecs_to_jiffies(i32 %84)
  %86 = call i64 @wait_for_completion_timeout(i32* %83, i32 %85)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %38
  %90 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %91 = call i32 @to_device(%struct.ispif_device* %90)
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %89, %38
  %96 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %97 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %100 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @camss_disable_clocks(i32 %98, i32 %101)
  %103 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %104 = call i32 @to_camss(%struct.ispif_device* %103)
  %105 = load i32, i32* @PM_DOMAIN_VFE0, align 4
  %106 = call i32 @camss_pm_domain_off(i32 %104, i32 %105)
  %107 = load %struct.ispif_device*, %struct.ispif_device** %3, align 8
  %108 = call i32 @to_camss(%struct.ispif_device* %107)
  %109 = load i32, i32* @PM_DOMAIN_VFE1, align 4
  %110 = call i32 @camss_pm_domain_off(i32 %108, i32 %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %95, %36, %22, %13
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @camss_pm_domain_on(i32, i32) #1

declare dso_local i32 @to_camss(%struct.ispif_device*) #1

declare dso_local i32 @camss_enable_clocks(i32, i32, i32) #1

declare dso_local i32 @to_device(%struct.ispif_device*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @camss_disable_clocks(i32, i32) #1

declare dso_local i32 @camss_pm_domain_off(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
