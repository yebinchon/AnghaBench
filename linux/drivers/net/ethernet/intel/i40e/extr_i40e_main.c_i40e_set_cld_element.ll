; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_cld_element.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_set_cld_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_cloud_filter = type { i64, i64, i32, i32, i32*, i32, i32 }
%struct.i40e_aqc_cloud_filters_element_data = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@ETH_P_IP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@IPV6_MAX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_cloud_filter*, %struct.i40e_aqc_cloud_filters_element_data*)* @i40e_set_cld_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_set_cld_element(%struct.i40e_cloud_filter* %0, %struct.i40e_aqc_cloud_filters_element_data* %1) #0 {
  %3 = alloca %struct.i40e_cloud_filter*, align 8
  %4 = alloca %struct.i40e_aqc_cloud_filters_element_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_cloud_filter* %0, %struct.i40e_cloud_filter** %3, align 8
  store %struct.i40e_aqc_cloud_filters_element_data* %1, %struct.i40e_aqc_cloud_filters_element_data** %4, align 8
  %8 = load %struct.i40e_aqc_cloud_filters_element_data*, %struct.i40e_aqc_cloud_filters_element_data** %4, align 8
  %9 = call i32 @memset(%struct.i40e_aqc_cloud_filters_element_data* %8, i32 0, i32 32)
  %10 = load %struct.i40e_aqc_cloud_filters_element_data*, %struct.i40e_aqc_cloud_filters_element_data** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_aqc_cloud_filters_element_data, %struct.i40e_aqc_cloud_filters_element_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ether_addr_copy(i32 %12, i32 %15)
  %17 = load %struct.i40e_aqc_cloud_filters_element_data*, %struct.i40e_aqc_cloud_filters_element_data** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_aqc_cloud_filters_element_data, %struct.i40e_aqc_cloud_filters_element_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ether_addr_copy(i32 %19, i32 %22)
  %24 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ETH_P_IP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ETH_P_IPV6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %105

36:                                               ; preds = %29, %2
  %37 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %38 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ETH_P_IPV6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %76, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %46 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %43
  %51 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %52 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %55 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ARRAY_SIZE(i32* %56)
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %53, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be32_to_cpu(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @cpu_to_le32(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.i40e_aqc_cloud_filters_element_data*, %struct.i40e_aqc_cloud_filters_element_data** %4, align 8
  %68 = getelementptr inbounds %struct.i40e_aqc_cloud_filters_element_data, %struct.i40e_aqc_cloud_filters_element_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @memcpy(i32* %74, i32* %7, i32 4)
  br label %76

76:                                               ; preds = %50
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %6, align 4
  br label %43

81:                                               ; preds = %43
  br label %92

82:                                               ; preds = %36
  %83 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %84 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be32_to_cpu(i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load %struct.i40e_aqc_cloud_filters_element_data*, %struct.i40e_aqc_cloud_filters_element_data** %4, align 8
  %88 = getelementptr inbounds %struct.i40e_aqc_cloud_filters_element_data, %struct.i40e_aqc_cloud_filters_element_data* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @memcpy(i32* %90, i32* %7, i32 4)
  br label %92

92:                                               ; preds = %82, %81
  %93 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %94 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ntohs(i32 %95)
  %97 = call i32 @cpu_to_le16(i32 %96)
  %98 = load %struct.i40e_aqc_cloud_filters_element_data*, %struct.i40e_aqc_cloud_filters_element_data** %4, align 8
  %99 = getelementptr inbounds %struct.i40e_aqc_cloud_filters_element_data, %struct.i40e_aqc_cloud_filters_element_data* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %3, align 8
  %101 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %35, %104, %92
  ret void
}

declare dso_local i32 @memset(%struct.i40e_aqc_cloud_filters_element_data*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
