; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_vpd_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_vpd_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibmvnic_crq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvnic_adapter = type { i8*, i32, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i8*, i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error retrieving VPD from device, rc=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RM\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"Warning - No FW level has been provided in the VPD buffer by the VIOS Server\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Length of FW substr extrapolated VDP buff\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"FW substr extrapolated VPD buff\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ibmvnic_crq*, %struct.ibmvnic_adapter*)* @handle_vpd_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_vpd_rsp(%union.ibmvnic_crq* %0, %struct.ibmvnic_adapter* %1) #0 {
  %3 = alloca %union.ibmvnic_crq*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %union.ibmvnic_crq* %0, %union.ibmvnic_crq** %3, align 8
  store %struct.ibmvnic_adapter* %1, %struct.ibmvnic_adapter** %4, align 8
  %8 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  store i8* null, i8** %6, align 8
  store i8 0, i8* %7, align 1
  %12 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @memset(i8* %14, i32 0, i32 32)
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_unmap_single(%struct.device* %16, i32 %21, i32 %26, i32 %27)
  %29 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %30 = bitcast %union.ibmvnic_crq* %29 to %struct.TYPE_7__*
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %38 = bitcast %union.ibmvnic_crq* %37 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %116

43:                                               ; preds = %2
  %44 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @strnstr(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %43
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = call i32 @dev_info(%struct.device* %58, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  br label %116

60:                                               ; preds = %43
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %67, i64 %73
  %75 = icmp ult i8* %62, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %60
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %7, align 1
  br label %83

80:                                               ; preds = %60
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = call i32 @dev_info(%struct.device* %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %116

83:                                               ; preds = %76
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %7, align 1
  %87 = sext i8 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %91 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %94, i64 %100
  %102 = icmp ult i8* %89, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %83
  %104 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 3
  %109 = load i8, i8* %7, align 1
  %110 = sext i8 %109 to i32
  %111 = call i32 (i8*, ...) @strncpy(i8* %106, i8* %108, i32 %110)
  br label %115

112:                                              ; preds = %83
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = call i32 @dev_info(%struct.device* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115, %80, %57, %35
  %117 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %126 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i8*, ...) @strncpy(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 3)
  br label %129

129:                                              ; preds = %124, %116
  %130 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %131 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %130, i32 0, i32 1
  %132 = call i32 @complete(i32* %131)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @strnstr(i8*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @strncpy(i8*, ...) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
