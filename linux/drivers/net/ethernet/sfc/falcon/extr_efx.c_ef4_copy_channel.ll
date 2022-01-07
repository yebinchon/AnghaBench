; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_copy_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_copy_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_channel = type { %struct.ef4_rx_queue, %struct.ef4_tx_queue*, i32, %struct.TYPE_2__, i32* }
%struct.ef4_rx_queue = type { i32, i32, i32* }
%struct.ef4_tx_queue = type { i32, i32*, %struct.ef4_channel* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EF4_TXQ_TYPES = common dso_local global i32 0, align 4
@ef4_rx_slow_fill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ef4_channel* (%struct.ef4_channel*)* @ef4_copy_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ef4_channel* @ef4_copy_channel(%struct.ef4_channel* %0) #0 {
  %2 = alloca %struct.ef4_channel*, align 8
  %3 = alloca %struct.ef4_channel*, align 8
  %4 = alloca %struct.ef4_channel*, align 8
  %5 = alloca %struct.ef4_rx_queue*, align 8
  %6 = alloca %struct.ef4_tx_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.ef4_channel* %0, %struct.ef4_channel** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ef4_channel* @kmalloc(i32 64, i32 %8)
  store %struct.ef4_channel* %9, %struct.ef4_channel** %4, align 8
  %10 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %11 = icmp ne %struct.ef4_channel* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.ef4_channel* null, %struct.ef4_channel** %2, align 8
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %15 = load %struct.ef4_channel*, %struct.ef4_channel** %3, align 8
  %16 = bitcast %struct.ef4_channel* %14 to i8*
  %17 = bitcast %struct.ef4_channel* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 64, i1 false)
  %18 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %19 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = call i32 @INIT_HLIST_NODE(i32* %22)
  %24 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %25 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %28 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %31 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %30, i32 0, i32 2
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %58, %13
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EF4_TXQ_TYPES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %39 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %38, i32 0, i32 1
  %40 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %40, i64 %42
  store %struct.ef4_tx_queue* %43, %struct.ef4_tx_queue** %6, align 8
  %44 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %6, align 8
  %45 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %44, i32 0, i32 2
  %46 = load %struct.ef4_channel*, %struct.ef4_channel** %45, align 8
  %47 = icmp ne %struct.ef4_channel* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %50 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %6, align 8
  %51 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %50, i32 0, i32 2
  store %struct.ef4_channel* %49, %struct.ef4_channel** %51, align 8
  br label %52

52:                                               ; preds = %48, %37
  %53 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %6, align 8
  %54 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %6, align 8
  %56 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %55, i32 0, i32 0
  %57 = call i32 @memset(i32* %56, i32 0, i32 4)
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %33

61:                                               ; preds = %33
  %62 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  %63 = getelementptr inbounds %struct.ef4_channel, %struct.ef4_channel* %62, i32 0, i32 0
  store %struct.ef4_rx_queue* %63, %struct.ef4_rx_queue** %5, align 8
  %64 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %5, align 8
  %65 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %5, align 8
  %67 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %66, i32 0, i32 1
  %68 = call i32 @memset(i32* %67, i32 0, i32 4)
  %69 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %5, align 8
  %70 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %69, i32 0, i32 0
  %71 = load i32, i32* @ef4_rx_slow_fill, align 4
  %72 = call i32 @timer_setup(i32* %70, i32 %71, i32 0)
  %73 = load %struct.ef4_channel*, %struct.ef4_channel** %4, align 8
  store %struct.ef4_channel* %73, %struct.ef4_channel** %2, align 8
  br label %74

74:                                               ; preds = %61, %12
  %75 = load %struct.ef4_channel*, %struct.ef4_channel** %2, align 8
  ret %struct.ef4_channel* %75
}

declare dso_local %struct.ef4_channel* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
