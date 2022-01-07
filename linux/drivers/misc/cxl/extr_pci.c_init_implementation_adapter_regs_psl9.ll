; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_init_implementation_adapter_regs_psl9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_init_implementation_adapter_regs_psl9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@CXL_XSL9_DSNCTL = common dso_local global i32 0, align 4
@CXL_PSL9_FIR_CNTL = common dso_local global i32 0, align 4
@CXL_PSL9_DSNDCTL = common dso_local global i32 0, align 4
@CXL_XSL9_DEF = common dso_local global i32 0, align 4
@CXL_XSL9_INV = common dso_local global i32 0, align 4
@CXL_PSL9_APCDEDTYPE = common dso_local global i32 0, align 4
@CXL_PSL9_APCDEDALLOC = common dso_local global i32 0, align 4
@CXL_PSL9_DEBUG = common dso_local global i32 0, align 4
@CXL_PSL_DEBUG_CDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No data-cache present\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, %struct.pci_dev*)* @init_implementation_adapter_regs_psl9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_implementation_adapter_regs_psl9(%struct.cxl* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = call i32 @cxl_calc_capp_routing(%struct.pci_dev* %13, i32* %8, i32* %9, i32* %10)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %3, align 4
  br label %82

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @cxl_get_xsl9_dsnctl(%struct.pci_dev* %20, i32 %21, i32* %6)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %3, align 4
  br label %82

27:                                               ; preds = %19
  %28 = load %struct.cxl*, %struct.cxl** %4, align 8
  %29 = load i32, i32* @CXL_XSL9_DSNCTL, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @cxl_p1_write(%struct.cxl* %28, i32 %29, i32 %30)
  store i32 0, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = or i64 %33, 144115188075855872
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = or i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load %struct.cxl*, %struct.cxl** %4, align 8
  %41 = load i32, i32* @CXL_PSL9_FIR_CNTL, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @cxl_p1_write(%struct.cxl* %40, i32 %41, i32 %42)
  %44 = load %struct.cxl*, %struct.cxl** %4, align 8
  %45 = load i32, i32* @CXL_PSL9_DSNDCTL, align 4
  %46 = call i32 @cxl_p1_write(%struct.cxl* %44, i32 %45, i32 76304)
  %47 = load %struct.cxl*, %struct.cxl** %4, align 8
  %48 = load i32, i32* @CXL_XSL9_DEF, align 4
  %49 = call i32 @cxl_p1_write(%struct.cxl* %47, i32 %48, i32 5)
  %50 = load %struct.cxl*, %struct.cxl** %4, align 8
  %51 = load i32, i32* @CXL_XSL9_INV, align 4
  %52 = call i32 @cxl_p1_write(%struct.cxl* %50, i32 %51, i32 134201856)
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %59

55:                                               ; preds = %27
  %56 = load %struct.cxl*, %struct.cxl** %4, align 8
  %57 = load i32, i32* @CXL_PSL9_APCDEDTYPE, align 4
  %58 = call i32 @cxl_p1_write(%struct.cxl* %56, i32 %57, i32 -65536)
  br label %59

59:                                               ; preds = %55, %27
  %60 = load %struct.cxl*, %struct.cxl** %4, align 8
  %61 = load i32, i32* @CXL_PSL9_APCDEDALLOC, align 4
  %62 = call i32 @cxl_p1_write(%struct.cxl* %60, i32 %61, i32 0)
  %63 = load %struct.cxl*, %struct.cxl** %4, align 8
  %64 = load i32, i32* @CXL_PSL9_DEBUG, align 4
  %65 = call i32 @cxl_p1_write(%struct.cxl* %63, i32 %64, i32 0)
  %66 = load %struct.cxl*, %struct.cxl** %4, align 8
  %67 = load i32, i32* @CXL_PSL9_DEBUG, align 4
  %68 = call i32 @cxl_p1_read(%struct.cxl* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @CXL_PSL_DEBUG_CDC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %59
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.cxl*, %struct.cxl** %4, align 8
  %78 = getelementptr inbounds %struct.cxl, %struct.cxl* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %73, %59
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %25, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @cxl_calc_capp_routing(%struct.pci_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @cxl_get_xsl9_dsnctl(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

declare dso_local i32 @cxl_p1_read(%struct.cxl*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
