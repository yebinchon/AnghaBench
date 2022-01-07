; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_lp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_lp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hnae3_handle = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @hns3_lp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_lp_setup(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hnae3_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %11)
  store %struct.hnae3_handle* %12, %struct.hnae3_handle** %8, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.hnae3_handle*, i32, i32)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %23 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.hnae3_handle*, i32, i32)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21, %3
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %94

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %47 [
    i32 128, label %35
    i32 130, label %35
    i32 131, label %35
    i32 129, label %35
  ]

35:                                               ; preds = %33, %33, %33, %33
  %36 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %37 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)** %41, align 8
  %43 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 %42(%struct.hnae3_handle* %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  br label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @ENOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %35
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %55 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 33
  br i1 %59, label %60, label %62

60:                                               ; preds = %53, %50
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %94

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %67 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)** %71, align 8
  %73 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %74 = call i32 %72(%struct.hnae3_handle* %73, i32 1, i32 1)
  br label %92

75:                                               ; preds = %62
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %78 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @hns3_update_promisc_mode(%struct.net_device* %76, i32 %79)
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IFF_PROMISC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 1
  store i32 %88, i32* %9, align 4
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @hns3_enable_vlan_filter(%struct.net_device* %89, i32 %90)
  br label %92

92:                                               ; preds = %75, %65
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %60, %30
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @hns3_update_promisc_mode(%struct.net_device*, i32) #1

declare dso_local i32 @hns3_enable_vlan_filter(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
