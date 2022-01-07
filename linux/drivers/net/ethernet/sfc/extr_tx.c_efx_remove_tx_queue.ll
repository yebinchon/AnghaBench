; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_remove_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_remove_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32*, i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"destroying TX queue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_remove_tx_queue(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %4 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %63

9:                                                ; preds = %1
  %10 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i32, i32* @drv, align 4
  %14 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %15 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %20 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netif_dbg(%struct.TYPE_3__* %12, i32 %13, i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %24 = call i32 @efx_nic_remove_tx(%struct.efx_tx_queue* %23)
  %25 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %26 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %33 = call i32 @efx_tx_cb_page_count(%struct.efx_tx_queue* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %37 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %40 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @efx_nic_free_buffer(%struct.TYPE_3__* %38, i32* %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %51 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %55 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %49, %9
  %57 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %58 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %62 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %8
  ret void
}

declare dso_local i32 @netif_dbg(%struct.TYPE_3__*, i32, i32, i8*, i32) #1

declare dso_local i32 @efx_nic_remove_tx(%struct.efx_tx_queue*) #1

declare dso_local i32 @efx_tx_cb_page_count(%struct.efx_tx_queue*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
