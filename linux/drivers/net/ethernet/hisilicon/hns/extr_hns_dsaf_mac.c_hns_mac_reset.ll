; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mac_driver = type { i32 (%struct.mac_driver*, i32, i32)*, i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*)* }

@HNAE_PORT_DEBUG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_mac_reset(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca %struct.hns_mac_cb*, align 8
  %3 = alloca %struct.mac_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %2, align 8
  %5 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %6 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %5)
  store %struct.mac_driver* %6, %struct.mac_driver** %3, align 8
  %7 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %8 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @AE_IS_VER1(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %14 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %13, i32 0, i32 4
  %15 = load i32 (%struct.mac_driver*)*, i32 (%struct.mac_driver*)** %14, align 8
  %16 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %17 = call i32 %15(%struct.mac_driver* %16)
  %18 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %19 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %18, i32 0, i32 3
  %20 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.mac_driver*, i32)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %24 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %23, i32 0, i32 3
  %25 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %24, align 8
  %26 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %27 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %28 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %25(%struct.mac_driver* %26, i32 %29)
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %33 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %32, i32 0, i32 2
  %34 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.mac_driver*, i32)* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %38 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %37, i32 0, i32 2
  %39 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %38, align 8
  %40 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %41 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %42 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %39(%struct.mac_driver* %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %47 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %46, i32 0, i32 1
  %48 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.mac_driver*, i32)* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %52 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %51, i32 0, i32 1
  %53 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %52, align 8
  %54 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %55 = call i32 %53(%struct.mac_driver* %54, i32 1)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %58 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %57, i32 0, i32 0
  %59 = load i32 (%struct.mac_driver*, i32, i32)*, i32 (%struct.mac_driver*, i32, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.mac_driver*, i32, i32)* %59, null
  br i1 %60, label %61, label %88

61:                                               ; preds = %56
  %62 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %63 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HNAE_PORT_DEBUG, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %69 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %68, i32 0, i32 0
  %70 = load i32 (%struct.mac_driver*, i32, i32)*, i32 (%struct.mac_driver*, i32, i32)** %69, align 8
  %71 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 %70(%struct.mac_driver* %71, i32 %75, i32 %79)
  br label %87

81:                                               ; preds = %61
  %82 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %83 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %82, i32 0, i32 0
  %84 = load i32 (%struct.mac_driver*, i32, i32)*, i32 (%struct.mac_driver*, i32, i32)** %83, align 8
  %85 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %86 = call i32 %84(%struct.mac_driver* %85, i32 0, i32 1)
  br label %87

87:                                               ; preds = %81, %67
  br label %88

88:                                               ; preds = %87, %56
  ret void
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

declare dso_local i32 @AE_IS_VER1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
