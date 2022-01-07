; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_wrback_get_rx_timestamp_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_wrback_get_rx_timestamp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RDES3_RDES1_VALID = common dso_local global i32 0, align 4
@RDES1_TIMESTAMP_AVAILABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @dwmac4_wrback_get_rx_timestamp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwmac4_wrback_get_rx_timestamp_status(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.dma_desc*
  store %struct.dma_desc* %12, %struct.dma_desc** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %16 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load i32, i32* @RDES3_RDES1_VALID, align 4
  %20 = and i32 %18, %19
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %3
  %24 = load %struct.dma_desc*, %struct.dma_desc** %8, align 8
  %25 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load i32, i32* @RDES1_TIMESTAMP_AVAILABLE, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @dwmac4_rx_check_timestamp(i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %59

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 10
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %33, label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %23
  br label %58

58:                                               ; preds = %57, %3
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @likely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %67

66:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dwmac4_rx_check_timestamp(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
