; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_rxbd_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_rxbd_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_ring_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.rx_bd = type { i64, i32 }

@RX_DESC_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_ring_struct*, i64)* @bnxt_init_rxbd_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_init_rxbd_pages(%struct.bnxt_ring_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.bnxt_ring_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rx_bd**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_bd*, align 8
  store %struct.bnxt_ring_struct* %0, %struct.bnxt_ring_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rx_bd**
  store %struct.rx_bd** %14, %struct.rx_bd*** %7, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %52, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %15
  %23 = load %struct.rx_bd**, %struct.rx_bd*** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rx_bd*, %struct.rx_bd** %23, i64 %25
  %27 = load %struct.rx_bd*, %struct.rx_bd** %26, align 8
  store %struct.rx_bd* %27, %struct.rx_bd** %9, align 8
  %28 = load %struct.rx_bd*, %struct.rx_bd** %9, align 8
  %29 = icmp ne %struct.rx_bd* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %52

31:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RX_DESC_CNT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @cpu_to_le32(i64 %37)
  %39 = load %struct.rx_bd*, %struct.rx_bd** %9, align 8
  %40 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.rx_bd*, %struct.rx_bd** %9, align 8
  %43 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load %struct.rx_bd*, %struct.rx_bd** %9, align 8
  %48 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %47, i32 1
  store %struct.rx_bd* %48, %struct.rx_bd** %9, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %32

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %15

55:                                               ; preds = %15
  ret void
}

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
