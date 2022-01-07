; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@g_mac_stats_string = common dso_local global i32 0, align 4
@ETH_SS_TEST = common dso_local global i64 0, align 8
@HNAE3_SUPPORT_APP_LOOPBACK = common dso_local global i32 0, align 4
@hns3_nic_test_strs = common dso_local global i32* null, align 8
@HNAE3_LOOP_APP = common dso_local global i64 0, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK = common dso_local global i32 0, align 4
@HNAE3_LOOP_SERIAL_SERDES = common dso_local global i64 0, align 8
@HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK = common dso_local global i32 0, align 4
@HNAE3_LOOP_PARALLEL_SERDES = common dso_local global i64 0, align 8
@HNAE3_SUPPORT_PHY_LOOPBACK = common dso_local global i32 0, align 4
@HNAE3_LOOP_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i64, i8*)* @hclge_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_strings(%struct.hnae3_handle* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ETH_SS_STATS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* @g_mac_stats_string, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @g_mac_stats_string, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @hclge_comm_get_strings(i64 %16, i32 %17, i32 %18, i8* %19)
  store i8* %20, i8** %7, align 8
  %21 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @hclge_tqps_get_strings(%struct.hnae3_handle* %21, i8* %22)
  store i8* %23, i8** %7, align 8
  br label %106

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @ETH_SS_TEST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %105

28:                                               ; preds = %24
  %29 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %30 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HNAE3_SUPPORT_APP_LOOPBACK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** @hns3_nic_test_strs, align 8
  %38 = load i64, i64* @HNAE3_LOOP_APP, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %42 = call i32 @memcpy(i8* %36, i32 %40, i32 %41)
  %43 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %35, %28
  %48 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %49 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HNAE3_SUPPORT_SERDES_SERIAL_LOOPBACK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load i8*, i8** %7, align 8
  %56 = load i32*, i32** @hns3_nic_test_strs, align 8
  %57 = load i64, i64* @HNAE3_LOOP_SERIAL_SERDES, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %61 = call i32 @memcpy(i8* %55, i32 %59, i32 %60)
  %62 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %7, align 8
  br label %66

66:                                               ; preds = %54, %47
  %67 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %68 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HNAE3_SUPPORT_SERDES_PARALLEL_LOOPBACK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load i8*, i8** %7, align 8
  %75 = load i32*, i32** @hns3_nic_test_strs, align 8
  %76 = load i64, i64* @HNAE3_LOOP_PARALLEL_SERDES, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %80 = call i32 @memcpy(i8* %74, i32 %78, i32 %79)
  %81 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %7, align 8
  br label %85

85:                                               ; preds = %73, %66
  %86 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %87 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HNAE3_SUPPORT_PHY_LOOPBACK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load i8*, i8** %7, align 8
  %94 = load i32*, i32** @hns3_nic_test_strs, align 8
  %95 = load i64, i64* @HNAE3_LOOP_PHY, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %99 = call i32 @memcpy(i8* %93, i32 %97, i32 %98)
  %100 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %7, align 8
  br label %104

104:                                              ; preds = %92, %85
  br label %105

105:                                              ; preds = %104, %24
  br label %106

106:                                              ; preds = %105, %13
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @hclge_comm_get_strings(i64, i32, i32, i8*) #1

declare dso_local i8* @hclge_tqps_get_strings(%struct.hnae3_handle*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
