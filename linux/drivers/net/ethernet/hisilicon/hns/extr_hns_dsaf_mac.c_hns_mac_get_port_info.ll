; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32 }
%struct.mac_driver = type { i32 (%struct.mac_driver*, %struct.mac_info*)* }
%struct.mac_info = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_mac_get_port_info(%struct.hns_mac_cb* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_mac_cb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mac_driver*, align 8
  %11 = alloca %struct.mac_info, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %13 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %12)
  store %struct.mac_driver* %13, %struct.mac_driver** %10, align 8
  %14 = load %struct.mac_driver*, %struct.mac_driver** %10, align 8
  %15 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.mac_driver*, %struct.mac_info*)*, i32 (%struct.mac_driver*, %struct.mac_info*)** %15, align 8
  %17 = icmp ne i32 (%struct.mac_driver*, %struct.mac_info*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load %struct.mac_driver*, %struct.mac_driver** %10, align 8
  %23 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.mac_driver*, %struct.mac_info*)*, i32 (%struct.mac_driver*, %struct.mac_info*)** %23, align 8
  %25 = load %struct.mac_driver*, %struct.mac_driver** %10, align 8
  %26 = call i32 %24(%struct.mac_driver* %25, %struct.mac_info* %11)
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %11, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %11, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %40
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
