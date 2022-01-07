; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_xmit_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_xmit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32, i32 }

@EFX_EMPTY_COUNT_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_xmit_done(%struct.efx_tx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_tx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %11 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %10, i32 0, i32 10
  %12 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  store %struct.efx_nic* %12, %struct.efx_nic** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %15 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ugt i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %18)
  %20 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @efx_dequeue_buffers(%struct.efx_tx_queue* %20, i32 %21, i32* %8, i32* %9)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %25 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %30 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %37 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %2
  %41 = call i32 (...) @smp_mb()
  %42 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %43 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @netif_tx_queue_stopped(i32 %44)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %40
  %49 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @likely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %48
  %55 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @netif_device_present(i32 %57)
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %54
  %62 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %63 = call %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue* %62)
  store %struct.efx_tx_queue* %63, %struct.efx_tx_queue** %7, align 8
  %64 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %65 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %68 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %66, %69
  %71 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %7, align 8
  %72 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %7, align 8
  %75 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = call i32 @max(i32 %70, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %81 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ule i32 %79, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %61
  %85 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %86 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @netif_tx_wake_queue(i32 %87)
  br label %89

89:                                               ; preds = %84, %61
  br label %90

90:                                               ; preds = %89, %54, %48, %40
  %91 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %92 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %95 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %90
  %100 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %101 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @READ_ONCE(i32 %102)
  %104 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %105 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %107 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %110 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %99
  %114 = call i32 (...) @smp_mb()
  %115 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %116 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @EFX_EMPTY_COUNT_VALID, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %121 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %113, %99
  br label %123

123:                                              ; preds = %122, %90
  ret void
}

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local i32 @efx_dequeue_buffers(%struct.efx_tx_queue*, i32, i32*, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_tx_queue_stopped(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_device_present(i32) #1

declare dso_local %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
