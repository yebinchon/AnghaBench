; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_dequeue_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_dequeue_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32, i32, i32, %struct.ef4_tx_buffer*, %struct.ef4_nic* }
%struct.ef4_tx_buffer = type { i32, i64 }
%struct.ef4_nic = type { i32 }

@EF4_TX_BUF_OPTION = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"TX queue %d spurious TX completion id %x\0A\00", align 1
@RESET_TYPE_TX_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_tx_queue*, i32, i32*, i32*)* @ef4_dequeue_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_dequeue_buffers(%struct.ef4_tx_queue* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ef4_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ef4_nic*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ef4_tx_buffer*, align 8
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %14 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %13, i32 0, i32 4
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %14, align 8
  store %struct.ef4_nic* %15, %struct.ef4_nic** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %16, 1
  %18 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %19 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %17, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %23 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %26 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %68, %4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  %34 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %35 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %34, i32 0, i32 3
  %36 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %36, i64 %38
  store %struct.ef4_tx_buffer* %39, %struct.ef4_tx_buffer** %12, align 8
  %40 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %12, align 8
  %41 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @EF4_TX_BUF_OPTION, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %33
  %47 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %12, align 8
  %48 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %56 = load i32, i32* @tx_err, align 4
  %57 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %58 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %61 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @netif_err(%struct.ef4_nic* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %66 = load i32, i32* @RESET_TYPE_TX_SKIP, align 4
  %67 = call i32 @ef4_schedule_reset(%struct.ef4_nic* %65, i32 %66)
  br label %85

68:                                               ; preds = %46, %33
  %69 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %70 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %12, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @ef4_dequeue_buffer(%struct.ef4_tx_queue* %69, %struct.ef4_tx_buffer* %70, i32* %71, i32* %72)
  %74 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %75 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %79 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %5, align 8
  %82 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %80, %83
  store i32 %84, i32* %11, align 4
  br label %29

85:                                               ; preds = %54, %29
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ef4_schedule_reset(%struct.ef4_nic*, i32) #1

declare dso_local i32 @ef4_dequeue_buffer(%struct.ef4_tx_queue*, %struct.ef4_tx_buffer*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
