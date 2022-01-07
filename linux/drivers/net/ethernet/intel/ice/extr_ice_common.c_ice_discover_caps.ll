; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_discover_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_discover_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_AQ_RC_ENOMEM = common dso_local global i64 0, align 8
@ICE_GET_CAP_BUF_COUNT = common dso_local global i32 0, align 4
@ICE_GET_CAP_RETRY_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32)* @ice_discover_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_discover_caps(%struct.ice_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 40, i32* %7, align 4
  store i64 2, i64* %9, align 8
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %17 = call i32 @ice_hw_to_dev(%struct.ice_hw* %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @devm_kzalloc(i32 %17, i32 %18, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  %24 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %11
  %26 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ice_aq_discover_caps(%struct.ice_hw* %26, i8* %27, i32 %28, i32* %7, i32 %29, i32* null)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %32 = call i32 @ice_hw_to_dev(%struct.ice_hw* %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @devm_kfree(i32 %32, i8* %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ICE_AQ_RC_ENOMEM, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %25
  br label %50

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %11, label %50

50:                                               ; preds = %46, %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_aq_discover_caps(%struct.ice_hw*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @devm_kfree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
