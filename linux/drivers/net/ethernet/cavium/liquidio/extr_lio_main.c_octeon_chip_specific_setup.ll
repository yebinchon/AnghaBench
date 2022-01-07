; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_octeon_chip_specific_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_octeon_chip_specific_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@OCTEON_CN68XX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CN68XX\00", align 1
@OCTEON_CN66XX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"CN66XX\00", align 1
@OCTEON_CN23XX_PF_VID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"CN23XX\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Unknown device found (dev_id: %x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s PASS%d.%d %s Version: %s\0A\00", align 1
@LIQUIDIO_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @octeon_chip_specific_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_chip_specific_setup(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = call i32 @pci_read_config_dword(%struct.TYPE_6__* %9, i32 0, i32* %3)
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = call i32 @pci_read_config_dword(%struct.TYPE_6__* %13, i32 8, i32* %4)
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %42 [
    i32 128, label %20
    i32 129, label %26
    i32 130, label %32
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @OCTEON_CN68XX, align 4
  %22 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %25 = call i32 @lio_setup_cn68xx_octeon_device(%struct.octeon_device* %24)
  store i32 %25, i32* %5, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %49

26:                                               ; preds = %1
  %27 = load i32, i32* @OCTEON_CN66XX, align 4
  %28 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %31 = call i32 @lio_setup_cn66xx_octeon_device(%struct.octeon_device* %30)
  store i32 %31, i32* %5, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %49

32:                                               ; preds = %1
  %33 = load i32, i32* @OCTEON_CN23XX_PF_VID, align 4
  %34 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %37 = call i32 @setup_cn23xx_octeon_pf_device(%struct.octeon_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %49

41:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %49

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %43 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %42, %41, %40, %26, %20
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %49
  %53 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %59 = call i32 @OCTEON_MAJOR_REV(%struct.octeon_device* %58)
  %60 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %61 = call i32 @OCTEON_MINOR_REV(%struct.octeon_device* %60)
  %62 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %63 = call %struct.TYPE_7__* @octeon_get_conf(%struct.octeon_device* %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @LIQUIDIO_VERSION, align 4
  %67 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %57, i32 %59, i32 %61, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %52, %49
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @lio_setup_cn68xx_octeon_device(%struct.octeon_device*) #1

declare dso_local i32 @lio_setup_cn66xx_octeon_device(%struct.octeon_device*) #1

declare dso_local i32 @setup_cn23xx_octeon_pf_device(%struct.octeon_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @OCTEON_MAJOR_REV(%struct.octeon_device*) #1

declare dso_local i32 @OCTEON_MINOR_REV(%struct.octeon_device*) #1

declare dso_local %struct.TYPE_7__* @octeon_get_conf(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
