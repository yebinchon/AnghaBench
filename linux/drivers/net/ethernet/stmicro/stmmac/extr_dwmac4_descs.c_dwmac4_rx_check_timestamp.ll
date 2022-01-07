; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_rx_check_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_rx_check_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32, i32 }

@RDES3_OWN = common dso_local global i32 0, align 4
@RDES3_CONTEXT_DESCRIPTOR = common dso_local global i32 0, align 4
@RDES3_CONTEXT_DESCRIPTOR_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dwmac4_rx_check_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwmac4_rx_check_timestamp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dma_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.dma_desc*
  store %struct.dma_desc* %11, %struct.dma_desc** %3, align 8
  %12 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %13 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %17 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.dma_desc*, %struct.dma_desc** %3, align 8
  %21 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @RDES3_OWN, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RDES3_CONTEXT_DESCRIPTOR, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @RDES3_CONTEXT_DESCRIPTOR_SHIFT, align 4
  %31 = lshr i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %1
  %38 = phi i1 [ false, %1 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %52

51:                                               ; preds = %45, %42
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
