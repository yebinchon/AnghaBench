; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info_tbl = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }

@chip_info_table = common dso_local global %struct.velocity_info_tbl* null, align 8
@VELOCITY_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No PCI resources.\0A\00", align 1
@BUS_PCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @velocity_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.velocity_info_tbl*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.velocity_info_tbl*, %struct.velocity_info_tbl** @chip_info_table, align 8
  %9 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.velocity_info_tbl, %struct.velocity_info_tbl* %8, i64 %11
  store %struct.velocity_info_tbl* %12, %struct.velocity_info_tbl** %6, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i32 @pci_enable_device(%struct.pci_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load i32, i32* @VELOCITY_NAME, align 4
  %22 = call i32 @pci_request_regions(%struct.pci_dev* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %44

29:                                               ; preds = %19
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.velocity_info_tbl*, %struct.velocity_info_tbl** %6, align 8
  %36 = load i32, i32* @BUS_PCI, align 4
  %37 = call i32 @velocity_probe(i32* %31, i32 %34, %struct.velocity_info_tbl* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @pci_release_regions(%struct.pci_dev* %42)
  br label %44

44:                                               ; preds = %41, %25
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i32 @pci_disable_device(%struct.pci_dev* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %40, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @velocity_probe(i32*, i32, %struct.velocity_info_tbl*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
