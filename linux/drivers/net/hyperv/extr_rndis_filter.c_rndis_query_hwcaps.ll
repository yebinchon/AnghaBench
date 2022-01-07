; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_query_hwcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_query_hwcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_device = type { i32 }
%struct.netvsc_device = type { i32 }
%struct.ndis_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@OID_TCP_OFFLOAD_HARDWARE_CAPABILITIES = common dso_local global i32 0, align 4
@NDIS_OBJECT_TYPE_OFFLOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"invalid NDIS objtype %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NDIS_OFFLOAD_PARAMETERS_REVISION_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid NDIS objrev %x\0A\00", align 1
@NDIS_OFFLOAD_SIZE_6_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid NDIS objsize %u, data size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndis_device*, %struct.netvsc_device*, %struct.ndis_offload*)* @rndis_query_hwcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_query_hwcaps(%struct.rndis_device* %0, %struct.netvsc_device* %1, %struct.ndis_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rndis_device*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca %struct.ndis_offload*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rndis_device* %0, %struct.rndis_device** %5, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %6, align 8
  store %struct.ndis_offload* %2, %struct.ndis_offload** %7, align 8
  store i64 24, i64* %8, align 8
  %10 = load %struct.ndis_offload*, %struct.ndis_offload** %7, align 8
  %11 = call i32 @memset(%struct.ndis_offload* %10, i32 0, i32 24)
  %12 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %13 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %14 = load i32, i32* @OID_TCP_OFFLOAD_HARDWARE_CAPABILITIES, align 4
  %15 = load %struct.ndis_offload*, %struct.ndis_offload** %7, align 8
  %16 = call i32 @rndis_filter_query_device(%struct.rndis_device* %12, %struct.netvsc_device* %13, i32 %14, %struct.ndis_offload* %15, i64* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load %struct.ndis_offload*, %struct.ndis_offload** %7, align 8
  %23 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NDIS_OBJECT_TYPE_OFFLOAD, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %30 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ndis_offload*, %struct.ndis_offload** %7, align 8
  %33 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, i8*, i64, ...) @netdev_warn(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %21
  %40 = load %struct.ndis_offload*, %struct.ndis_offload** %7, align 8
  %41 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NDIS_OFFLOAD_PARAMETERS_REVISION_1, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %48 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ndis_offload*, %struct.ndis_offload** %7, align 8
  %51 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i32, i8*, i64, ...) @netdev_warn(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %84

57:                                               ; preds = %39
  %58 = load %struct.ndis_offload*, %struct.ndis_offload** %7, align 8
  %59 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.ndis_offload*, %struct.ndis_offload** %7, align 8
  %66 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NDIS_OFFLOAD_SIZE_6_0, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %64, %57
  %72 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %73 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ndis_offload*, %struct.ndis_offload** %7, align 8
  %76 = getelementptr inbounds %struct.ndis_offload, %struct.ndis_offload* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 (i32, i8*, i64, ...) @netdev_warn(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %71, %46, %28, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @memset(%struct.ndis_offload*, i32, i32) #1

declare dso_local i32 @rndis_filter_query_device(%struct.rndis_device*, %struct.netvsc_device*, i32, %struct.ndis_offload*, i64*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
