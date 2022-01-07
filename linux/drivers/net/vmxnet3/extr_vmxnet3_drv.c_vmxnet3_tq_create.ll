; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_queue = type { i64, i8*, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i8*, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32 }
%struct.TYPE_5__ = type { i64, i8*, i32 }
%struct.vmxnet3_adapter = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate tx ring\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate tx data ring\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate tx comp ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_tq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_tq_create(%struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmxnet3_tx_queue*, align 8
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca i64, align 8
  store %struct.vmxnet3_tx_queue* %0, %struct.vmxnet3_tx_queue** %4, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %5, align 8
  %7 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br label %29

29:                                               ; preds = %24, %18, %12, %2
  %30 = phi i1 [ true, %18 ], [ true, %12 ], [ true, %2 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @dma_alloc_coherent(i32* %36, i64 %42, i32* %45, i32 %46)
  %48 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %49 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %29
  %57 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @netdev_err(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %145

61:                                               ; preds = %29
  %62 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %71 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = mul i64 %69, %72
  %74 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @dma_alloc_coherent(i32* %65, i64 %73, i32* %76, i32 %77)
  %79 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %80 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  %82 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %83 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %61
  %88 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %89 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @netdev_err(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %145

92:                                               ; preds = %61
  %93 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %94 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %104 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @dma_alloc_coherent(i32* %96, i64 %102, i32* %105, i32 %106)
  %108 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %109 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  %111 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %112 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %92
  %117 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %118 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @netdev_err(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %145

121:                                              ; preds = %92
  %122 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %123 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 1
  store i64 %127, i64* %6, align 8
  %128 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %129 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %134 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %133, i32 0, i32 2
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @dma_alloc_coherent(i32* %131, i64 %132, i32* %134, i32 %135)
  %137 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %138 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %140 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %121
  br label %145

144:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %151

145:                                              ; preds = %143, %116, %87, %56
  %146 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %4, align 8
  %147 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %148 = call i32 @vmxnet3_tq_destroy(%struct.vmxnet3_tx_queue* %146, %struct.vmxnet3_adapter* %147)
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %144
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @vmxnet3_tq_destroy(%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
