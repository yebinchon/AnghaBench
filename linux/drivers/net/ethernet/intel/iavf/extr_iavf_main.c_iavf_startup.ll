; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, i32, %struct.iavf_hw, %struct.pci_dev* }
%struct.iavf_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.pci_dev = type { i32 }

@__IAVF_STARTUP = common dso_local global i64 0, align 8
@IAVF_FLAG_PF_COMMS_FAILED = common dso_local global i32 0, align 4
@IAVF_FLAG_RESET_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to set MAC type (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Device is still in reset (%d), retrying\0A\00", align 1
@IAVF_AQ_LEN = common dso_local global i8* null, align 8
@IAVF_MAX_AQ_BUF_SIZE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to init Admin Queue (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unable to send to PF (%d)\0A\00", align 1
@__IAVF_INIT_VERSION_CHECK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*)* @iavf_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_startup(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.iavf_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %6 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %6, i32 0, i32 3
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %9, i32 0, i32 2
  store %struct.iavf_hw* %10, %struct.iavf_hw** %4, align 8
  %11 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @__IAVF_STARTUP, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* @IAVF_FLAG_PF_COMMS_FAILED, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @IAVF_FLAG_RESET_PENDING, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %31 = call i32 @iavf_set_mac_type(%struct.iavf_hw* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %91

39:                                               ; preds = %1
  %40 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %41 = call i32 @iavf_check_reset_complete(%struct.iavf_hw* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %91

49:                                               ; preds = %39
  %50 = load i8*, i8** @IAVF_AQ_LEN, align 8
  %51 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %52 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @IAVF_AQ_LEN, align 8
  %55 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %56 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** @IAVF_MAX_AQ_BUF_SIZE, align 8
  %59 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %60 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load i8*, i8** @IAVF_MAX_AQ_BUF_SIZE, align 8
  %63 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %64 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %67 = call i32 @iavf_init_adminq(%struct.iavf_hw* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %49
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %91

75:                                               ; preds = %49
  %76 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %77 = call i32 @iavf_send_api_ver(%struct.iavf_adapter* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %86 = call i32 @iavf_shutdown_adminq(%struct.iavf_hw* %85)
  br label %91

87:                                               ; preds = %75
  %88 = load i64, i64* @__IAVF_INIT_VERSION_CHECK, align 8
  %89 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %80, %70, %44, %34
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iavf_set_mac_type(%struct.iavf_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iavf_check_reset_complete(%struct.iavf_hw*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @iavf_init_adminq(%struct.iavf_hw*) #1

declare dso_local i32 @iavf_send_api_ver(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_shutdown_adminq(%struct.iavf_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
