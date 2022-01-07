; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_janz-cmodio.c_cmodio_setup_subdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_janz-cmodio.c_cmodio_setup_subdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmodio_device = type { %struct.janz_platform_data*, %struct.resource*, %struct.mfd_cell*, %struct.pci_dev* }
%struct.janz_platform_data = type { i32 }
%struct.resource = type { i64, i64, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mfd_cell = type { i8*, i32, i32, %struct.janz_platform_data*, i64, %struct.resource* }
%struct.pci_dev = type { %struct.TYPE_2__* }

@cmodio_id = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i8* null, align 8
@CMODIO_MODULBUS_SIZE = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmodio_device*, i8*, i32, i32)* @cmodio_setup_subdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmodio_setup_subdevice(%struct.cmodio_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cmodio_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.janz_platform_data*, align 8
  %10 = alloca %struct.mfd_cell*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.cmodio_device* %0, %struct.cmodio_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.cmodio_device*, %struct.cmodio_device** %5, align 8
  %14 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %13, i32 0, i32 3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %12, align 8
  %16 = load %struct.cmodio_device*, %struct.cmodio_device** %5, align 8
  %17 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %16, i32 0, i32 2
  %18 = load %struct.mfd_cell*, %struct.mfd_cell** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %18, i64 %20
  store %struct.mfd_cell* %21, %struct.mfd_cell** %10, align 8
  %22 = load %struct.cmodio_device*, %struct.cmodio_device** %5, align 8
  %23 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %22, i32 0, i32 1
  %24 = load %struct.resource*, %struct.resource** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 %25, 3
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %24, i64 %27
  store %struct.resource* %28, %struct.resource** %11, align 8
  %29 = load %struct.cmodio_device*, %struct.cmodio_device** %5, align 8
  %30 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %29, i32 0, i32 0
  %31 = load %struct.janz_platform_data*, %struct.janz_platform_data** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.janz_platform_data, %struct.janz_platform_data* %31, i64 %33
  store %struct.janz_platform_data* %34, %struct.janz_platform_data** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.mfd_cell*, %struct.mfd_cell** %10, align 8
  %37 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.resource*, %struct.resource** %11, align 8
  %39 = load %struct.mfd_cell*, %struct.mfd_cell** %10, align 8
  %40 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %39, i32 0, i32 5
  store %struct.resource* %38, %struct.resource** %40, align 8
  %41 = load %struct.mfd_cell*, %struct.mfd_cell** %10, align 8
  %42 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %41, i32 0, i32 1
  store i32 3, i32* %42, align 8
  %43 = load i32, i32* @cmodio_id, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @cmodio_id, align 4
  %45 = sext i32 %43 to i64
  %46 = load %struct.mfd_cell*, %struct.mfd_cell** %10, align 8
  %47 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.janz_platform_data*, %struct.janz_platform_data** %9, align 8
  %50 = getelementptr inbounds %struct.janz_platform_data, %struct.janz_platform_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.janz_platform_data*, %struct.janz_platform_data** %9, align 8
  %52 = load %struct.mfd_cell*, %struct.mfd_cell** %10, align 8
  %53 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %52, i32 0, i32 3
  store %struct.janz_platform_data* %51, %struct.janz_platform_data** %53, align 8
  %54 = load %struct.mfd_cell*, %struct.mfd_cell** %10, align 8
  %55 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %54, i32 0, i32 2
  store i32 4, i32* %55, align 4
  %56 = load i8*, i8** @IORESOURCE_MEM, align 8
  %57 = load %struct.resource*, %struct.resource** %11, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 3
  %63 = load %struct.resource*, %struct.resource** %11, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 2
  store %struct.TYPE_2__* %62, %struct.TYPE_2__** %64, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @CMODIO_MODULBUS_SIZE, align 4
  %72 = load i32, i32* %8, align 4
  %73 = mul i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  %76 = load %struct.resource*, %struct.resource** %11, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.resource*, %struct.resource** %11, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @CMODIO_MODULBUS_SIZE, align 4
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = sub nsw i64 %83, 1
  %85 = load %struct.resource*, %struct.resource** %11, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.resource*, %struct.resource** %11, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 1
  store %struct.resource* %88, %struct.resource** %11, align 8
  %89 = load i8*, i8** @IORESOURCE_MEM, align 8
  %90 = load %struct.resource*, %struct.resource** %11, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 4
  %96 = load %struct.resource*, %struct.resource** %11, align 8
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 2
  store %struct.TYPE_2__* %95, %struct.TYPE_2__** %97, align 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 4
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.resource*, %struct.resource** %11, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.resource*, %struct.resource** %11, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.resource*, %struct.resource** %11, align 8
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 1
  store %struct.resource* %115, %struct.resource** %11, align 8
  %116 = load i8*, i8** @IORESOURCE_IRQ, align 8
  %117 = load %struct.resource*, %struct.resource** %11, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load %struct.resource*, %struct.resource** %11, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %120, align 8
  %121 = load %struct.resource*, %struct.resource** %11, align 8
  %122 = getelementptr inbounds %struct.resource, %struct.resource* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.resource*, %struct.resource** %11, align 8
  %124 = getelementptr inbounds %struct.resource, %struct.resource* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  %125 = load %struct.resource*, %struct.resource** %11, align 8
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 1
  store %struct.resource* %126, %struct.resource** %11, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
