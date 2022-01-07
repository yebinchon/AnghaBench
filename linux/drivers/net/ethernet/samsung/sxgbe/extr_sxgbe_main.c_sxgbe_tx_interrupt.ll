; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_tx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_tx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_tx_queue = type { i32, %struct.sxgbe_priv_data* }
%struct.sxgbe_priv_data = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_5__ = type { i32 (i32, i32, %struct.TYPE_8__*)* }

@handle_tx = common dso_local global i32 0, align 4
@tx_hard_error = common dso_local global i32 0, align 4
@tx_bump_tc = common dso_local global i32 0, align 4
@SXGBE_MTL_SFMODE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sxgbe_tx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_tx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sxgbe_tx_queue*, align 8
  %7 = alloca %struct.sxgbe_priv_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sxgbe_tx_queue*
  store %struct.sxgbe_tx_queue* %9, %struct.sxgbe_tx_queue** %6, align 8
  %10 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %6, align 8
  %11 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %10, i32 0, i32 1
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
  %23 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %6, align 8
  %24 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %27 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %26, i32 0, i32 1
  %28 = call i32 %19(i32 %22, i32 %25, %struct.TYPE_8__* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @handle_tx, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %36 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %35, i32 0, i32 4
  %37 = call i32 @napi_schedule(i32* %36)
  br label %38

38:                                               ; preds = %34, %2
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @tx_hard_error, align 4
  %41 = and i32 %39, %40
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %46 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %6, align 8
  %47 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sxgbe_restart_tx_queue(%struct.sxgbe_priv_data* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @tx_bump_tc, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %57 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SXGBE_MTL_SFMODE, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %63 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 512
  br label %66

66:                                               ; preds = %61, %55, %50
  %67 = phi i1 [ false, %55 ], [ false, %50 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %66
  %72 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %73 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %74, 128
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 32, i32 64
  %78 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %79 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %83 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %87, align 8
  %89 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %90 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sxgbe_tx_queue*, %struct.sxgbe_tx_queue** %6, align 8
  %93 = getelementptr inbounds %struct.sxgbe_tx_queue, %struct.sxgbe_tx_queue* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %96 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %88(i32 %91, i32 %94, i32 %97)
  %99 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %100 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %7, align 8
  %103 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %71, %66
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %106
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sxgbe_restart_tx_queue(%struct.sxgbe_priv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
