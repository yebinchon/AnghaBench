; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_init_implementation_adapter_regs_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_init_implementation_adapter_regs_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32 }
%struct.pci_dev = type { i32 }

@CXL_PSL_DSNDCTL = common dso_local global i32 0, align 4
@CXL_PSL_RESLCKTO = common dso_local global i32 0, align 4
@CXL_PSL_SNWRALLOC = common dso_local global i32 0, align 4
@CXL_PSL_FIR_CNTL = common dso_local global i32 0, align 4
@CXL_PSL_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, %struct.pci_dev*)* @init_implementation_adapter_regs_psl8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_implementation_adapter_regs_psl8(%struct.cxl* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = call i32 @cxl_calc_capp_routing(%struct.pci_dev* %12, i32* %8, i32* %9, i32* %10)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = or i64 %20, 67108864
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 58
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %27, 50
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.cxl*, %struct.cxl** %4, align 8
  %32 = load i32, i32* @CXL_PSL_DSNDCTL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @cxl_p1_write(%struct.cxl* %31, i32 %32, i32 %33)
  %35 = load %struct.cxl*, %struct.cxl** %4, align 8
  %36 = load i32, i32* @CXL_PSL_RESLCKTO, align 4
  %37 = call i32 @cxl_p1_write(%struct.cxl* %35, i32 %36, i32 512)
  %38 = load %struct.cxl*, %struct.cxl** %4, align 8
  %39 = load i32, i32* @CXL_PSL_SNWRALLOC, align 4
  %40 = call i32 @cxl_p1_write(%struct.cxl* %38, i32 %39, i32 -1)
  store i32 0, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = or i64 %42, 144115188075855872
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = or i64 %46, 1
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.cxl*, %struct.cxl** %4, align 8
  %50 = load i32, i32* @CXL_PSL_FIR_CNTL, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cxl_p1_write(%struct.cxl* %49, i32 %50, i32 %51)
  %53 = load %struct.cxl*, %struct.cxl** %4, align 8
  %54 = load i32, i32* @CXL_PSL_TRACE, align 4
  %55 = call i32 @cxl_p1_write(%struct.cxl* %53, i32 %54, i32 0)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %18, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @cxl_calc_capp_routing(%struct.pci_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
