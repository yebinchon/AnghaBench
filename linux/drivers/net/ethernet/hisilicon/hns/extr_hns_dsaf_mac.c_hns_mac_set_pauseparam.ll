; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mac_driver = type { i32 (%struct.mac_driver*, i64, i64)* }

@HNAE_PORT_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"macv1 can't enable tx/rx_pause!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_mac_set_pauseparam(%struct.hns_mac_cb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_mac_cb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mac_driver*, align 8
  %9 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %11 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %10)
  store %struct.mac_driver* %11, %struct.mac_driver** %8, align 8
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %13 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @AE_IS_VER1(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %19 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HNAE_PORT_DEBUG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29, %26
  %33 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %34 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %54

39:                                               ; preds = %29, %23
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.mac_driver*, %struct.mac_driver** %8, align 8
  %42 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %41, i32 0, i32 0
  %43 = load i32 (%struct.mac_driver*, i64, i64)*, i32 (%struct.mac_driver*, i64, i64)** %42, align 8
  %44 = icmp ne i32 (%struct.mac_driver*, i64, i64)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.mac_driver*, %struct.mac_driver** %8, align 8
  %47 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %46, i32 0, i32 0
  %48 = load i32 (%struct.mac_driver*, i64, i64)*, i32 (%struct.mac_driver*, i64, i64)** %47, align 8
  %49 = load %struct.mac_driver*, %struct.mac_driver** %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 %48(%struct.mac_driver* %49, i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %45, %40
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

declare dso_local i32 @AE_IS_VER1(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
