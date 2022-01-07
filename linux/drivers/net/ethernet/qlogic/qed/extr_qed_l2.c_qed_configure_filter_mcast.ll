; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_configure_filter_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_configure_filter_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_filter_mcast_params = type { i32, i32, i32* }
%struct.qed_filter_mcast = type { i32, i32*, i32 }

@QED_FILTER_ADD = common dso_local global i32 0, align 4
@QED_FILTER_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unknown multicast filter type %d\0A\00", align 1
@QED_SPQ_MODE_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_filter_mcast_params*)* @qed_configure_filter_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_configure_filter_mcast(%struct.qed_dev* %0, %struct.qed_filter_mcast_params* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_filter_mcast_params*, align 8
  %5 = alloca %struct.qed_filter_mcast, align 8
  %6 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_filter_mcast_params* %1, %struct.qed_filter_mcast_params** %4, align 8
  %7 = call i32 @memset(%struct.qed_filter_mcast* %5, i32 0, i32 24)
  %8 = load %struct.qed_filter_mcast_params*, %struct.qed_filter_mcast_params** %4, align 8
  %9 = getelementptr inbounds %struct.qed_filter_mcast_params, %struct.qed_filter_mcast_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %17 [
    i32 129, label %11
    i32 128, label %14
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @QED_FILTER_ADD, align 4
  %13 = getelementptr inbounds %struct.qed_filter_mcast, %struct.qed_filter_mcast* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @QED_FILTER_REMOVE, align 4
  %16 = getelementptr inbounds %struct.qed_filter_mcast, %struct.qed_filter_mcast* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %19 = load %struct.qed_filter_mcast_params*, %struct.qed_filter_mcast_params** %4, align 8
  %20 = getelementptr inbounds %struct.qed_filter_mcast_params, %struct.qed_filter_mcast_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DP_NOTICE(%struct.qed_dev* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %14, %11
  %24 = load %struct.qed_filter_mcast_params*, %struct.qed_filter_mcast_params** %4, align 8
  %25 = getelementptr inbounds %struct.qed_filter_mcast_params, %struct.qed_filter_mcast_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.qed_filter_mcast, %struct.qed_filter_mcast* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %48, %23
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.qed_filter_mcast, %struct.qed_filter_mcast* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.qed_filter_mcast, %struct.qed_filter_mcast* %5, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qed_filter_mcast_params*, %struct.qed_filter_mcast_params** %4, align 8
  %41 = getelementptr inbounds %struct.qed_filter_mcast_params, %struct.qed_filter_mcast_params* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ether_addr_copy(i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %53 = load i32, i32* @QED_SPQ_MODE_CB, align 4
  %54 = call i32 @qed_filter_mcast_cmd(%struct.qed_dev* %52, %struct.qed_filter_mcast* %5, i32 %53, i32* null)
  ret i32 %54
}

declare dso_local i32 @memset(%struct.qed_filter_mcast*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qed_filter_mcast_cmd(%struct.qed_dev*, %struct.qed_filter_mcast*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
