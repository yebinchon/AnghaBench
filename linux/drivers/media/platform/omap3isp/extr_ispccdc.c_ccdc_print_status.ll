; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_print_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32 }
%struct.isp_device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"-------------CCDC Register dump-------------\0A\00", align 1
@PCR = common dso_local global i32 0, align 4
@SYN_MODE = common dso_local global i32 0, align 4
@HD_VD_WID = common dso_local global i32 0, align 4
@PIX_LINES = common dso_local global i32 0, align 4
@HORZ_INFO = common dso_local global i32 0, align 4
@VERT_START = common dso_local global i32 0, align 4
@VERT_LINES = common dso_local global i32 0, align 4
@CULLING = common dso_local global i32 0, align 4
@HSIZE_OFF = common dso_local global i32 0, align 4
@SDOFST = common dso_local global i32 0, align 4
@SDR_ADDR = common dso_local global i32 0, align 4
@CLAMP = common dso_local global i32 0, align 4
@DCSUB = common dso_local global i32 0, align 4
@COLPTN = common dso_local global i32 0, align 4
@BLKCMP = common dso_local global i32 0, align 4
@FPC = common dso_local global i32 0, align 4
@FPC_ADDR = common dso_local global i32 0, align 4
@VDINT = common dso_local global i32 0, align 4
@ALAW = common dso_local global i32 0, align 4
@REC656IF = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@FMTCFG = common dso_local global i32 0, align 4
@FMT_HORZ = common dso_local global i32 0, align 4
@FMT_VERT = common dso_local global i32 0, align 4
@PRGEVEN0 = common dso_local global i32 0, align 4
@PRGEVEN1 = common dso_local global i32 0, align 4
@PRGODD0 = common dso_local global i32 0, align 4
@PRGODD1 = common dso_local global i32 0, align 4
@VP_OUT = common dso_local global i32 0, align 4
@LSC_CONFIG = common dso_local global i32 0, align 4
@LSC_INITIAL = common dso_local global i32 0, align 4
@LSC_TABLE_BASE = common dso_local global i32 0, align 4
@LSC_TABLE_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"--------------------------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_ccdc_device*)* @ccdc_print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_print_status(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca %struct.isp_ccdc_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %2, align 8
  %4 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %2, align 8
  %5 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %4)
  store %struct.isp_device* %5, %struct.isp_device** %3, align 8
  %6 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %7 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %11 = load i32, i32* @PCR, align 4
  %12 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %10, i32 %11)
  %13 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %14 = load i32, i32* @SYN_MODE, align 4
  %15 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %13, i32 %14)
  %16 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %17 = load i32, i32* @HD_VD_WID, align 4
  %18 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %16, i32 %17)
  %19 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %20 = load i32, i32* @PIX_LINES, align 4
  %21 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %19, i32 %20)
  %22 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %23 = load i32, i32* @HORZ_INFO, align 4
  %24 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %22, i32 %23)
  %25 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %26 = load i32, i32* @VERT_START, align 4
  %27 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %25, i32 %26)
  %28 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %29 = load i32, i32* @VERT_LINES, align 4
  %30 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %28, i32 %29)
  %31 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %32 = load i32, i32* @CULLING, align 4
  %33 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %31, i32 %32)
  %34 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %35 = load i32, i32* @HSIZE_OFF, align 4
  %36 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %34, i32 %35)
  %37 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %38 = load i32, i32* @SDOFST, align 4
  %39 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %37, i32 %38)
  %40 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %41 = load i32, i32* @SDR_ADDR, align 4
  %42 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %40, i32 %41)
  %43 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %44 = load i32, i32* @CLAMP, align 4
  %45 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %43, i32 %44)
  %46 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %47 = load i32, i32* @DCSUB, align 4
  %48 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %46, i32 %47)
  %49 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %50 = load i32, i32* @COLPTN, align 4
  %51 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %49, i32 %50)
  %52 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %53 = load i32, i32* @BLKCMP, align 4
  %54 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %52, i32 %53)
  %55 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %56 = load i32, i32* @FPC, align 4
  %57 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %55, i32 %56)
  %58 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %59 = load i32, i32* @FPC_ADDR, align 4
  %60 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %58, i32 %59)
  %61 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %62 = load i32, i32* @VDINT, align 4
  %63 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %61, i32 %62)
  %64 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %65 = load i32, i32* @ALAW, align 4
  %66 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %64, i32 %65)
  %67 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %68 = load i32, i32* @REC656IF, align 4
  %69 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %67, i32 %68)
  %70 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %71 = load i32, i32* @CFG, align 4
  %72 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %70, i32 %71)
  %73 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %74 = load i32, i32* @FMTCFG, align 4
  %75 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %73, i32 %74)
  %76 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %77 = load i32, i32* @FMT_HORZ, align 4
  %78 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %76, i32 %77)
  %79 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %80 = load i32, i32* @FMT_VERT, align 4
  %81 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %79, i32 %80)
  %82 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %83 = load i32, i32* @PRGEVEN0, align 4
  %84 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %82, i32 %83)
  %85 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %86 = load i32, i32* @PRGEVEN1, align 4
  %87 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %85, i32 %86)
  %88 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %89 = load i32, i32* @PRGODD0, align 4
  %90 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %88, i32 %89)
  %91 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %92 = load i32, i32* @PRGODD1, align 4
  %93 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %91, i32 %92)
  %94 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %95 = load i32, i32* @VP_OUT, align 4
  %96 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %94, i32 %95)
  %97 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %98 = load i32, i32* @LSC_CONFIG, align 4
  %99 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %97, i32 %98)
  %100 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %101 = load i32, i32* @LSC_INITIAL, align 4
  %102 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %100, i32 %101)
  %103 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %104 = load i32, i32* @LSC_TABLE_BASE, align 4
  %105 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %103, i32 %104)
  %106 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %107 = load i32, i32* @LSC_TABLE_OFFSET, align 4
  %108 = call i32 @CCDC_PRINT_REGISTER(%struct.isp_device* %106, i32 %107)
  %109 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %110 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @CCDC_PRINT_REGISTER(%struct.isp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
