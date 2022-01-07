; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_set_multicast_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_set_multicast_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32 }
%struct.hns_mac_cb = type { i64, i32 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"mac add mul_mac:%pM port%d  fail, ret = %#x!\0A\00", align 1
@DSAF_BASE_INNER_PORT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*, i8*)* @hns_ae_set_multicast_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_ae_set_multicast_one(%struct.hnae_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hns_mac_cb*, align 8
  %9 = alloca i32, align 4
  store %struct.hnae_handle* %0, %struct.hnae_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %12 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %11)
  store %struct.hns_mac_cb* %12, %struct.hns_mac_cb** %8, align 8
  %13 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %14 = call i32 @assert(%struct.hns_mac_cb* %13)
  %15 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %16 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %23 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %24 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @hns_mac_set_multi(%struct.hns_mac_cb* %22, i32 %25, i8* %26, i32 1)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %32 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %36 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %68

41:                                               ; preds = %21
  %42 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %43 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %44 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hns_mac_get_inner_port_num(%struct.hns_mac_cb* %42, i32 %45, i32* %9)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %68

51:                                               ; preds = %41
  %52 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @hns_mac_set_multi(%struct.hns_mac_cb* %52, i32 %53, i8* %54, i32 1)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %60 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @DSAF_BASE_INNER_PORT_NUM, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %51
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %49, %30, %20
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @assert(%struct.hns_mac_cb*) #1

declare dso_local i32 @hns_mac_set_multi(%struct.hns_mac_cb*, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @hns_mac_get_inner_port_num(%struct.hns_mac_cb*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
