; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000_poll_fiber_serdes_link_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000_poll_fiber_serdes_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@FIBER_LINK_UP_LIMIT = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Never got a valid link from auto-neg!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error while checking for link\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Valid Link Found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_poll_fiber_serdes_link_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_poll_fiber_serdes_link_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @FIBER_LINK_UP_LIMIT, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = call i32 @usleep_range(i32 10000, i32 11000)
  %16 = load i32, i32* @STATUS, align 4
  %17 = call i64 @er32(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @E1000_STATUS_LU, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %10

27:                                               ; preds = %22, %10
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @FIBER_LINK_UP_LIMIT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = call i32 @e_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %37, align 8
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = bitcast %struct.e1000_hw* %39 to %struct.e1000_hw.0*
  %41 = call i64 %38(%struct.e1000_hw.0* %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %2, align 8
  br label %55

47:                                               ; preds = %31
  %48 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %54

50:                                               ; preds = %27
  %51 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %52 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = call i32 @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %47
  store i64 0, i64* %2, align 8
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
