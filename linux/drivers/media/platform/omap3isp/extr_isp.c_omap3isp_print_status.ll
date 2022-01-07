; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_omap3isp_print_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_omap3isp_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"-------------ISP Register dump--------------\0A\00", align 1
@SYSCONFIG = common dso_local global i32 0, align 4
@SYSSTATUS = common dso_local global i32 0, align 4
@IRQ0ENABLE = common dso_local global i32 0, align 4
@IRQ0STATUS = common dso_local global i32 0, align 4
@TCTRL_GRESET_LENGTH = common dso_local global i32 0, align 4
@TCTRL_PSTRB_REPLAY = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@TCTRL_CTRL = common dso_local global i32 0, align 4
@TCTRL_FRAME = common dso_local global i32 0, align 4
@TCTRL_PSTRB_DELAY = common dso_local global i32 0, align 4
@TCTRL_STRB_DELAY = common dso_local global i32 0, align 4
@TCTRL_SHUT_DELAY = common dso_local global i32 0, align 4
@TCTRL_PSTRB_LENGTH = common dso_local global i32 0, align 4
@TCTRL_STRB_LENGTH = common dso_local global i32 0, align 4
@TCTRL_SHUT_LENGTH = common dso_local global i32 0, align 4
@PCR = common dso_local global i32 0, align 4
@SDR_REQ_EXP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"--------------------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_print_status(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %3 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %4 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %8 = load i32, i32* @SYSCONFIG, align 4
  %9 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %7, i32 %8)
  %10 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %11 = load i32, i32* @SYSSTATUS, align 4
  %12 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %10, i32 %11)
  %13 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %14 = load i32, i32* @IRQ0ENABLE, align 4
  %15 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %13, i32 %14)
  %16 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %17 = load i32, i32* @IRQ0STATUS, align 4
  %18 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %16, i32 %17)
  %19 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %20 = load i32, i32* @TCTRL_GRESET_LENGTH, align 4
  %21 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %19, i32 %20)
  %22 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %23 = load i32, i32* @TCTRL_PSTRB_REPLAY, align 4
  %24 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %22, i32 %23)
  %25 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %26 = load i32, i32* @CTRL, align 4
  %27 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %25, i32 %26)
  %28 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %29 = load i32, i32* @TCTRL_CTRL, align 4
  %30 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %28, i32 %29)
  %31 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %32 = load i32, i32* @TCTRL_FRAME, align 4
  %33 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %31, i32 %32)
  %34 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %35 = load i32, i32* @TCTRL_PSTRB_DELAY, align 4
  %36 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %34, i32 %35)
  %37 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %38 = load i32, i32* @TCTRL_STRB_DELAY, align 4
  %39 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %37, i32 %38)
  %40 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %41 = load i32, i32* @TCTRL_SHUT_DELAY, align 4
  %42 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %40, i32 %41)
  %43 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %44 = load i32, i32* @TCTRL_PSTRB_LENGTH, align 4
  %45 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %43, i32 %44)
  %46 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %47 = load i32, i32* @TCTRL_STRB_LENGTH, align 4
  %48 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %46, i32 %47)
  %49 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %50 = load i32, i32* @TCTRL_SHUT_LENGTH, align 4
  %51 = call i32 @ISP_PRINT_REGISTER(%struct.isp_device* %49, i32 %50)
  %52 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %53 = load i32, i32* @PCR, align 4
  %54 = call i32 @SBL_PRINT_REGISTER(%struct.isp_device* %52, i32 %53)
  %55 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %56 = load i32, i32* @SDR_REQ_EXP, align 4
  %57 = call i32 @SBL_PRINT_REGISTER(%struct.isp_device* %55, i32 %56)
  %58 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %59 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ISP_PRINT_REGISTER(%struct.isp_device*, i32) #1

declare dso_local i32 @SBL_PRINT_REGISTER(%struct.isp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
