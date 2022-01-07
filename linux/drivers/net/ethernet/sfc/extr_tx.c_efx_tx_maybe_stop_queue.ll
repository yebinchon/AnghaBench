; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_tx_maybe_stop_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx.c_efx_tx_maybe_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i8*, i8*, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*)* @efx_tx_maybe_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_tx_maybe_stop_queue(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %6 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %7 = call %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue* %6)
  store %struct.efx_tx_queue* %7, %struct.efx_tx_queue** %3, align 8
  %8 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %9 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %8, i32 0, i32 4
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %4, align 8
  %11 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %12 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %15 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = ptrtoint i8* %13 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %25 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %23 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @max(i8* %20, i8* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %111

41:                                               ; preds = %1
  %42 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %43 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @netif_tx_stop_queue(i32 %44)
  %46 = call i32 (...) @smp_mb()
  %47 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %48 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @READ_ONCE(i32 %49)
  %51 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %52 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %54 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @READ_ONCE(i32 %55)
  %57 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %58 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %60 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %63 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %61 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %70 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %73 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %71 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @max(i8* %68, i8* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %82 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp uge i32 %80, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %89 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ult i32 %87, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @likely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %41
  %96 = call i32 (...) @smp_mb()
  %97 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %98 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i64 @likely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %107 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @netif_tx_start_queue(i32 %108)
  br label %110

110:                                              ; preds = %105, %95
  br label %111

111:                                              ; preds = %40, %110, %41
  ret void
}

declare dso_local %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue*) #1

declare dso_local i32 @max(i8*, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local i32 @netif_tx_start_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
