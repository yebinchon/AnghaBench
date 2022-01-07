; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.hnae3_ae_dev = type { i32, i32, %struct.pci_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNAE3_NONE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @hns3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.hnae3_ae_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hnae3_ae_dev* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.hnae3_ae_dev* %11, %struct.hnae3_ae_dev** %6, align 8
  %12 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %13 = icmp ne %struct.hnae3_ae_dev* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %21 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %20, i32 0, i32 2
  store %struct.pci_dev* %19, %struct.pci_dev** %21, align 8
  %22 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %26 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @HNAE3_NONE_RESET, align 4
  %28 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %29 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %32 = call i32 @hns3_get_dev_capability(%struct.pci_dev* %30, %struct.hnae3_ae_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %35 = call i32 @pci_set_drvdata(%struct.pci_dev* %33, %struct.hnae3_ae_dev* %34)
  %36 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %37 = call i32 @hnae3_register_ae_dev(%struct.hnae3_ae_dev* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %18
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %6, align 8
  %44 = call i32 @devm_kfree(i32* %42, %struct.hnae3_ae_dev* %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i32 @pci_set_drvdata(%struct.pci_dev* %45, %struct.hnae3_ae_dev* null)
  br label %47

47:                                               ; preds = %40, %18
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.hnae3_ae_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hns3_get_dev_capability(%struct.pci_dev*, %struct.hnae3_ae_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.hnae3_ae_dev*) #1

declare dso_local i32 @hnae3_register_ae_dev(%struct.hnae3_ae_dev*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.hnae3_ae_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
