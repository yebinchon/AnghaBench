; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_lag_conf.c_nfp_flower_lag_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_lag_conf.c_nfp_flower_lag_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_priv = type { %struct.nfp_fl_lag }
%struct.nfp_fl_lag = type { i32 }
%struct.net_device = type { i32 }

@NOTIFY_BAD = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_lag_netdev_event(%struct.nfp_flower_priv* %0, %struct.net_device* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nfp_fl_lag*, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_flower_priv* %0, %struct.nfp_flower_priv** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %12, i32 0, i32 0
  store %struct.nfp_fl_lag* %13, %struct.nfp_fl_lag** %10, align 8
  %14 = load i64, i64* %8, align 8
  switch i64 %14, label %36 [
    i64 129, label %15
    i64 130, label %25
    i64 128, label %31
  ]

15:                                               ; preds = %4
  %16 = load %struct.nfp_fl_lag*, %struct.nfp_fl_lag** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @nfp_fl_lag_changeupper_event(%struct.nfp_fl_lag* %16, i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %15
  %24 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %24, i32* %5, align 4
  br label %38

25:                                               ; preds = %4
  %26 = load %struct.nfp_fl_lag*, %struct.nfp_fl_lag** %10, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @nfp_fl_lag_changels_event(%struct.nfp_fl_lag* %26, %struct.net_device* %27, i8* %28)
  %30 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %4
  %32 = load %struct.nfp_fl_lag*, %struct.nfp_fl_lag** %10, align 8
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = call i32 @nfp_fl_lag_schedule_group_delete(%struct.nfp_fl_lag* %32, %struct.net_device* %33)
  %35 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %31, %25, %23, %21
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @nfp_fl_lag_changeupper_event(%struct.nfp_fl_lag*, i8*) #1

declare dso_local i32 @nfp_fl_lag_changels_event(%struct.nfp_fl_lag*, %struct.net_device*, i8*) #1

declare dso_local i32 @nfp_fl_lag_schedule_group_delete(%struct.nfp_fl_lag*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
