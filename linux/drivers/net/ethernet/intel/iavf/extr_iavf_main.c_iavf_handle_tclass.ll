; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_handle_tclass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_handle_tclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.iavf_cloud_filter = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"Specify destination port to redirect to traffic class other than TC0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIRTCHNL_ACTION_TC_REDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*, i64, %struct.iavf_cloud_filter*)* @iavf_handle_tclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_handle_tclass(%struct.iavf_adapter* %0, i64 %1, %struct.iavf_cloud_filter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iavf_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iavf_cloud_filter*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iavf_cloud_filter* %2, %struct.iavf_cloud_filter** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %19 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.iavf_adapter*, %struct.iavf_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %43

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i32, i32* @VIRTCHNL_ACTION_TC_REDIRECT, align 4
  %36 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %37 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.iavf_cloud_filter*, %struct.iavf_cloud_filter** %7, align 8
  %41 = getelementptr inbounds %struct.iavf_cloud_filter, %struct.iavf_cloud_filter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %25, %10
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
