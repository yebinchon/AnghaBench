; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_login_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_login_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibmvnic_crq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ibmvnic_adapter = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.ibmvnic_login_rsp_buffer*, %struct.net_device*, i64, i64, i32, i32, %struct.ibmvnic_login_buffer* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ibmvnic_login_rsp_buffer = type { i64, i32 }
%struct.net_device = type { i64 }
%struct.ibmvnic_login_buffer = type { i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Login Response Buffer:\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%016lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"FATAL: Inconsistent login and login rsp\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ibmvnic_crq*, %struct.ibmvnic_adapter*)* @handle_login_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_login_rsp(%union.ibmvnic_crq* %0, %struct.ibmvnic_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ibmvnic_crq*, align 8
  %5 = alloca %struct.ibmvnic_adapter*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ibmvnic_login_rsp_buffer*, align 8
  %9 = alloca %struct.ibmvnic_login_buffer*, align 8
  %10 = alloca i32, align 4
  store %union.ibmvnic_crq* %0, %union.ibmvnic_crq** %4, align 8
  store %struct.ibmvnic_adapter* %1, %struct.ibmvnic_adapter** %5, align 8
  %11 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %15, i32 0, i32 6
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %18, i32 0, i32 5
  %20 = load %struct.ibmvnic_login_rsp_buffer*, %struct.ibmvnic_login_rsp_buffer** %19, align 8
  store %struct.ibmvnic_login_rsp_buffer* %20, %struct.ibmvnic_login_rsp_buffer** %8, align 8
  %21 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %21, i32 0, i32 11
  %23 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %22, align 8
  store %struct.ibmvnic_login_buffer* %23, %struct.ibmvnic_login_buffer** %9, align 8
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DMA_TO_DEVICE, align 4
  %32 = call i32 @dma_unmap_single(%struct.device* %24, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(%struct.device* %33, i32 %36, i32 %39, i32 %40)
  %42 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %4, align 8
  %43 = bitcast %union.ibmvnic_crq* %42 to %struct.TYPE_5__*
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %2
  %49 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %4, align 8
  %50 = bitcast %union.ibmvnic_crq* %49 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %54, i32 0, i32 8
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %56, i32 0, i32 3
  %58 = call i32 @complete(i32* %57)
  store i32 0, i32* %3, align 4
  br label %133

59:                                               ; preds = %2
  %60 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ETH_HLEN, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %67, i32 0, i32 6
  %69 = load %struct.net_device*, %struct.net_device** %68, align 8
  %70 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %93, %59
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sdiv i32 %76, 8
  %78 = add nsw i32 %77, 1
  %79 = icmp slt i32 %72, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %71
  %81 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %82 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %81, i32 0, i32 6
  %83 = load %struct.net_device*, %struct.net_device** %82, align 8
  %84 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %85 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %84, i32 0, i32 5
  %86 = load %struct.ibmvnic_login_rsp_buffer*, %struct.ibmvnic_login_rsp_buffer** %85, align 8
  %87 = bitcast %struct.ibmvnic_login_rsp_buffer* %86 to i64*
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %80
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %71

96:                                               ; preds = %71
  %97 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %9, align 8
  %98 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ibmvnic_login_rsp_buffer*, %struct.ibmvnic_login_rsp_buffer** %8, align 8
  %101 = getelementptr inbounds %struct.ibmvnic_login_rsp_buffer, %struct.ibmvnic_login_rsp_buffer* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %118, label %104

104:                                              ; preds = %96
  %105 = load %struct.ibmvnic_login_buffer*, %struct.ibmvnic_login_buffer** %9, align 8
  %106 = getelementptr inbounds %struct.ibmvnic_login_buffer, %struct.ibmvnic_login_buffer* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %110 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %108, %111
  %113 = load %struct.ibmvnic_login_rsp_buffer*, %struct.ibmvnic_login_rsp_buffer** %8, align 8
  %114 = getelementptr inbounds %struct.ibmvnic_login_rsp_buffer, %struct.ibmvnic_login_rsp_buffer* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @be32_to_cpu(i32 %115)
  %117 = icmp ne i32 %112, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %104, %96
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = call i32 @dev_err(%struct.device* %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %122 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %121, i32 0, i32 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = call i32 @ibmvnic_remove(%struct.TYPE_6__* %123)
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %133

127:                                              ; preds = %104
  %128 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %129 = call i32 @release_login_buffer(%struct.ibmvnic_adapter* %128)
  %130 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %131 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %130, i32 0, i32 3
  %132 = call i32 @complete(i32* %131)
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %127, %118, %48
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @ibmvnic_remove(%struct.TYPE_6__*) #1

declare dso_local i32 @release_login_buffer(%struct.ibmvnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
