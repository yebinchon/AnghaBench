; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_vpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%union.ibmvnic_crq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i32, i8* }
%struct.TYPE_6__ = type { i32, i8* }

@IBMVNIC_CRQ_CMD = common dso_local global i8* null, align 8
@GET_VPD_SIZE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could allocate VPD buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not map VPD buffer\0A\00", align 1
@GET_VPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @ibmvnic_get_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_get_vpd(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %union.ibmvnic_crq, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %8 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %25, i32 0, i32 0
  %27 = call i32 @init_completion(i32* %26)
  %28 = load i8*, i8** @IBMVNIC_CRQ_CMD, align 8
  %29 = bitcast %union.ibmvnic_crq* %5 to %struct.TYPE_6__*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @GET_VPD_SIZE, align 4
  %32 = bitcast %union.ibmvnic_crq* %5 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %35 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %34, %union.ibmvnic_crq* %5)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %197

40:                                               ; preds = %24
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %41, i32 0, i32 0
  %43 = call i32 @wait_for_completion(i32* %42)
  %44 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @ENODATA, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %197

53:                                               ; preds = %40
  %54 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %53
  %61 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32* @kzalloc(i32 %65, i32 %66)
  %68 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32* %67, i32** %71, align 8
  br label %98

72:                                               ; preds = %53
  %73 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %72
  %81 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32* @krealloc(i32* %85, i32 %90, i32 %91)
  %93 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32* %92, i32** %96, align 8
  br label %97

97:                                               ; preds = %80, %72
  br label %98

98:                                               ; preds = %97, %60
  %99 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %197

110:                                              ; preds = %98
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %123 = call i32 @dma_map_single(%struct.device* %111, i32* %116, i32 %121, i32 %122)
  %124 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  store i32 %123, i32* %127, align 8
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @dma_mapping_error(%struct.device* %128, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %110
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = call i32 @dev_err(%struct.device* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %139 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %139, i32 0, i32 1
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @kfree(i32* %143)
  %145 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %146 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %145, i32 0, i32 1
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i32* null, i32** %148, align 8
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %197

151:                                              ; preds = %110
  %152 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %152, i32 0, i32 0
  %154 = call i32 @reinit_completion(i32* %153)
  %155 = load i8*, i8** @IBMVNIC_CRQ_CMD, align 8
  %156 = bitcast %union.ibmvnic_crq* %5 to %struct.TYPE_7__*
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* @GET_VPD, align 4
  %159 = bitcast %union.ibmvnic_crq* %5 to %struct.TYPE_7__*
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @cpu_to_be32(i32 %165)
  %167 = bitcast %union.ibmvnic_crq* %5 to %struct.TYPE_7__*
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %170 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %169, i32 0, i32 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @cpu_to_be32(i32 %173)
  %175 = bitcast %union.ibmvnic_crq* %5 to %struct.TYPE_7__*
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %178 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %177, %union.ibmvnic_crq* %5)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %151
  %182 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %183 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %182, i32 0, i32 1
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @kfree(i32* %186)
  %188 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %188, i32 0, i32 1
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  store i32* null, i32** %191, align 8
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %2, align 4
  br label %197

193:                                              ; preds = %151
  %194 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %195 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %194, i32 0, i32 0
  %196 = call i32 @wait_for_completion(i32* %195)
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %193, %181, %136, %105, %50, %38
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32* @krealloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
