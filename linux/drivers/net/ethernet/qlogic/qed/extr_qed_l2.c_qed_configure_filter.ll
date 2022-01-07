; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_filter_params = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unknown filter type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_filter_params*)* @qed_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_configure_filter(%struct.qed_dev* %0, %struct.qed_filter_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_filter_params*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_filter_params* %1, %struct.qed_filter_params** %5, align 8
  %7 = load %struct.qed_filter_params*, %struct.qed_filter_params** %5, align 8
  %8 = getelementptr inbounds %struct.qed_filter_params, %struct.qed_filter_params* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %30 [
    i32 128, label %10
    i32 130, label %16
    i32 129, label %22
  ]

10:                                               ; preds = %2
  %11 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %12 = load %struct.qed_filter_params*, %struct.qed_filter_params** %5, align 8
  %13 = getelementptr inbounds %struct.qed_filter_params, %struct.qed_filter_params* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = call i32 @qed_configure_filter_ucast(%struct.qed_dev* %11, i32* %14)
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %18 = load %struct.qed_filter_params*, %struct.qed_filter_params** %5, align 8
  %19 = getelementptr inbounds %struct.qed_filter_params, %struct.qed_filter_params* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @qed_configure_filter_mcast(%struct.qed_dev* %17, i32* %20)
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.qed_filter_params*, %struct.qed_filter_params** %5, align 8
  %24 = getelementptr inbounds %struct.qed_filter_params, %struct.qed_filter_params* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @qed_configure_filter_rx_mode(%struct.qed_dev* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %32 = load %struct.qed_filter_params*, %struct.qed_filter_params** %5, align 8
  %33 = getelementptr inbounds %struct.qed_filter_params, %struct.qed_filter_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DP_NOTICE(%struct.qed_dev* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %22, %16, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @qed_configure_filter_ucast(%struct.qed_dev*, i32*) #1

declare dso_local i32 @qed_configure_filter_mcast(%struct.qed_dev*, i32*) #1

declare dso_local i32 @qed_configure_filter_rx_mode(%struct.qed_dev*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
