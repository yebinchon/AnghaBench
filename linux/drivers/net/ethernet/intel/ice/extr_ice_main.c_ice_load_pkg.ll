; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_load_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_load_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32 }
%struct.ice_pf = type { i32, %struct.ice_hw, %struct.TYPE_2__* }
%struct.ice_hw = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"The DDP package file failed to load. Entering Safe Mode.\0A\00", align 1
@ICE_FLAG_ADV_FEATURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, %struct.ice_pf*)* @ice_load_pkg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_load_pkg(%struct.firmware* %0, %struct.ice_pf* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ice_hw*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store %struct.ice_pf* %1, %struct.ice_pf** %4, align 8
  %8 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 1
  store %struct.ice_hw* %14, %struct.ice_hw** %7, align 8
  %15 = load %struct.firmware*, %struct.firmware** %3, align 8
  %16 = icmp ne %struct.firmware* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %19 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %24 = load %struct.firmware*, %struct.firmware** %3, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.firmware*, %struct.firmware** %3, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ice_copy_and_init_pkg(%struct.ice_hw* %23, i32 %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %32 = call i32 @ice_log_pkg_init(%struct.ice_hw* %31, i32* %5)
  br label %56

33:                                               ; preds = %17, %2
  %34 = load %struct.firmware*, %struct.firmware** %3, align 8
  %35 = icmp ne %struct.firmware* %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %33
  %37 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %38 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %43 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %44 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %47 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ice_init_pkg(%struct.ice_hw* %42, i64 %45, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %51 = call i32 @ice_log_pkg_init(%struct.ice_hw* %50, i32* %5)
  br label %55

52:                                               ; preds = %36, %33
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %41
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* @ICE_FLAG_ADV_FEATURES, align 4
  %61 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %62 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @clear_bit(i32 %60, i32 %63)
  br label %71

65:                                               ; preds = %56
  %66 = load i32, i32* @ICE_FLAG_ADV_FEATURES, align 4
  %67 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %68 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @set_bit(i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %59
  ret void
}

declare dso_local i32 @ice_copy_and_init_pkg(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @ice_log_pkg_init(%struct.ice_hw*, i32*) #1

declare dso_local i32 @ice_init_pkg(%struct.ice_hw*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
