; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sta2x11-mfd.c_sta2x11_apb_soc_regs_readable_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sta2x11-mfd.c_sta2x11_apb_soc_regs_readable_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@PCIE_SoC_INT_ROUTER_STATUS3_REG = common dso_local global i32 0, align 4
@DMA_IP_CTRL_REG = common dso_local global i32 0, align 4
@SPARE3_RESERVED = common dso_local global i32 0, align 4
@MASTER_LOCK_REG = common dso_local global i32 0, align 4
@SYSTEM_CONFIG_STATUS_REG = common dso_local global i32 0, align 4
@MSP_CLK_CTRL_REG = common dso_local global i32 0, align 4
@COMPENSATION_REG1 = common dso_local global i32 0, align 4
@TEST_CTL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sta2x11_apb_soc_regs_readable_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta2x11_apb_soc_regs_readable_reg(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PCIE_SoC_INT_ROUTER_STATUS3_REG, align 4
  %7 = icmp ule i32 %5, %6
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DMA_IP_CTRL_REG, align 4
  %11 = load i32, i32* @SPARE3_RESERVED, align 4
  %12 = call i64 @__reg_within_range(i32 %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MASTER_LOCK_REG, align 4
  %17 = load i32, i32* @SYSTEM_CONFIG_STATUS_REG, align 4
  %18 = call i64 @__reg_within_range(i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MSP_CLK_CTRL_REG, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @COMPENSATION_REG1, align 4
  %27 = load i32, i32* @TEST_CTL_REG, align 4
  %28 = call i64 @__reg_within_range(i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %20, %14, %8, %2
  %31 = phi i1 [ true, %20 ], [ true, %14 ], [ true, %8 ], [ true, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @__reg_within_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
