; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_alloc_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_alloc_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ocxl_link = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_IRQ_PER_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, %struct.ocxl_link**)* @alloc_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_link(%struct.pci_dev* %0, i32 %1, %struct.ocxl_link** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocxl_link**, align 8
  %8 = alloca %struct.ocxl_link*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocxl_link** %2, %struct.ocxl_link*** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ocxl_link* @kzalloc(i32 40, i32 %10)
  store %struct.ocxl_link* %11, %struct.ocxl_link** %8, align 8
  %12 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %13 = icmp ne %struct.ocxl_link* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %84

17:                                               ; preds = %3
  %18 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %19 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %18, i32 0, i32 6
  %20 = call i32 @kref_init(i32* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @pci_domain_nr(%struct.TYPE_4__* %23)
  %25 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %26 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %33 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PCI_SLOT(i32 %36)
  %38 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %39 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %41 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %40, i32 0, i32 2
  %42 = load i32, i32* @MAX_IRQ_PER_LINK, align 4
  %43 = call i32 @atomic_set(i32* %41, i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %46 = call i32 @alloc_spa(%struct.pci_dev* %44, %struct.ocxl_link* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %17
  br label %80

50:                                               ; preds = %17
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %53 = call i32 @setup_xsl_irq(%struct.pci_dev* %51, %struct.ocxl_link* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %77

57:                                               ; preds = %50
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %60 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %66 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %65, i32 0, i32 0
  %67 = call i32 @pnv_ocxl_spa_setup(%struct.pci_dev* %58, i32 %63, i32 %64, i32* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %74

71:                                               ; preds = %57
  %72 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %73 = load %struct.ocxl_link**, %struct.ocxl_link*** %7, align 8
  store %struct.ocxl_link* %72, %struct.ocxl_link** %73, align 8
  store i32 0, i32* %4, align 4
  br label %84

74:                                               ; preds = %70
  %75 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %76 = call i32 @release_xsl_irq(%struct.ocxl_link* %75)
  br label %77

77:                                               ; preds = %74, %56
  %78 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %79 = call i32 @free_spa(%struct.ocxl_link* %78)
  br label %80

80:                                               ; preds = %77, %49
  %81 = load %struct.ocxl_link*, %struct.ocxl_link** %8, align 8
  %82 = call i32 @kfree(%struct.ocxl_link* %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %71, %14
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.ocxl_link* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @alloc_spa(%struct.pci_dev*, %struct.ocxl_link*) #1

declare dso_local i32 @setup_xsl_irq(%struct.pci_dev*, %struct.ocxl_link*) #1

declare dso_local i32 @pnv_ocxl_spa_setup(%struct.pci_dev*, i32, i32, i32*) #1

declare dso_local i32 @release_xsl_irq(%struct.ocxl_link*) #1

declare dso_local i32 @free_spa(%struct.ocxl_link*) #1

declare dso_local i32 @kfree(%struct.ocxl_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
