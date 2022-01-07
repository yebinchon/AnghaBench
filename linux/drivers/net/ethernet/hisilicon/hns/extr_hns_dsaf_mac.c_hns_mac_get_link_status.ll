; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hns_mac_cb*, i32*)* }
%struct.mac_driver = type { i32 (%struct.mac_driver*, i32*)* }

@HNAE_MEDIA_TYPE_FIBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_mac_get_link_status(%struct.hns_mac_cb* %0, i32* %1) #0 {
  %3 = alloca %struct.hns_mac_cb*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mac_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %9 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %8)
  store %struct.mac_driver* %9, %struct.mac_driver** %5, align 8
  %10 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %11 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %10, i32 0, i32 0
  %12 = load i32 (%struct.mac_driver*, i32*)*, i32 (%struct.mac_driver*, i32*)** %11, align 8
  %13 = icmp ne i32 (%struct.mac_driver*, i32*)* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %16 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %15, i32 0, i32 0
  %17 = load i32 (%struct.mac_driver*, i32*)*, i32 (%struct.mac_driver*, i32*)** %16, align 8
  %18 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 %17(%struct.mac_driver* %18, i32* %19)
  br label %23

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %14
  %24 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %25 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HNAE_MEDIA_TYPE_FIBER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %31 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.hns_mac_cb*, i32*)*, i32 (%struct.hns_mac_cb*, i32*)** %35, align 8
  %37 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %38 = call i32 %36(%struct.hns_mac_cb* %37, i32* %7)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %29
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i1 [ false, %41 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = load i32*, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %29
  br label %53

53:                                               ; preds = %52, %23
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %57 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  ret void
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
