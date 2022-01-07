; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_adpt_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_adpt_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_ring_data = type { i64, %struct.hnae_ring* }
%struct.hnae_ring = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hnae_handle* }
%struct.hnae_handle = type { i64, i64, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae_handle*, i32, i64)*, i32 (%struct.hnae_handle*, i64)* }

@HNS_LOWEST_LATENCY_RATE = common dso_local global i64 0, align 8
@HNAE_LOWEST_LATENCY_COAL_PARAM = common dso_local global i64 0, align 8
@HNS_LOW_LATENCY_RATE = common dso_local global i64 0, align 8
@HNAE_LOW_LATENCY_COAL_PARAM = common dso_local global i64 0, align 8
@HNAE_BULK_LATENCY_COAL_PARAM = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_nic_ring_data*)* @hns_nic_adpt_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_nic_adpt_coalesce(%struct.hns_nic_ring_data* %0) #0 {
  %2 = alloca %struct.hns_nic_ring_data*, align 8
  %3 = alloca %struct.hnae_ring*, align 8
  %4 = alloca %struct.hnae_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hns_nic_ring_data* %0, %struct.hns_nic_ring_data** %2, align 8
  %7 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %2, align 8
  %8 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %7, i32 0, i32 1
  %9 = load %struct.hnae_ring*, %struct.hnae_ring** %8, align 8
  store %struct.hnae_ring* %9, %struct.hnae_ring** %3, align 8
  %10 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %11 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %13, align 8
  store %struct.hnae_handle* %14, %struct.hnae_handle** %4, align 8
  %15 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %16 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %19 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HNS_LOWEST_LATENCY_RATE, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* @HNAE_LOWEST_LATENCY_COAL_PARAM, align 8
  store i64 %24, i64* %5, align 8
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %27 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HNS_LOW_LATENCY_RATE, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* @HNAE_LOW_LATENCY_COAL_PARAM, align 8
  store i64 %32, i64* %5, align 8
  br label %35

33:                                               ; preds = %25
  %34 = load i64, i64* @HNAE_BULK_LATENCY_COAL_PARAM, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %43 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %126

47:                                               ; preds = %40, %36
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @smooth_alg(i64 %48, i64 %49)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %53 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %56 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load i8*, i8** @jiffies, align 8
  %61 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %62 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %2, align 8
  %64 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %67 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %126

68:                                               ; preds = %47
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %71 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %93, label %74

74:                                               ; preds = %68
  %75 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %76 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %2, align 8
  %79 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %93, label %82

82:                                               ; preds = %74
  %83 = load i8*, i8** @jiffies, align 8
  %84 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %85 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* @HZ, align 4
  %88 = ashr i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %86, i64 %89
  %91 = call i64 @time_after(i8* %83, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %82, %74, %68
  %94 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %95 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32 (%struct.hnae_handle*, i64)*, i32 (%struct.hnae_handle*, i64)** %99, align 8
  %101 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i32 %100(%struct.hnae_handle* %101, i64 %102)
  %104 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %105 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32 (%struct.hnae_handle*, i32, i64)*, i32 (%struct.hnae_handle*, i32, i64)** %109, align 8
  %111 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = call i32 %110(%struct.hnae_handle* %111, i32 1, i64 %112)
  %114 = load i64, i64* %5, align 8
  %115 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %116 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %2, align 8
  %118 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %121 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i8*, i8** @jiffies, align 8
  %123 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %124 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %93, %82
  br label %126

126:                                              ; preds = %46, %125, %59
  ret void
}

declare dso_local i64 @smooth_alg(i64, i64) #1

declare dso_local i64 @time_after(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
