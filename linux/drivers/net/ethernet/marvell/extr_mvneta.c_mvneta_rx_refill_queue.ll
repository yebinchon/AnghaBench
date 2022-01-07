; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_refill_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_refill_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }
%struct.mvneta_rx_queue = type { i32, i32, i32, i32, %struct.mvneta_rx_desc* }
%struct.mvneta_rx_desc = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Can't refill queue %d. Done %d from %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_port*, %struct.mvneta_rx_queue*)* @mvneta_rx_refill_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_rx_refill_queue(%struct.mvneta_port* %0, %struct.mvneta_rx_queue* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_rx_queue*, align 8
  %5 = alloca %struct.mvneta_rx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_rx_queue* %1, %struct.mvneta_rx_queue** %4, align 8
  %8 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %9 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %58, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 64
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i1 [ false, %11 ], [ %19, %17 ]
  br i1 %21, label %22, label %61

22:                                               ; preds = %20
  %23 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %24 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %23, i32 0, i32 4
  %25 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %25, i64 %27
  store %struct.mvneta_rx_desc* %28, %struct.mvneta_rx_desc** %5, align 8
  %29 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %5, align 8
  %30 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %22
  %34 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %35 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %5, align 8
  %36 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i64 @mvneta_rx_refill(%struct.mvneta_port* %34, %struct.mvneta_rx_desc* %35, %struct.mvneta_rx_queue* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %46 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %47)
  %49 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %50 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %61

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @MVNETA_QUEUE_NEXT_DESC(%struct.mvneta_rx_queue* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %11

61:                                               ; preds = %40, %20
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %64 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %69 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i64 @mvneta_rx_refill(%struct.mvneta_port*, %struct.mvneta_rx_desc*, %struct.mvneta_rx_queue*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @MVNETA_QUEUE_NEXT_DESC(%struct.mvneta_rx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
