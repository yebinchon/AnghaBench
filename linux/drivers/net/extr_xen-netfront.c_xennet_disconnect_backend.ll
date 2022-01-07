; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_disconnect_backend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_disconnect_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { %struct.TYPE_7__*, %struct.netfront_queue* }
%struct.TYPE_7__ = type { i32 }
%struct.netfront_queue = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i8*, i8*, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@GRANT_INVALID_REF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_info*)* @xennet_disconnect_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xennet_disconnect_backend(%struct.netfront_info* %0) #0 {
  %2 = alloca %struct.netfront_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.netfront_queue*, align 8
  store %struct.netfront_info* %0, %struct.netfront_info** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %7 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %12 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @netif_carrier_off(%struct.TYPE_7__* %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %137, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %21 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %20, i32 0, i32 1
  %22 = load %struct.netfront_queue*, %struct.netfront_queue** %21, align 8
  %23 = icmp ne %struct.netfront_queue* %22, null
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  br i1 %25, label %26, label %140

26:                                               ; preds = %24
  %27 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %28 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %27, i32 0, i32 1
  %29 = load %struct.netfront_queue*, %struct.netfront_queue** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %29, i64 %31
  store %struct.netfront_queue* %32, %struct.netfront_queue** %5, align 8
  %33 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %34 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %33, i32 0, i32 11
  %35 = call i32 @del_timer_sync(i32* %34)
  %36 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %37 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %26
  %41 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %42 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %45 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %50 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %53 = call i32 @unbind_from_irqhandler(i64 %51, %struct.netfront_queue* %52)
  br label %54

54:                                               ; preds = %48, %40, %26
  %55 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %56 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %61 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %64 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %69 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %72 = call i32 @unbind_from_irqhandler(i64 %70, %struct.netfront_queue* %71)
  %73 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %74 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %77 = call i32 @unbind_from_irqhandler(i64 %75, %struct.netfront_queue* %76)
  br label %78

78:                                               ; preds = %67, %59, %54
  %79 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %80 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %79, i32 0, i32 9
  store i64 0, i64* %80, align 8
  %81 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %82 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %81, i32 0, i32 10
  store i64 0, i64* %82, align 8
  %83 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %84 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %86 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %88 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = call i64 @netif_running(%struct.TYPE_7__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %94 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %93, i32 0, i32 8
  %95 = call i32 @napi_synchronize(i32* %94)
  br label %96

96:                                               ; preds = %92, %78
  %97 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %98 = call i32 @xennet_release_tx_bufs(%struct.netfront_queue* %97)
  %99 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %100 = call i32 @xennet_release_rx_bufs(%struct.netfront_queue* %99)
  %101 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %102 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @gnttab_free_grant_references(i32 %103)
  %105 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %106 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @gnttab_free_grant_references(i32 %107)
  %109 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %110 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %113 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @xennet_end_access(i8* %111, i32* %115)
  %117 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %118 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %121 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @xennet_end_access(i8* %119, i32* %123)
  %125 = load i8*, i8** @GRANT_INVALID_REF, align 8
  %126 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %127 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @GRANT_INVALID_REF, align 8
  %129 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %130 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %132 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i32* null, i32** %133, align 8
  %134 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %135 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %96
  %138 = load i32, i32* %3, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %3, align 4
  br label %15

140:                                              ; preds = %24
  ret void
}

declare dso_local i32 @netif_carrier_off(%struct.TYPE_7__*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @unbind_from_irqhandler(i64, %struct.netfront_queue*) #1

declare dso_local i64 @netif_running(%struct.TYPE_7__*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @xennet_release_tx_bufs(%struct.netfront_queue*) #1

declare dso_local i32 @xennet_release_rx_bufs(%struct.netfront_queue*) #1

declare dso_local i32 @gnttab_free_grant_references(i32) #1

declare dso_local i32 @xennet_end_access(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
