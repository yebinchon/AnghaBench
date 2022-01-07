; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_get_rx_timestamp_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_get_rx_timestamp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_extended_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dma_desc = type { i32, i32 }

@RDES0_IPC_CSUM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @enh_desc_get_rx_timestamp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enh_desc_get_rx_timestamp_status(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dma_extended_desc*, align 8
  %9 = alloca %struct.dma_desc*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.dma_extended_desc*
  store %struct.dma_extended_desc* %14, %struct.dma_extended_desc** %8, align 8
  %15 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %8, align 8
  %16 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = load i32, i32* @RDES0_IPC_CSUM_ERROR, align 4
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 7
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.dma_desc*
  store %struct.dma_desc* %25, %struct.dma_desc** %9, align 8
  %26 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %27 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.dma_desc*, %struct.dma_desc** %9, align 8
  %33 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %39

38:                                               ; preds = %31, %23
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37, %12
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
