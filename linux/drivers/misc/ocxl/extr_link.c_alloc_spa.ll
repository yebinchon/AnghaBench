; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_alloc_spa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_alloc_spa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_link = type { %struct.spa*, i32, i32, i32 }
%struct.spa = type { %struct.ocxl_process_element*, i64, %struct.TYPE_2__, i32, i32 }
%struct.ocxl_process_element = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xsl_fault_handler_bh = common dso_local global i32 0, align 4
@SPA_SPA_SIZE_LOG = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't allocate Shared Process Area\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Allocated SPA for %x:%x:%x at %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_link*)* @alloc_spa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_spa(%struct.pci_dev* %0, %struct.ocxl_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ocxl_link*, align 8
  %6 = alloca %struct.spa*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ocxl_link* %1, %struct.ocxl_link** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.spa* @kzalloc(i32 32, i32 %7)
  store %struct.spa* %8, %struct.spa** %6, align 8
  %9 = load %struct.spa*, %struct.spa** %6, align 8
  %10 = icmp ne %struct.spa* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load %struct.spa*, %struct.spa** %6, align 8
  %16 = getelementptr inbounds %struct.spa, %struct.spa* %15, i32 0, i32 4
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.spa*, %struct.spa** %6, align 8
  %19 = getelementptr inbounds %struct.spa, %struct.spa* %18, i32 0, i32 3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @INIT_RADIX_TREE(i32* %19, i32 %20)
  %22 = load %struct.spa*, %struct.spa** %6, align 8
  %23 = getelementptr inbounds %struct.spa, %struct.spa* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* @xsl_fault_handler_bh, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load i64, i64* @SPA_SPA_SIZE_LOG, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.spa*, %struct.spa** %6, align 8
  %31 = getelementptr inbounds %struct.spa, %struct.spa* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* @__GFP_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.spa*, %struct.spa** %6, align 8
  %36 = getelementptr inbounds %struct.spa, %struct.spa* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @__get_free_pages(i32 %34, i64 %37)
  %39 = inttoptr i64 %38 to %struct.ocxl_process_element*
  %40 = load %struct.spa*, %struct.spa** %6, align 8
  %41 = getelementptr inbounds %struct.spa, %struct.spa* %40, i32 0, i32 0
  store %struct.ocxl_process_element* %39, %struct.ocxl_process_element** %41, align 8
  %42 = load %struct.spa*, %struct.spa** %6, align 8
  %43 = getelementptr inbounds %struct.spa, %struct.spa* %42, i32 0, i32 0
  %44 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %43, align 8
  %45 = icmp ne %struct.ocxl_process_element* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %14
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.spa*, %struct.spa** %6, align 8
  %51 = call i32 @kfree(%struct.spa* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %14
  %55 = load %struct.ocxl_link*, %struct.ocxl_link** %5, align 8
  %56 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ocxl_link*, %struct.ocxl_link** %5, align 8
  %59 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ocxl_link*, %struct.ocxl_link** %5, align 8
  %62 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.spa*, %struct.spa** %6, align 8
  %65 = getelementptr inbounds %struct.spa, %struct.spa* %64, i32 0, i32 0
  %66 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %65, align 8
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60, i32 %63, %struct.ocxl_process_element* %66)
  %68 = load %struct.spa*, %struct.spa** %6, align 8
  %69 = load %struct.ocxl_link*, %struct.ocxl_link** %5, align 8
  %70 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %69, i32 0, i32 0
  store %struct.spa* %68, %struct.spa** %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %54, %46, %11
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.spa* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @__get_free_pages(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.spa*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, %struct.ocxl_process_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
