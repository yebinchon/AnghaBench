; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.mei_me_hw = type { i32, i32, i32 }

@H_CBD = common dso_local global i32 0, align 4
@PCI_CFG_HFS_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PCI_CFG_HFS_1\00", align 1
@PCI_CFG_HFS_1_D0I3_MSK = common dso_local global i32 0, align 4
@MEI_PG_OFF = common dso_local global i32 0, align 4
@H_D0I3C_I3 = common dso_local global i32 0, align 4
@MEI_PG_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*)* @mei_me_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_me_hw_config(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.mei_me_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %7 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %8 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pci_dev* @to_pci_dev(i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %12 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %11)
  store %struct.mei_me_hw* %12, %struct.mei_me_hw** %4, align 8
  %13 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %14 = call i32 @mei_hcsr_read(%struct.mei_device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @H_CBD, align 4
  %17 = and i32 %15, %16
  %18 = ashr i32 %17, 24
  %19 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %20 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %6, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load i32, i32* @PCI_CFG_HFS_1, align 4
  %23 = call i32 @pci_read_config_dword(%struct.pci_dev* %21, i32 %22, i32* %6)
  %24 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %25 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCI_CFG_HFS_1, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @trace_mei_pci_cfg_read(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PCI_CFG_HFS_1_D0I3_MSK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @PCI_CFG_HFS_1_D0I3_MSK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %37 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @MEI_PG_OFF, align 4
  %39 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %40 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %42 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %1
  %46 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %47 = call i32 @mei_me_d0i3c_read(%struct.mei_device* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @H_D0I3C_I3, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @MEI_PG_ON, align 4
  %54 = load %struct.mei_me_hw*, %struct.mei_me_hw** %4, align 8
  %55 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %45
  br label %57

57:                                               ; preds = %56, %1
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_hcsr_read(%struct.mei_device*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @trace_mei_pci_cfg_read(i32, i8*, i32, i32) #1

declare dso_local i32 @mei_me_d0i3c_read(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
