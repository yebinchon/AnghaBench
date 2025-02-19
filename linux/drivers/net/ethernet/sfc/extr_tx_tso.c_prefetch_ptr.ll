; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_prefetch_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_prefetch_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*)* @prefetch_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefetch_ptr(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %5 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %6 = call i32 @efx_tx_queue_get_insert_index(%struct.efx_tx_queue* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @prefetch(i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 128
  %18 = call i32 @prefetch(i8* %17)
  %19 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %20 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @prefetch(i8* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 128
  %33 = call i32 @prefetch(i8* %32)
  ret void
}

declare dso_local i32 @efx_tx_queue_get_insert_index(%struct.efx_tx_queue*) #1

declare dso_local i32 @prefetch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
