; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_hdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_hdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"pci reset failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cmd failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed(%d) to initialize RSS\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed(%d) to initialize VLAN config\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Reset done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_reset_hdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_reset_hdev(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %10 = call i32 @hclgevf_pci_reset(%struct.hclgevf_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %82

19:                                               ; preds = %1
  %20 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %21 = call i32 @hclgevf_cmd_init(%struct.hclgevf_dev* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %82

30:                                               ; preds = %19
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %32 = call i32 @hclgevf_rss_init_hw(%struct.hclgevf_dev* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %36, i32 0, i32 0
  %38 = load %struct.pci_dev*, %struct.pci_dev** %37, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %82

43:                                               ; preds = %30
  %44 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %45 = call i32 @hclgevf_config_gro(%struct.hclgevf_dev* %44, i32 1)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %82

50:                                               ; preds = %43
  %51 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %52 = call i32 @hclgevf_init_vlan_config(%struct.hclgevf_dev* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %56, i32 0, i32 0
  %58 = load %struct.pci_dev*, %struct.pci_dev** %57, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %82

63:                                               ; preds = %50
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 33
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %70 = call i32 @hclgevf_set_promisc_mode(%struct.hclgevf_dev* %69, i32 1)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %82

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %63
  %77 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %78 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %77, i32 0, i32 0
  %79 = load %struct.pci_dev*, %struct.pci_dev** %78, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 1
  %81 = call i32 @dev_info(i32* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %76, %73, %55, %48, %35, %24, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @hclgevf_pci_reset(%struct.hclgevf_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclgevf_cmd_init(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_rss_init_hw(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_config_gro(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @hclgevf_init_vlan_config(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_set_promisc_mode(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
