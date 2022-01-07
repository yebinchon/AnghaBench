; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_free_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i32, i32*, i32, i32*, i32, i32*, i32, i32, i32 }

@MAX_RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@MAX_TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftgmac100*)* @ftgmac100_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_free_rings(%struct.ftgmac100* %0) #0 {
  %2 = alloca %struct.ftgmac100*, align 8
  store %struct.ftgmac100* %0, %struct.ftgmac100** %2, align 8
  %3 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %4 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @kfree(i32 %5)
  %7 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %8 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kfree(i32 %9)
  %11 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %12 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %17 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_RX_QUEUE_ENTRIES, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %24 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %27 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_free_coherent(i32 %18, i32 %22, i32* %25, i32 %28)
  br label %30

30:                                               ; preds = %15, %1
  %31 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %32 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %31, i32 0, i32 5
  store i32* null, i32** %32, align 8
  %33 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %34 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %39 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_TX_QUEUE_ENTRIES, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %46 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %49 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dma_free_coherent(i32 %40, i32 %44, i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %37, %30
  %53 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %54 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %56 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %61 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RX_BUF_SIZE, align 4
  %64 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %65 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %68 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dma_free_coherent(i32 %62, i32 %63, i32* %66, i32 %69)
  br label %71

71:                                               ; preds = %59, %52
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
