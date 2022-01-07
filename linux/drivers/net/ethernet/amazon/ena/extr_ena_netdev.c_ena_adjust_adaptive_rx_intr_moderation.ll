; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_adjust_adaptive_rx_intr_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_adjust_adaptive_rx_intr_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_napi = type { i32, %struct.ena_ring* }
%struct.ena_ring = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dim_sample = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_napi*)* @ena_adjust_adaptive_rx_intr_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_adjust_adaptive_rx_intr_moderation(%struct.ena_napi* %0) #0 {
  %2 = alloca %struct.ena_napi*, align 8
  %3 = alloca %struct.dim_sample, align 4
  %4 = alloca %struct.ena_ring*, align 8
  store %struct.ena_napi* %0, %struct.ena_napi** %2, align 8
  %5 = load %struct.ena_napi*, %struct.ena_napi** %2, align 8
  %6 = getelementptr inbounds %struct.ena_napi, %struct.ena_napi* %5, i32 0, i32 1
  %7 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  store %struct.ena_ring* %7, %struct.ena_ring** %4, align 8
  %8 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %9 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %15 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %19 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %22 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %26 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dim_update_sample(i32 %20, i32 %24, i32 %28, %struct.dim_sample* %3)
  %30 = load %struct.ena_napi*, %struct.ena_napi** %2, align 8
  %31 = getelementptr inbounds %struct.ena_napi, %struct.ena_napi* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.dim_sample, %struct.dim_sample* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @net_dim(i32* %31, i32 %33)
  %35 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %36 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @dim_update_sample(i32, i32, i32, %struct.dim_sample*) #1

declare dso_local i32 @net_dim(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
