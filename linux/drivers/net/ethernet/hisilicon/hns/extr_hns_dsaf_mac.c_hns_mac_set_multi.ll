; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_set_multi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_set_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32, %struct.dsaf_device* }
%struct.dsaf_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dsaf_drv_mac_single_dest_entry = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"set mac mc port failed, %s mac%d ret = %#x!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_mac_set_multi(%struct.hns_mac_cb* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_mac_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dsaf_device*, align 8
  %12 = alloca %struct.dsaf_drv_mac_single_dest_entry, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %14 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %13, i32 0, i32 1
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %14, align 8
  store %struct.dsaf_device* %15, %struct.dsaf_device** %11, align 8
  %16 = load %struct.dsaf_device*, %struct.dsaf_device** %11, align 8
  %17 = call i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %62

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @memcpy(i32 %24, i8* %25, i32 4)
  %27 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %29 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.dsaf_drv_mac_single_dest_entry, %struct.dsaf_drv_mac_single_dest_entry* %12, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load %struct.dsaf_device*, %struct.dsaf_device** %11, align 8
  %38 = call i32 @hns_dsaf_del_mac_mc_port(%struct.dsaf_device* %37, %struct.dsaf_drv_mac_single_dest_entry* %12)
  store i32 %38, i32* %10, align 4
  br label %42

39:                                               ; preds = %22
  %40 = load %struct.dsaf_device*, %struct.dsaf_device** %11, align 8
  %41 = call i32 @hns_dsaf_add_mac_mc_port(%struct.dsaf_device* %40, %struct.dsaf_drv_mac_single_dest_entry* %12)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.dsaf_device*, %struct.dsaf_device** %11, align 8
  %47 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %50 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %49, i32 0, i32 1
  %51 = load %struct.dsaf_device*, %struct.dsaf_device** %50, align 8
  %52 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %6, align 8
  %56 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %19, %4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.dsaf_device*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hns_dsaf_del_mac_mc_port(%struct.dsaf_device*, %struct.dsaf_drv_mac_single_dest_entry*) #1

declare dso_local i32 @hns_dsaf_add_mac_mc_port(%struct.dsaf_device*, %struct.dsaf_drv_mac_single_dest_entry*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
