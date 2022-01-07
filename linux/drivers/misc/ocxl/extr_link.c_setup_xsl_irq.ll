; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_setup_xsl_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_setup_xsl_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_link = type { i32, i32, i32, %struct.spa* }
%struct.spa = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ocxl-xsl-%x-%x-%x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't allocate name for xsl interrupt\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"irq_create_mapping failed for translation interrupt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"hwirq %d mapped to virq %d\0A\00", align 1
@xsl_fault_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"request_irq failed for translation interrupt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_link*)* @setup_xsl_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_xsl_irq(%struct.pci_dev* %0, %struct.ocxl_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ocxl_link*, align 8
  %6 = alloca %struct.spa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ocxl_link* %1, %struct.ocxl_link** %5, align 8
  %9 = load %struct.ocxl_link*, %struct.ocxl_link** %5, align 8
  %10 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %9, i32 0, i32 3
  %11 = load %struct.spa*, %struct.spa** %10, align 8
  store %struct.spa* %11, %struct.spa** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pnv_ocxl_get_xsl_irq(%struct.pci_dev* %12, i32* %8)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %106

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load %struct.spa*, %struct.spa** %6, align 8
  %21 = call i32 @map_irq_registers(%struct.pci_dev* %19, %struct.spa* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %106

26:                                               ; preds = %18
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load %struct.ocxl_link*, %struct.ocxl_link** %5, align 8
  %29 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ocxl_link*, %struct.ocxl_link** %5, align 8
  %32 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ocxl_link*, %struct.ocxl_link** %5, align 8
  %35 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kasprintf(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %36)
  %38 = load %struct.spa*, %struct.spa** %6, align 8
  %39 = getelementptr inbounds %struct.spa, %struct.spa* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.spa*, %struct.spa** %6, align 8
  %41 = getelementptr inbounds %struct.spa, %struct.spa* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %26
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %102

50:                                               ; preds = %26
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @irq_create_mapping(i32* null, i32 %51)
  %53 = load %struct.spa*, %struct.spa** %6, align 8
  %54 = getelementptr inbounds %struct.spa, %struct.spa* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.spa*, %struct.spa** %6, align 8
  %56 = getelementptr inbounds %struct.spa, %struct.spa* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %50
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %97

65:                                               ; preds = %50
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.spa*, %struct.spa** %6, align 8
  %70 = getelementptr inbounds %struct.spa, %struct.spa* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load %struct.spa*, %struct.spa** %6, align 8
  %74 = getelementptr inbounds %struct.spa, %struct.spa* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @xsl_fault_handler, align 4
  %77 = load %struct.spa*, %struct.spa** %6, align 8
  %78 = getelementptr inbounds %struct.spa, %struct.spa* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ocxl_link*, %struct.ocxl_link** %5, align 8
  %81 = call i32 @request_irq(i32 %75, i32 %76, i32 0, i32 %79, %struct.ocxl_link* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %65
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %92

91:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %106

92:                                               ; preds = %84
  %93 = load %struct.spa*, %struct.spa** %6, align 8
  %94 = getelementptr inbounds %struct.spa, %struct.spa* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @irq_dispose_mapping(i32 %95)
  br label %97

97:                                               ; preds = %92, %59
  %98 = load %struct.spa*, %struct.spa** %6, align 8
  %99 = getelementptr inbounds %struct.spa, %struct.spa* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @kfree(i32 %100)
  br label %102

102:                                              ; preds = %97, %44
  %103 = load %struct.spa*, %struct.spa** %6, align 8
  %104 = call i32 @unmap_irq_registers(%struct.spa* %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %91, %24, %16
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @pnv_ocxl_get_xsl_irq(%struct.pci_dev*, i32*) #1

declare dso_local i32 @map_irq_registers(%struct.pci_dev*, %struct.spa*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @irq_create_mapping(i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ocxl_link*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @unmap_irq_registers(%struct.spa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
