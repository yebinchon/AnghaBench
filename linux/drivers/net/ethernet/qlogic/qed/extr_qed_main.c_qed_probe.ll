; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.qed_probe_params = type { i32, i32, i32, i64, i32 }

@DRV_ID_DRV_TYPE_LINUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"init pci failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"PCI init completed successfully\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to register devlink.\0A\00", align 1
@QED_PCI_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"hw prepare failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"qed_probe completed successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qed_dev* (%struct.pci_dev*, %struct.qed_probe_params*)* @qed_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qed_dev* @qed_probe(%struct.pci_dev* %0, %struct.qed_probe_params* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.qed_probe_params*, align 8
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.qed_probe_params* %1, %struct.qed_probe_params** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.qed_dev* @qed_alloc_cdev(%struct.pci_dev* %8)
  store %struct.qed_dev* %9, %struct.qed_dev** %6, align 8
  %10 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %11 = icmp ne %struct.qed_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %80

13:                                               ; preds = %2
  %14 = load i32, i32* @DRV_ID_DRV_TYPE_LINUX, align 4
  %15 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %16 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.qed_probe_params*, %struct.qed_probe_params** %5, align 8
  %18 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %21 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qed_probe_params*, %struct.qed_probe_params** %5, align 8
  %23 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %28 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %13
  %30 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %31 = load %struct.qed_probe_params*, %struct.qed_probe_params** %5, align 8
  %32 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qed_probe_params*, %struct.qed_probe_params** %5, align 8
  %35 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @qed_init_dp(%struct.qed_dev* %30, i32 %33, i32 %36)
  %38 = load %struct.qed_probe_params*, %struct.qed_probe_params** %5, align 8
  %39 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %42 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i32 @qed_init_pci(%struct.qed_dev* %43, %struct.pci_dev* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %50 = call i32 @DP_ERR(%struct.qed_dev* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %77

51:                                               ; preds = %29
  %52 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %53 = call i32 @DP_INFO(%struct.qed_dev* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %55 = call i32 @qed_devlink_register(%struct.qed_dev* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %60 = call i32 @DP_INFO(%struct.qed_dev* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %74

61:                                               ; preds = %51
  %62 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %63 = load i32, i32* @QED_PCI_DEFAULT, align 4
  %64 = call i32 @qed_hw_prepare(%struct.qed_dev* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %69 = call i32 @DP_ERR(%struct.qed_dev* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %74

70:                                               ; preds = %61
  %71 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %72 = call i32 @DP_INFO(%struct.qed_dev* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  store %struct.qed_dev* %73, %struct.qed_dev** %3, align 8
  br label %81

74:                                               ; preds = %67, %58
  %75 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %76 = call i32 @qed_free_pci(%struct.qed_dev* %75)
  br label %77

77:                                               ; preds = %74, %48
  %78 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %79 = call i32 @qed_free_cdev(%struct.qed_dev* %78)
  br label %80

80:                                               ; preds = %77, %12
  store %struct.qed_dev* null, %struct.qed_dev** %3, align 8
  br label %81

81:                                               ; preds = %80, %70
  %82 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  ret %struct.qed_dev* %82
}

declare dso_local %struct.qed_dev* @qed_alloc_cdev(%struct.pci_dev*) #1

declare dso_local i32 @qed_init_dp(%struct.qed_dev*, i32, i32) #1

declare dso_local i32 @qed_init_pci(%struct.qed_dev*, %struct.pci_dev*) #1

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*) #1

declare dso_local i32 @DP_INFO(%struct.qed_dev*, i8*) #1

declare dso_local i32 @qed_devlink_register(%struct.qed_dev*) #1

declare dso_local i32 @qed_hw_prepare(%struct.qed_dev*, i32) #1

declare dso_local i32 @qed_free_pci(%struct.qed_dev*) #1

declare dso_local i32 @qed_free_cdev(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
