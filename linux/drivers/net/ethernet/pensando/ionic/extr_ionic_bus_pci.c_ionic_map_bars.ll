; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_bus_pci.c_ionic_map_bars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_bus_pci.c_ionic_map_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i64, %struct.ionic_dev_bar*, %struct.device*, %struct.pci_dev* }
%struct.ionic_dev_bar = type { i32, i32, i32*, i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { i32 }

@IONIC_BARS_MAX = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot memory-map BAR %d, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic*)* @ionic_map_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_map_bars(%struct.ionic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ionic_dev_bar*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %3, align 8
  %9 = load %struct.ionic*, %struct.ionic** %3, align 8
  %10 = getelementptr inbounds %struct.ionic, %struct.ionic* %9, i32 0, i32 3
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.ionic*, %struct.ionic** %3, align 8
  %13 = getelementptr inbounds %struct.ionic, %struct.ionic* %12, i32 0, i32 2
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.ionic*, %struct.ionic** %3, align 8
  %16 = getelementptr inbounds %struct.ionic, %struct.ionic* %15, i32 0, i32 1
  %17 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %16, align 8
  store %struct.ionic_dev_bar* %17, %struct.ionic_dev_bar** %6, align 8
  %18 = load %struct.ionic*, %struct.ionic** %3, align 8
  %19 = getelementptr inbounds %struct.ionic, %struct.ionic* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %99, %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @IONIC_BARS_MAX, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %102

24:                                               ; preds = %20
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pci_resource_flags(%struct.pci_dev* %25, i32 %26)
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %99

32:                                               ; preds = %24
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pci_resource_len(%struct.pci_dev* %33, i32 %34)
  %36 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %36, i64 %38
  %40 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %39, i32 0, i32 3
  store i32 %35, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %44, i64 %46
  %48 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  br label %78

49:                                               ; preds = %32
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %52, i64 %54
  %56 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32* @pci_iomap(%struct.pci_dev* %50, i32 %51, i32 %57)
  %59 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %59, i64 %61
  %63 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %62, i32 0, i32 2
  store i32* %58, i32** %63, align 8
  %64 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %64, i64 %66
  %68 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %49
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %103

77:                                               ; preds = %49
  br label %78

78:                                               ; preds = %77, %43
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @pci_resource_start(%struct.pci_dev* %79, i32 %80)
  %82 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %82, i64 %84
  %86 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.ionic_dev_bar*, %struct.ionic_dev_bar** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %88, i64 %90
  %92 = getelementptr inbounds %struct.ionic_dev_bar, %struct.ionic_dev_bar* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 8
  %93 = load %struct.ionic*, %struct.ionic** %3, align 8
  %94 = getelementptr inbounds %struct.ionic, %struct.ionic* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %78, %31
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %20

102:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %71
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
