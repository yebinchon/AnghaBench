; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_pci_sriov_ena.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_pci_sriov_ena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Cannot enable SR-IOV, device not ready\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ICE_FLAG_SRIOV_CAPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"This device is not capable of SR-IOV\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Can't enable %d VFs, max VFs supported is %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Allocating %d VFs\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to enable SR-IOV: %d\0A\00", align 1
@ICE_FLAG_SRIOV_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*, i32)* @ice_pci_sriov_ena to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_pci_sriov_ena(%struct.ice_pf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @pci_num_vf(%struct.TYPE_2__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %18 = call i32 @ice_pf_state_is_nominal(%struct.ice_pf* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %2
  %26 = load i32, i32* @ICE_FLAG_SRIOV_CAPABLE, align 4
  %27 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %28 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @test_bit(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %93

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %46 = call i32 @ice_free_vfs(%struct.ice_pf* %45)
  br label %57

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %3, align 4
  br label %93

56:                                               ; preds = %50, %47
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %60 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %67 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* @ENOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %93

72:                                               ; preds = %57
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_info(%struct.device* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ice_alloc_vfs(%struct.ice_pf* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %93

86:                                               ; preds = %72
  %87 = load i32, i32* @ICE_FLAG_SRIOV_ENA, align 4
  %88 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %89 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @set_bit(i32 %87, i32 %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %86, %81, %63, %54, %32, %20
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @pci_num_vf(%struct.TYPE_2__*) #1

declare dso_local i32 @ice_pf_state_is_nominal(%struct.ice_pf*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_free_vfs(%struct.ice_pf*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @ice_alloc_vfs(%struct.ice_pf*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
