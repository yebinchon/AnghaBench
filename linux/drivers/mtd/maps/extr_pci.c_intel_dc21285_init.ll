; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_intel_dc21285_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_intel_dc21285_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.map_pci_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: enabling expansion ROM\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@mtd_pci_read32 = common dso_local global i32 0, align 4
@mtd_pci_write32 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.map_pci_info*)* @intel_dc21285_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dc21285_init(%struct.pci_dev* %0, %struct.map_pci_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.map_pci_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.map_pci_info* %1, %struct.map_pci_info** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %10 = call i64 @pci_resource_start(%struct.pci_dev* %8, i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %13 = call i64 @pci_resource_len(%struct.pci_dev* %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i64 @pci_resource_start(%struct.pci_dev* %20, i32 2)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i64 @pci_resource_len(%struct.pci_dev* %22, i32 2)
  store i64 %23, i64* %7, align 8
  br label %30

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @pci_enable_rom(%struct.pci_dev* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_name(%struct.pci_dev* %27)
  %29 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %33
  %40 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %41 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load i32, i32* @mtd_pci_read32, align 4
  %44 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %45 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @mtd_pci_write32, align 4
  %48 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %49 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %53 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @ioremap_nocache(i64 %55, i64 %56)
  %58 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %59 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %61 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %39
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %36
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_rom(%struct.pci_dev*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @ioremap_nocache(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
