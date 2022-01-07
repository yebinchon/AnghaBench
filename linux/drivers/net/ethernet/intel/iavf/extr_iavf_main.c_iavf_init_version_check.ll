; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_init_version_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_init_version_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, %struct.TYPE_2__, %struct.iavf_hw, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iavf_hw = type { i32 }
%struct.pci_dev = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@__IAVF_INIT_VERSION_CHECK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Admin queue command never completed\0A\00", align 1
@__IAVF_STARTUP = common dso_local global i64 0, align 8
@IAVF_ERR_ADMIN_QUEUE_NO_WORK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unsupported PF API version %d.%d, expected %d.%d\0A\00", align 1
@VIRTCHNL_VERSION_MAJOR = common dso_local global i32 0, align 4
@VIRTCHNL_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Unable to send config request (%d)\0A\00", align 1
@__IAVF_INIT_GET_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*)* @iavf_init_version_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_init_version_check(%struct.iavf_adapter* %0) #0 {
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
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @__IAVF_INIT_VERSION_CHECK, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %21 = call i32 @iavf_asq_done(%struct.iavf_hw* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.iavf_hw*, %struct.iavf_hw** %4, align 8
  %28 = call i32 @iavf_shutdown_adminq(%struct.iavf_hw* %27)
  %29 = load i64, i64* @__IAVF_STARTUP, align 8
  %30 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %73

32:                                               ; preds = %1
  %33 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %34 = call i32 @iavf_verify_api_ver(%struct.iavf_adapter* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IAVF_ERR_ADMIN_QUEUE_NO_WORK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %43 = call i32 @iavf_send_api_ver(%struct.iavf_adapter* %42)
  store i32 %43, i32* %5, align 4
  br label %58

44:                                               ; preds = %37
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VIRTCHNL_VERSION_MAJOR, align 4
  %56 = load i32, i32* @VIRTCHNL_VERSION_MINOR, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %44, %41
  br label %73

59:                                               ; preds = %32
  %60 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %61 = call i32 @iavf_send_vf_config_msg(%struct.iavf_adapter* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %73

69:                                               ; preds = %59
  %70 = load i64, i64* @__IAVF_INIT_GET_RESOURCES, align 8
  %71 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %64, %58, %23
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iavf_asq_done(%struct.iavf_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @iavf_shutdown_adminq(%struct.iavf_hw*) #1

declare dso_local i32 @iavf_verify_api_ver(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_send_api_ver(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_send_vf_config_msg(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
