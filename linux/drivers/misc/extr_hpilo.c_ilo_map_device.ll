; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ilo_map_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ilo_map_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.ilo_hwinfo = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [20 x i8] c"Error mapping mmio\0A\00", align 1
@max_ccb = common dso_local global i32 0, align 4
@ILOHW_CCB_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error mapping shared mem\0A\00", align 1
@ONE_DB_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error mapping doorbell\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ilo_hwinfo*)* @ilo_map_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilo_map_device(%struct.pci_dev* %0, %struct.ilo_hwinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ilo_hwinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ilo_hwinfo* %1, %struct.ilo_hwinfo** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i8* @pci_iomap(%struct.pci_dev* %8, i32 1, i32 0)
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %12 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %14 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %81

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 228
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  store i32 5, i32* %6, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_resource_len(%struct.pci_dev* %27, i32 %28)
  %30 = sub nsw i32 %29, 8192
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  br label %33

32:                                               ; preds = %21
  store i32 2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @max_ccb, align 4
  %38 = load i32, i32* @ILOHW_CCB_SZ, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i32* @pci_iomap_range(%struct.pci_dev* %34, i32 %35, i64 %36, i32 %39)
  %41 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %42 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %44 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 1
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %75

51:                                               ; preds = %33
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load i32, i32* @max_ccb, align 4
  %54 = load i32, i32* @ONE_DB_SIZE, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i8* @pci_iomap(%struct.pci_dev* %52, i32 3, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %59 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  %60 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %61 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 1
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %69

68:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %84

69:                                               ; preds = %64
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %72 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @pci_iounmap(%struct.pci_dev* %70, i32* %73)
  br label %75

75:                                               ; preds = %69, %47
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %78 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @pci_iounmap(%struct.pci_dev* %76, i32* %79)
  br label %81

81:                                               ; preds = %75, %17
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %68
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i8* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32* @pci_iomap_range(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
