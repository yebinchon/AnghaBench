; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_rx_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_rx_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { %struct.netsec_desc_ring* }
%struct.netsec_desc_ring = type { i32* }

@NETSEC_RING_RX = common dso_local global i64 0, align 8
@DESC_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netsec_priv*, i64, i64)* @netsec_rx_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netsec_rx_fill(%struct.netsec_priv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.netsec_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netsec_desc_ring*, align 8
  %8 = alloca i64, align 8
  store %struct.netsec_priv* %0, %struct.netsec_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %10 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %9, i32 0, i32 0
  %11 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %10, align 8
  %12 = load i64, i64* @NETSEC_RING_RX, align 8
  %13 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %11, i64 %12
  store %struct.netsec_desc_ring* %13, %struct.netsec_desc_ring** %7, align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %20 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %7, align 8
  %23 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i32 @netsec_set_rx_de(%struct.netsec_priv* %19, %struct.netsec_desc_ring* %20, i64 %21, i32* %26)
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @DESC_NUM, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %6, align 8
  br label %15

37:                                               ; preds = %15
  ret void
}

declare dso_local i32 @netsec_set_rx_de(%struct.netsec_priv*, %struct.netsec_desc_ring*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
