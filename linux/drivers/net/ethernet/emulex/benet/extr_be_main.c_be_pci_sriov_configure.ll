; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_pci_sriov_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_pci_sriov_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.be_adapter = type { i32, i32 }
%struct.be_resources = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Cannot disable VFs while they are assigned\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to optimize SR-IOV resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @be_pci_sriov_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_pci_sriov_configure(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.be_resources, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.be_adapter* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.be_adapter* %10, %struct.be_adapter** %6, align 8
  %11 = bitcast %struct.be_resources* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %16 = call i32 @be_vf_clear(%struct.be_adapter* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i64 @pci_vfs_assigned(%struct.pci_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %98

35:                                               ; preds = %25, %17
  %36 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %37 = call i64 @skyhawk_chip(%struct.be_adapter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @pci_num_vf(%struct.pci_dev* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %45 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be_calculate_vf_res(%struct.be_adapter* %44, i32 %47, %struct.be_resources* %7)
  %49 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %50 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be_cmd_set_sriov_config(%struct.be_adapter* %49, i32 %52, i32 %55, %struct.be_resources* %7)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %43
  br label %64

64:                                               ; preds = %63, %39, %35
  %65 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %66 = call i32 @be_get_resources(%struct.be_adapter* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @be_cmd_status(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %98

72:                                               ; preds = %64
  %73 = call i32 (...) @rtnl_lock()
  %74 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %75 = call i32 @be_update_queues(%struct.be_adapter* %74)
  store i32 %75, i32* %8, align 4
  %76 = call i32 (...) @rtnl_unlock()
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @be_cmd_status(i32 %80)
  store i32 %81, i32* %3, align 4
  br label %98

82:                                               ; preds = %72
  %83 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %89 = call i32 @be_vf_setup(%struct.be_adapter* %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %93, %79, %69, %29
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.be_adapter* @pci_get_drvdata(%struct.pci_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @be_vf_clear(%struct.be_adapter*) #1

declare dso_local i64 @pci_vfs_assigned(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #1

declare dso_local i32 @pci_num_vf(%struct.pci_dev*) #1

declare dso_local i32 @be_calculate_vf_res(%struct.be_adapter*, i32, %struct.be_resources*) #1

declare dso_local i32 @be_cmd_set_sriov_config(%struct.be_adapter*, i32, i32, %struct.be_resources*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be_get_resources(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_status(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @be_update_queues(%struct.be_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @be_vf_setup(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
