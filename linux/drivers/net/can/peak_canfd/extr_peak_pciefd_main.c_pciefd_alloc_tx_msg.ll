; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_alloc_tx_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_alloc_tx_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { i32 }
%struct.pciefd_can = type { i32, i32, i32, %struct.pciefd_page* }
%struct.pciefd_page = type { i32, i32, i32, %struct.pciefd_tx_link* }
%struct.pciefd_tx_link = type { i8*, i8*, i8*, i8* }

@PCIEFD_TX_PAGE_COUNT = common dso_local global i32 0, align 4
@CANFD_MSG_LNK_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.peak_canfd_priv*, i32, i32*)* @pciefd_alloc_tx_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pciefd_alloc_tx_msg(%struct.peak_canfd_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.peak_canfd_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pciefd_can*, align 8
  %9 = alloca %struct.pciefd_page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pciefd_tx_link*, align 8
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %5, align 8
  %14 = bitcast %struct.peak_canfd_priv* %13 to %struct.pciefd_can*
  store %struct.pciefd_can* %14, %struct.pciefd_can** %8, align 8
  %15 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %16 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %15, i32 0, i32 3
  %17 = load %struct.pciefd_page*, %struct.pciefd_page** %16, align 8
  %18 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %19 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %17, i64 %21
  store %struct.pciefd_page* %22, %struct.pciefd_page** %9, align 8
  %23 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %24 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %23, i32 0, i32 2
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %28 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %33 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %3
  %37 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %38 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %43 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %42, i32 0, i32 2
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  store i8* null, i8** %4, align 8
  br label %127

46:                                               ; preds = %36
  %47 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %48 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %52 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %51, i32 0, i32 3
  %53 = load %struct.pciefd_tx_link*, %struct.pciefd_tx_link** %52, align 8
  %54 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %55 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pciefd_tx_link, %struct.pciefd_tx_link* %53, i64 %57
  store %struct.pciefd_tx_link* %58, %struct.pciefd_tx_link** %12, align 8
  %59 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %60 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @PCIEFD_TX_PAGE_COUNT, align 4
  %64 = srem i32 %62, %63
  %65 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %66 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %68 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %67, i32 0, i32 3
  %69 = load %struct.pciefd_page*, %struct.pciefd_page** %68, align 8
  %70 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %71 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %69, i64 %73
  store %struct.pciefd_page* %74, %struct.pciefd_page** %9, align 8
  %75 = call i8* @cpu_to_le16(i32 32)
  %76 = load %struct.pciefd_tx_link*, %struct.pciefd_tx_link** %12, align 8
  %77 = getelementptr inbounds %struct.pciefd_tx_link, %struct.pciefd_tx_link* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @CANFD_MSG_LNK_TX, align 4
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = load %struct.pciefd_tx_link*, %struct.pciefd_tx_link** %12, align 8
  %81 = getelementptr inbounds %struct.pciefd_tx_link, %struct.pciefd_tx_link* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %83 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.pciefd_tx_link*, %struct.pciefd_tx_link** %12, align 8
  %87 = getelementptr inbounds %struct.pciefd_tx_link, %struct.pciefd_tx_link* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.pciefd_tx_link*, %struct.pciefd_tx_link** %12, align 8
  %89 = getelementptr inbounds %struct.pciefd_tx_link, %struct.pciefd_tx_link* %88, i32 0, i32 0
  store i8* null, i8** %89, align 8
  %90 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %91 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %46, %3
  %93 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %94 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %97 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.pciefd_can*, %struct.pciefd_can** %8, align 8
  %102 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %101, i32 0, i32 2
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %106 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %105, i32 0, i32 3
  %107 = load %struct.pciefd_tx_link*, %struct.pciefd_tx_link** %106, align 8
  %108 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %109 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.pciefd_tx_link, %struct.pciefd_tx_link* %107, i64 %111
  %113 = bitcast %struct.pciefd_tx_link* %112 to i8*
  store i8* %113, i8** %11, align 8
  %114 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %115 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.pciefd_page*, %struct.pciefd_page** %9, align 8
  %118 = getelementptr inbounds %struct.pciefd_page, %struct.pciefd_page* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %119, %120
  %122 = sub nsw i32 %116, %121
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %122
  store i32 %125, i32* %123, align 4
  %126 = load i8*, i8** %11, align 8
  store i8* %126, i8** %4, align 8
  br label %127

127:                                              ; preds = %92, %41
  %128 = load i8*, i8** %4, align 8
  ret i8* %128
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
