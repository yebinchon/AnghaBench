; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_mem_rx_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_mem_rx_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__*, %struct.tg3_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.tg3_napi = type { i32, i32, i32 }

@ENABLE_RSS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_mem_rx_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_mem_rx_acquire(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg3_napi*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.tg3*, %struct.tg3** %3, align 8
  %11 = load i32, i32* @ENABLE_RSS, align 4
  %12 = call i64 @tg3_flag(%struct.tg3* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %63, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %18
  %23 = load %struct.tg3*, %struct.tg3** %3, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 2
  %25 = load %struct.tg3_napi*, %struct.tg3_napi** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %25, i64 %27
  store %struct.tg3_napi* %28, %struct.tg3_napi** %6, align 8
  %29 = load %struct.tg3*, %struct.tg3** %3, align 8
  %30 = load %struct.tg3_napi*, %struct.tg3_napi** %6, align 8
  %31 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %30, i32 0, i32 2
  %32 = call i64 @tg3_rx_prodring_init(%struct.tg3* %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %67

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.tg3*, %struct.tg3** %3, align 8
  %40 = load i32, i32* @ENABLE_RSS, align 4
  %41 = call i64 @tg3_flag(%struct.tg3* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %63

44:                                               ; preds = %38, %35
  %45 = load %struct.tg3*, %struct.tg3** %3, align 8
  %46 = getelementptr inbounds %struct.tg3, %struct.tg3* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.tg3*, %struct.tg3** %3, align 8
  %50 = call i32 @TG3_RX_RCB_RING_BYTES(%struct.tg3* %49)
  %51 = load %struct.tg3_napi*, %struct.tg3_napi** %6, align 8
  %52 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %51, i32 0, i32 1
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @dma_alloc_coherent(i32* %48, i32 %50, i32* %52, i32 %53)
  %55 = load %struct.tg3_napi*, %struct.tg3_napi** %6, align 8
  %56 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.tg3_napi*, %struct.tg3_napi** %6, align 8
  %58 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %44
  br label %67

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %18

66:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %72

67:                                               ; preds = %61, %34
  %68 = load %struct.tg3*, %struct.tg3** %3, align 8
  %69 = call i32 @tg3_mem_rx_release(%struct.tg3* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %66
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_rx_prodring_init(%struct.tg3*, i32*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @TG3_RX_RCB_RING_BYTES(%struct.tg3*) #1

declare dso_local i32 @tg3_mem_rx_release(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
