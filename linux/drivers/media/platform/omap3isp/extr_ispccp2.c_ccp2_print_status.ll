; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_print_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i32 }
%struct.isp_device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"-------------CCP2 Register dump-------------\0A\00", align 1
@SYSCONFIG = common dso_local global i32 0, align 4
@SYSSTATUS = common dso_local global i32 0, align 4
@LC01_IRQENABLE = common dso_local global i32 0, align 4
@LC01_IRQSTATUS = common dso_local global i32 0, align 4
@LC23_IRQENABLE = common dso_local global i32 0, align 4
@LC23_IRQSTATUS = common dso_local global i32 0, align 4
@LCM_IRQENABLE = common dso_local global i32 0, align 4
@LCM_IRQSTATUS = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@LCM_CTRL = common dso_local global i32 0, align 4
@LCM_VSIZE = common dso_local global i32 0, align 4
@LCM_HSIZE = common dso_local global i32 0, align 4
@LCM_PREFETCH = common dso_local global i32 0, align 4
@LCM_SRC_ADDR = common dso_local global i32 0, align 4
@LCM_SRC_OFST = common dso_local global i32 0, align 4
@LCM_DST_ADDR = common dso_local global i32 0, align 4
@LCM_DST_OFST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"--------------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccp2_device*)* @ccp2_print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp2_print_status(%struct.isp_ccp2_device* %0) #0 {
  %2 = alloca %struct.isp_ccp2_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %2, align 8
  %4 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %2, align 8
  %5 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %4)
  store %struct.isp_device* %5, %struct.isp_device** %3, align 8
  %6 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %7 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %11 = load i32, i32* @SYSCONFIG, align 4
  %12 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %10, i32 %11)
  %13 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %14 = load i32, i32* @SYSSTATUS, align 4
  %15 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %13, i32 %14)
  %16 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %17 = load i32, i32* @LC01_IRQENABLE, align 4
  %18 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %16, i32 %17)
  %19 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %20 = load i32, i32* @LC01_IRQSTATUS, align 4
  %21 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %19, i32 %20)
  %22 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %23 = load i32, i32* @LC23_IRQENABLE, align 4
  %24 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %22, i32 %23)
  %25 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %26 = load i32, i32* @LC23_IRQSTATUS, align 4
  %27 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %25, i32 %26)
  %28 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %29 = load i32, i32* @LCM_IRQENABLE, align 4
  %30 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %28, i32 %29)
  %31 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %32 = load i32, i32* @LCM_IRQSTATUS, align 4
  %33 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %31, i32 %32)
  %34 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %35 = load i32, i32* @CTRL, align 4
  %36 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %34, i32 %35)
  %37 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %38 = call i32 @LCx_CTRL(i32 0)
  %39 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %37, i32 %38)
  %40 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %41 = call i32 @LCx_CODE(i32 0)
  %42 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %40, i32 %41)
  %43 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %44 = call i32 @LCx_STAT_START(i32 0)
  %45 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %43, i32 %44)
  %46 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %47 = call i32 @LCx_STAT_SIZE(i32 0)
  %48 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %46, i32 %47)
  %49 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %50 = call i32 @LCx_SOF_ADDR(i32 0)
  %51 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %49, i32 %50)
  %52 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %53 = call i32 @LCx_EOF_ADDR(i32 0)
  %54 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %52, i32 %53)
  %55 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %56 = call i32 @LCx_DAT_START(i32 0)
  %57 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %55, i32 %56)
  %58 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %59 = call i32 @LCx_DAT_SIZE(i32 0)
  %60 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %58, i32 %59)
  %61 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %62 = call i32 @LCx_DAT_PING_ADDR(i32 0)
  %63 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %61, i32 %62)
  %64 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %65 = call i32 @LCx_DAT_PONG_ADDR(i32 0)
  %66 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %64, i32 %65)
  %67 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %68 = call i32 @LCx_DAT_OFST(i32 0)
  %69 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %67, i32 %68)
  %70 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %71 = load i32, i32* @LCM_CTRL, align 4
  %72 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %70, i32 %71)
  %73 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %74 = load i32, i32* @LCM_VSIZE, align 4
  %75 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %73, i32 %74)
  %76 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %77 = load i32, i32* @LCM_HSIZE, align 4
  %78 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %76, i32 %77)
  %79 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %80 = load i32, i32* @LCM_PREFETCH, align 4
  %81 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %79, i32 %80)
  %82 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %83 = load i32, i32* @LCM_SRC_ADDR, align 4
  %84 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %82, i32 %83)
  %85 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %86 = load i32, i32* @LCM_SRC_OFST, align 4
  %87 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %85, i32 %86)
  %88 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %89 = load i32, i32* @LCM_DST_ADDR, align 4
  %90 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %88, i32 %89)
  %91 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %92 = load i32, i32* @LCM_DST_OFST, align 4
  %93 = call i32 @CCP2_PRINT_REGISTER(%struct.isp_device* %91, i32 %92)
  %94 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %95 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @CCP2_PRINT_REGISTER(%struct.isp_device*, i32) #1

declare dso_local i32 @LCx_CTRL(i32) #1

declare dso_local i32 @LCx_CODE(i32) #1

declare dso_local i32 @LCx_STAT_START(i32) #1

declare dso_local i32 @LCx_STAT_SIZE(i32) #1

declare dso_local i32 @LCx_SOF_ADDR(i32) #1

declare dso_local i32 @LCx_EOF_ADDR(i32) #1

declare dso_local i32 @LCx_DAT_START(i32) #1

declare dso_local i32 @LCx_DAT_SIZE(i32) #1

declare dso_local i32 @LCx_DAT_PING_ADDR(i32) #1

declare dso_local i32 @LCx_DAT_PONG_ADDR(i32) #1

declare dso_local i32 @LCx_DAT_OFST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
