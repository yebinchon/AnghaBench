; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_change_vf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_change_vf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { %struct.TYPE_2__, i32, %struct.mac_entry_idx*, %struct.dsaf_device* }
%struct.TYPE_2__ = type { i32 }
%struct.mac_entry_idx = type { i32, i32, i32 }
%struct.dsaf_device = type { i32 }
%struct.mac_driver = type { i32 (i32, i8*)* }
%struct.dsaf_drv_mac_single_dest_entry = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_mac_change_vf_addr(%struct.hns_mac_cb* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_mac_cb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mac_driver*, align 8
  %10 = alloca %struct.dsaf_device*, align 8
  %11 = alloca %struct.dsaf_drv_mac_single_dest_entry, align 4
  %12 = alloca %struct.mac_entry_idx*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %14 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %13)
  store %struct.mac_driver* %14, %struct.mac_driver** %9, align 8
  %15 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %16 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %15, i32 0, i32 3
  %17 = load %struct.dsaf_device*, %struct.dsaf_device** %16, align 8
  store %struct.dsaf_device* %17, %struct.dsaf_device** %10, align 8
  %18 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %19 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %18, i32 0, i32 2
  %20 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %20, i64 %21
  store %struct.mac_entry_idx* %22, %struct.mac_entry_idx** %12, align 8
  %23 = load %struct.dsaf_device*, %struct.dsaf_device** %10, align 8
  %24 = call i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %85, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %11, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @memcpy(i32 %28, i8* %29, i32 4)
  %31 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %12, align 8
  %32 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %11, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %36 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %11, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %11, i32 0, i32 0
  %43 = call i32 @hns_mac_get_inner_port_num(%struct.hns_mac_cb* %39, i32 %41, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %26
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %111

48:                                               ; preds = %26
  %49 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %12, align 8
  %50 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %48
  %54 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %12, align 8
  %55 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @memcmp(i32 %56, i8* %57, i32 4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %53
  %61 = load %struct.dsaf_device*, %struct.dsaf_device** %10, align 8
  %62 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %12, align 8
  %63 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %66 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %12, align 8
  %69 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @hns_dsaf_del_mac_entry(%struct.dsaf_device* %61, i32 %64, i32 %67, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %111

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %53, %48
  %78 = load %struct.dsaf_device*, %struct.dsaf_device** %10, align 8
  %79 = call i32 @hns_dsaf_set_mac_uc_entry(%struct.dsaf_device* %78, %struct.dsaf_drv_mac_single_dest_entry* %11)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %111

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %3
  %86 = load %struct.mac_driver*, %struct.mac_driver** %9, align 8
  %87 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %86, i32 0, i32 0
  %88 = load i32 (i32, i8*)*, i32 (i32, i8*)** %87, align 8
  %89 = icmp ne i32 (i32, i8*)* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load i64, i64* %6, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.mac_driver*, %struct.mac_driver** %9, align 8
  %95 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %94, i32 0, i32 0
  %96 = load i32 (i32, i8*)*, i32 (i32, i8*)** %95, align 8
  %97 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %5, align 8
  %98 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 %96(i32 %100, i8* %101)
  br label %103

103:                                              ; preds = %93, %90, %85
  %104 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %12, align 8
  %105 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @memcpy(i32 %106, i8* %107, i32 4)
  %109 = load %struct.mac_entry_idx*, %struct.mac_entry_idx** %12, align 8
  %110 = getelementptr inbounds %struct.mac_entry_idx, %struct.mac_entry_idx* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %103, %82, %74, %46
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hns_mac_get_inner_port_num(%struct.hns_mac_cb*, i32, i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @hns_dsaf_del_mac_entry(%struct.dsaf_device*, i32, i32, i32) #1

declare dso_local i32 @hns_dsaf_set_mac_uc_entry(%struct.dsaf_device*, %struct.dsaf_drv_mac_single_dest_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
