; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_check_sr_access_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_check_sr_access_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ICE_DBG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NVM error: offset beyond SR lmt.\0A\00", align 1
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_SR_SECTOR_SIZE_IN_WORDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"NVM error: tried to access %d words, limit is %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"NVM error: cannot spread over two sectors.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i64, i64)* @ice_check_sr_access_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_check_sr_access_params(%struct.ice_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = add nsw i64 %8, %9
  %11 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %10, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %18 = load i32, i32* @ICE_DBG_NVM, align 4
  %19 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %17, i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %20, i32* %4, align 4
  br label %49

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @ICE_SR_SECTOR_SIZE_IN_WORDS, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %27 = load i32, i32* @ICE_DBG_NVM, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @ICE_SR_SECTOR_SIZE_IN_WORDS, align 8
  %30 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %26, i32 %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %21
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub nsw i64 %34, 1
  %36 = add nsw i64 %33, %35
  %37 = load i64, i64* @ICE_SR_SECTOR_SIZE_IN_WORDS, align 8
  %38 = sdiv i64 %36, %37
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @ICE_SR_SECTOR_SIZE_IN_WORDS, align 8
  %41 = sdiv i64 %39, %40
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %45 = load i32, i32* @ICE_DBG_NVM, align 4
  %46 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %44, i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43, %25, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
