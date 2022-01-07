; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i8*, i32, i32, i8*, i32, i8*, i32, i8*, i8* }

@MAX_RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftgmac100*)* @ftgmac100_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_alloc_rings(%struct.ftgmac100* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftgmac100*, align 8
  store %struct.ftgmac100* %0, %struct.ftgmac100** %3, align 8
  %4 = load i32, i32* @MAX_RX_QUEUE_ENTRIES, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kcalloc(i32 %4, i32 8, i32 %5)
  %7 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %8 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %7, i32 0, i32 8
  store i8* %6, i8** %8, align 8
  %9 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %10 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %9, i32 0, i32 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load i32, i32* @MAX_TX_QUEUE_ENTRIES, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kcalloc(i32 %17, i32 8, i32 %18)
  %20 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %21 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %23 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %22, i32 0, i32 7
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %90

29:                                               ; preds = %16
  %30 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %31 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAX_RX_QUEUE_ENTRIES, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %38 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %37, i32 0, i32 6
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @dma_alloc_coherent(i32 %32, i32 %36, i32* %38, i32 %39)
  %41 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %42 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %44 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %43, i32 0, i32 5
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %90

50:                                               ; preds = %29
  %51 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %52 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MAX_TX_QUEUE_ENTRIES, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %59 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %58, i32 0, i32 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @dma_alloc_coherent(i32 %53, i32 %57, i32* %59, i32 %60)
  %62 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %63 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %65 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %50
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %90

71:                                               ; preds = %50
  %72 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %73 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RX_BUF_SIZE, align 4
  %76 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %77 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %76, i32 0, i32 1
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @dma_alloc_coherent(i32 %74, i32 %75, i32* %77, i32 %78)
  %80 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %81 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %83 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %71
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %86, %68, %47, %26, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
