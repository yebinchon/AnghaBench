; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_set_queues_placement_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_set_queues_placement_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ena_com_dev = type { i32, i64, i32 }
%struct.ena_admin_feature_llq_desc = type { i32 }
%struct.ena_llq_configurations = type { i32 }

@ENA_ADMIN_LLQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"LLQ is not supported Fallback to host mode policy.\0A\00", align 1
@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENA_MEM_BAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Failed to configure the device mode.  Fallback to host mode policy.\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"ENA device does not expose LLQ bar. Fallback to host mode policy.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ena_com_dev*, %struct.ena_admin_feature_llq_desc*, %struct.ena_llq_configurations*)* @ena_set_queues_placement_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_set_queues_placement_policy(%struct.pci_dev* %0, %struct.ena_com_dev* %1, %struct.ena_admin_feature_llq_desc* %2, %struct.ena_llq_configurations* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ena_com_dev*, align 8
  %8 = alloca %struct.ena_admin_feature_llq_desc*, align 8
  %9 = alloca %struct.ena_llq_configurations*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.ena_com_dev* %1, %struct.ena_com_dev** %7, align 8
  store %struct.ena_admin_feature_llq_desc* %2, %struct.ena_admin_feature_llq_desc** %8, align 8
  store %struct.ena_llq_configurations* %3, %struct.ena_llq_configurations** %9, align 8
  %13 = load i32, i32* @ENA_ADMIN_LLQ, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %16 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %12, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %26 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %27 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  store i32 0, i32* %5, align 4
  br label %86

28:                                               ; preds = %4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call i32 @pci_select_bars(%struct.pci_dev* %29, i32 %30)
  %32 = load i32, i32* @ENA_MEM_BAR, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %36 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %8, align 8
  %37 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %9, align 8
  %38 = call i32 @ena_com_config_dev_mode(%struct.ena_com_dev* %35, %struct.ena_admin_feature_llq_desc* %36, %struct.ena_llq_configurations* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %47 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %48 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %5, align 4
  br label %86

49:                                               ; preds = %28
  %50 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %51 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %86

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %64 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %65 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  store i32 0, i32* %5, align 4
  br label %86

66:                                               ; preds = %56
  %67 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = load i32, i32* @ENA_MEM_BAR, align 4
  %71 = call i32 @pci_resource_start(%struct.pci_dev* %69, i32 %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %73 = load i32, i32* @ENA_MEM_BAR, align 4
  %74 = call i32 @pci_resource_len(%struct.pci_dev* %72, i32 %73)
  %75 = call i32 @devm_ioremap_wc(i32* %68, i32 %71, i32 %74)
  %76 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %77 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %79 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %66
  %83 = load i32, i32* @EFAULT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %82, %59, %55, %42, %21
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_select_bars(%struct.pci_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ena_com_config_dev_mode(%struct.ena_com_dev*, %struct.ena_admin_feature_llq_desc*, %struct.ena_llq_configurations*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @devm_ioremap_wc(i32*, i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
