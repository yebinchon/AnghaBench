; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_rx_queue = type { i32, %struct.sxgbe_priv_data* }
%struct.sxgbe_priv_data = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_5__ = type { i32 (i32, i32, %struct.TYPE_8__*)*, i32 (i32, i32)* }

@handle_rx = common dso_local global i32 0, align 4
@rx_bump_tc = common dso_local global i32 0, align 4
@SXGBE_MTL_SFMODE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sxgbe_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sxgbe_rx_queue*, align 8
  %7 = alloca %struct.sxgbe_priv_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sxgbe_rx_queue*
  store %struct.sxgbe_rx_queue* %9, %struct.sxgbe_rx_queue** %6, align 8
  %10 = load %struct.sxgbe_rx_queue*, %struct.sxgbe_rx_queue** %6, align 8
  %11 = getelementptr inbounds %struct.sxgbe_rx_queue, %struct.sxgbe_rx_queue* %10, i32 0, i32 1
  %12 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %11, align 8
  store %struct.sxgbe_priv_data* %12, %struct.sxgbe_priv_data** %7, align 8
  %13 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %14 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, %struct.TYPE_8__*)*, i32 (i32, i32, %struct.TYPE_8__*)** %18, align 8
  %20 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %21 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sxgbe_rx_queue*, %struct.sxgbe_rx_queue** %6, align 8
  %24 = getelementptr inbounds %struct.sxgbe_rx_queue, %struct.sxgbe_rx_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %27 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %26, i32 0, i32 1
  %28 = call i32 %19(i32 %22, i32 %25, %struct.TYPE_8__* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @handle_rx, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %35 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %34, i32 0, i32 4
  %36 = call i64 @napi_schedule_prep(i32* %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %2
  %39 = phi i1 [ false, %2 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %45 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %44, i32 0, i32 3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %52 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sxgbe_rx_queue*, %struct.sxgbe_rx_queue** %6, align 8
  %55 = getelementptr inbounds %struct.sxgbe_rx_queue, %struct.sxgbe_rx_queue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %50(i32 %53, i32 %56)
  %58 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %59 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %58, i32 0, i32 4
  %60 = call i32 @__napi_schedule(i32* %59)
  br label %61

61:                                               ; preds = %43, %38
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @rx_bump_tc, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %68 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SXGBE_MTL_SFMODE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %74 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 128
  br label %77

77:                                               ; preds = %72, %66, %61
  %78 = phi i1 [ false, %66 ], [ false, %61 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %77
  %83 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %84 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 32
  store i32 %86, i32* %84, align 8
  %87 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %88 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %87, i32 0, i32 3
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %92, align 8
  %94 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %95 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.sxgbe_rx_queue*, %struct.sxgbe_rx_queue** %6, align 8
  %98 = getelementptr inbounds %struct.sxgbe_rx_queue, %struct.sxgbe_rx_queue* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %101 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %93(i32 %96, i32 %99, i32 %102)
  %104 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %105 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %108 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %82, %77
  %111 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %111
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
