; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_configure_filter_ucast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_configure_filter_ucast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_filter_ucast_params = type { i32, i32, i32, i64, i64 }
%struct.qed_filter_ucast = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"Tried configuring a unicast filter, but both MAC and VLAN are not set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_FILTER_ADD = common dso_local global i32 0, align 4
@QED_FILTER_REMOVE = common dso_local global i32 0, align 4
@QED_FILTER_REPLACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown unicast filter type %d\0A\00", align 1
@QED_FILTER_MAC_VLAN = common dso_local global i32 0, align 4
@QED_FILTER_MAC = common dso_local global i32 0, align 4
@QED_FILTER_VLAN = common dso_local global i32 0, align 4
@QED_SPQ_MODE_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_filter_ucast_params*)* @qed_configure_filter_ucast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_configure_filter_ucast(%struct.qed_dev* %0, %struct.qed_filter_ucast_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_filter_ucast_params*, align 8
  %6 = alloca %struct.qed_filter_ucast, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_filter_ucast_params* %1, %struct.qed_filter_ucast_params** %5, align 8
  %7 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %8 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %13 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %18 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %17, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %92

21:                                               ; preds = %11, %2
  %22 = call i32 @memset(%struct.qed_filter_ucast* %6, i32 0, i32 24)
  %23 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %24 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %35 [
    i32 130, label %26
    i32 129, label %29
    i32 128, label %32
  ]

26:                                               ; preds = %21
  %27 = load i32, i32* @QED_FILTER_ADD, align 4
  %28 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 5
  store i32 %27, i32* %28, align 4
  br label %41

29:                                               ; preds = %21
  %30 = load i32, i32* @QED_FILTER_REMOVE, align 4
  %31 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  br label %41

32:                                               ; preds = %21
  %33 = load i32, i32* @QED_FILTER_REPLACE, align 4
  %34 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  br label %41

35:                                               ; preds = %21
  %36 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %37 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %38 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %32, %29, %26
  %42 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %43 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %48 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i32, i32* @QED_FILTER_MAC_VLAN, align 4
  %53 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %57 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ether_addr_copy(i32 %55, i32 %58)
  %60 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %61 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  br label %86

64:                                               ; preds = %46, %41
  %65 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %66 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* @QED_FILTER_MAC, align 4
  %71 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %75 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ether_addr_copy(i32 %73, i32 %76)
  br label %85

78:                                               ; preds = %64
  %79 = load i32, i32* @QED_FILTER_VLAN, align 4
  %80 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = load %struct.qed_filter_ucast_params*, %struct.qed_filter_ucast_params** %5, align 8
  %82 = getelementptr inbounds %struct.qed_filter_ucast_params, %struct.qed_filter_ucast_params* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %69
  br label %86

86:                                               ; preds = %85, %51
  %87 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 0
  store i32 1, i32* %87, align 4
  %88 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %6, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %90 = load i32, i32* @QED_SPQ_MODE_CB, align 4
  %91 = call i32 @qed_filter_ucast_cmd(%struct.qed_dev* %89, %struct.qed_filter_ucast* %6, i32 %90, i32* null)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, ...) #1

declare dso_local i32 @memset(%struct.qed_filter_ucast*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qed_filter_ucast_cmd(%struct.qed_dev*, %struct.qed_filter_ucast*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
