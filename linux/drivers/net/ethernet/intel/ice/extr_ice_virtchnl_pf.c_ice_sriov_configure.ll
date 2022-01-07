; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_sriov_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_sriov_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ice_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"SR-IOV cannot be configured - Device is in Safe Mode\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"can't free VFs because some are assigned to VMs.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_sriov_configure(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_pf*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call %struct.ice_pf* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.ice_pf* %8, %struct.ice_pf** %6, align 8
  %9 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %10 = call i64 @ice_is_safe_mode(%struct.ice_pf* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ice_pci_sriov_ena(%struct.ice_pf* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_vfs_assigned(%struct.pci_dev* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %33 = call i32 @ice_free_vfs(%struct.ice_pf* %32)
  br label %42

34:                                               ; preds = %27
  %35 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %36 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %34, %23, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.ice_pf* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @ice_is_safe_mode(%struct.ice_pf*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ice_pci_sriov_ena(%struct.ice_pf*, i32) #1

declare dso_local i32 @pci_vfs_assigned(%struct.pci_dev*) #1

declare dso_local i32 @ice_free_vfs(%struct.ice_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
