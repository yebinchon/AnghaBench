; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_aq_ver_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_aq_ver_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i64, i64 }

@EXP_FW_API_VER_MAJOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [145 x i8] c"The driver for the device stopped because the NVM image is newer than expected. You must install the most recent version of the network driver.\0A\00", align 1
@EXP_FW_API_VER_MINOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [146 x i8] c"The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.\0A\00", align 1
@.str.2 = private unnamed_addr constant [114 x i8] c"The driver for the device detected an older version of the NVM image than expected. Please update the NVM image.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*)* @ice_aq_ver_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_ver_check(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  %4 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %5 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EXP_FW_API_VER_MAJOR, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %11 = call i32 @ice_hw_to_dev(%struct.ice_hw* %10)
  %12 = call i32 @dev_warn(i32 %11, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EXP_FW_API_VER_MAJOR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EXP_FW_API_VER_MINOR, align 8
  %24 = add nsw i64 %23, 2
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %28 = call i32 @ice_hw_to_dev(%struct.ice_hw* %27)
  %29 = call i32 @dev_info(i32 %28, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.1, i64 0, i64 0))
  br label %42

30:                                               ; preds = %19
  %31 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %32 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 2
  %35 = load i64, i64* @EXP_FW_API_VER_MINOR, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %39 = call i32 @ice_hw_to_dev(%struct.ice_hw* %38)
  %40 = call i32 @dev_info(i32 %39, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %30
  br label %42

42:                                               ; preds = %41, %26
  br label %47

43:                                               ; preds = %13
  %44 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %45 = call i32 @ice_hw_to_dev(%struct.ice_hw* %44)
  %46 = call i32 @dev_info(i32 %45, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %42
  br label %48

48:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
