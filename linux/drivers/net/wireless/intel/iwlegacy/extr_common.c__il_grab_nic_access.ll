; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c__il_grab_nic_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c__il_grab_nic_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }

@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Timeout waiting for ucode processor access (CSR_GP_CNTRL 0x%08x)\0A\00", align 1
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_FORCE_NMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_il_grab_nic_access(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %7 = load i32, i32* @CSR_GP_CNTRL, align 4
  %8 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ, align 4
  %9 = call i32 @_il_set_bit(%struct.il_priv* %6, i32 %7, i32 %8)
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = load i32, i32* @CSR_GP_CNTRL, align 4
  %12 = load i32, i32* @CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN, align 4
  %13 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %14 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @_il_poll_bit(%struct.il_priv* %10, i32 %11, i32 %12, i32 %15, i32 15000)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = load i32, i32* @CSR_GP_CNTRL, align 4
  %25 = call i32 @_il_rd(%struct.il_priv* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %29 = load i32, i32* @CSR_RESET, align 4
  %30 = load i32, i32* @CSR_RESET_REG_FLAG_FORCE_NMI, align 4
  %31 = call i32 @_il_wr(%struct.il_priv* %28, i32 %29, i32 %30)
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @_il_set_bit(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
