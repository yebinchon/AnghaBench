; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_pci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_pci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@HNAE3_VF_FULL_RESET = common dso_local global i64 0, align 8
@HCLGEVF_STATE_IRQ_INITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed(%d) to init MSI/MSI-X\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed(%d) to init Misc IRQ(vector0)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_pci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_pci_reset(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HNAE3_VF_FULL_RESET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @HCLGEVF_STATE_IRQ_INITED, align 4
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %22 = call i32 @hclgevf_misc_irq_uninit(%struct.hclgevf_dev* %21)
  %23 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %24 = call i32 @hclgevf_uninit_msi(%struct.hclgevf_dev* %23)
  %25 = load i32, i32* @HCLGEVF_STATE_IRQ_INITED, align 4
  %26 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %26, i32 0, i32 1
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %20, %14, %1
  %30 = load i32, i32* @HCLGEVF_STATE_IRQ_INITED, align 4
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_set_master(%struct.pci_dev* %36)
  %38 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %39 = call i32 @hclgevf_init_msi(%struct.hclgevf_dev* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %35
  %49 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %50 = call i32 @hclgevf_misc_irq_init(%struct.hclgevf_dev* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %55 = call i32 @hclgevf_uninit_msi(%struct.hclgevf_dev* %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %68

61:                                               ; preds = %48
  %62 = load i32, i32* @HCLGEVF_STATE_IRQ_INITED, align 4
  %63 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %64 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %63, i32 0, i32 1
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %29
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %53, %42
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hclgevf_misc_irq_uninit(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_uninit_msi(%struct.hclgevf_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @hclgevf_init_msi(%struct.hclgevf_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclgevf_misc_irq_init(%struct.hclgevf_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
