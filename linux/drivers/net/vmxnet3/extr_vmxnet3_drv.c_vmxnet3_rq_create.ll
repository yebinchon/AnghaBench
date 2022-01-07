; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_rx_queue = type { %struct.TYPE_8__*, %struct.vmxnet3_rx_buf_info**, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i8*, i32 }
%struct.vmxnet3_rx_buf_info = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, i32 }
%struct.TYPE_5__ = type { i64, i32*, i32 }
%struct.vmxnet3_adapter = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to allocate rx ring %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rx data ring will be disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate rx comp ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_rx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_rq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_rq_create(%struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmxnet3_rx_queue*, align 8
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmxnet3_rx_buf_info*, align 8
  store %struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_rx_queue** %4, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %60, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %63

12:                                               ; preds = %9
  %13 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  store i64 %22, i64* %7, align 8
  %23 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @dma_alloc_coherent(i32* %26, i64 %27, i32* %34, i32 %35)
  %37 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i8* %36, i8** %43, align 8
  %44 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %45 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %12
  %54 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, ...) @netdev_err(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %199

59:                                               ; preds = %12
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %9

63:                                               ; preds = %9
  %64 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %65 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %114

68:                                               ; preds = %63
  %69 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %70 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %68
  %75 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %76 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %83 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = mul i64 %81, %85
  store i64 %86, i64* %7, align 8
  %87 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %93 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @dma_alloc_coherent(i32* %90, i64 %91, i32* %94, i32 %95)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %99 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i32* %97, i32** %100, align 8
  %101 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %102 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %74
  %107 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, ...) @netdev_err(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %112 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %106, %74
  br label %121

114:                                              ; preds = %68, %63
  %115 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %116 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %119 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %114, %113
  %122 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %123 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  store i64 %127, i64* %7, align 8
  %128 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %129 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %134 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @dma_alloc_coherent(i32* %131, i64 %132, i32* %135, i32 %136)
  %138 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %139 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store i8* %137, i8** %140, align 8
  %141 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %142 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %121
  %147 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %148 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @netdev_err(i32 %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %199

151:                                              ; preds = %121
  %152 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %153 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %159 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %158, i32 0, i32 0
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %157, %163
  %165 = sext i32 %164 to i64
  %166 = mul i64 4, %165
  store i64 %166, i64* %7, align 8
  %167 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %168 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %167, i32 0, i32 1
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i64, i64* %7, align 8
  %172 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %173 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %172, i32 0, i32 2
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call i8* @dma_alloc_coherent(i32* %170, i64 %171, i32* %173, i32 %174)
  %176 = bitcast i8* %175 to %struct.vmxnet3_rx_buf_info*
  store %struct.vmxnet3_rx_buf_info* %176, %struct.vmxnet3_rx_buf_info** %8, align 8
  %177 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %8, align 8
  %178 = icmp ne %struct.vmxnet3_rx_buf_info* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %151
  br label %199

180:                                              ; preds = %151
  %181 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %8, align 8
  %182 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %183 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %182, i32 0, i32 1
  %184 = load %struct.vmxnet3_rx_buf_info**, %struct.vmxnet3_rx_buf_info*** %183, align 8
  %185 = getelementptr inbounds %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %184, i64 0
  store %struct.vmxnet3_rx_buf_info* %181, %struct.vmxnet3_rx_buf_info** %185, align 8
  %186 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %8, align 8
  %187 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %188 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %187, i32 0, i32 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %186, i64 %193
  %195 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %196 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %195, i32 0, i32 1
  %197 = load %struct.vmxnet3_rx_buf_info**, %struct.vmxnet3_rx_buf_info*** %196, align 8
  %198 = getelementptr inbounds %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %197, i64 1
  store %struct.vmxnet3_rx_buf_info* %194, %struct.vmxnet3_rx_buf_info** %198, align 8
  store i32 0, i32* %3, align 4
  br label %205

199:                                              ; preds = %179, %146, %53
  %200 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %201 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %202 = call i32 @vmxnet3_rq_destroy(%struct.vmxnet3_rx_queue* %200, %struct.vmxnet3_adapter* %201)
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %199, %180
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @vmxnet3_rq_destroy(%struct.vmxnet3_rx_queue*, %struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
