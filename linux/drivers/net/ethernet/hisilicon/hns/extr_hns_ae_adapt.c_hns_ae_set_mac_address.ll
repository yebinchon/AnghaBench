; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32 }
%struct.hns_mac_cb = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"is not valid ether addr !\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"set_mac_address fail, ret=%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*, i8*)* @hns_ae_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_set_mac_address(%struct.hnae_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_mac_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %9 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %8)
  store %struct.hns_mac_cb* %9, %struct.hns_mac_cb** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = call i32 @is_valid_ether_addr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %19 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EADDRNOTAVAIL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %12
  %25 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %7, align 8
  %26 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %27 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @hns_mac_change_vf_addr(%struct.hns_mac_cb* %25, i32 %28, i8* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %35 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %33, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @hns_mac_change_vf_addr(%struct.hns_mac_cb*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
