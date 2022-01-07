; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_init_rx_buff_arr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_init_rx_buff_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.wil_rx_buff*, %struct.list_head, %struct.list_head }
%struct.wil_rx_buff = type { i32, i32 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i64)* @wil_init_rx_buff_arr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_init_rx_buff_arr(%struct.wil6210_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wil_rx_buff*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %11 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store %struct.list_head* %12, %struct.list_head** %7, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store %struct.list_head* %15, %struct.list_head** %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %16, 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.wil_rx_buff* @kcalloc(i64 %17, i32 8, i32 %18)
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %21 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.wil_rx_buff* %19, %struct.wil_rx_buff** %22, align 8
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %24 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.wil_rx_buff*, %struct.wil_rx_buff** %25, align 8
  %27 = icmp ne %struct.wil_rx_buff* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %68

31:                                               ; preds = %2
  %32 = load %struct.list_head*, %struct.list_head** %7, align 8
  %33 = call i32 @INIT_LIST_HEAD(%struct.list_head* %32)
  %34 = load %struct.list_head*, %struct.list_head** %8, align 8
  %35 = call i32 @INIT_LIST_HEAD(%struct.list_head* %34)
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %37 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.wil_rx_buff*, %struct.wil_rx_buff** %38, align 8
  store %struct.wil_rx_buff* %39, %struct.wil_rx_buff** %6, align 8
  store i32 1, i32* %9, align 4
  br label %40

40:                                               ; preds = %59, %31
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.wil_rx_buff*, %struct.wil_rx_buff** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.wil_rx_buff, %struct.wil_rx_buff* %46, i64 %48
  %50 = getelementptr inbounds %struct.wil_rx_buff, %struct.wil_rx_buff* %49, i32 0, i32 1
  %51 = load %struct.list_head*, %struct.list_head** %8, align 8
  %52 = call i32 @list_add(i32* %50, %struct.list_head* %51)
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.wil_rx_buff*, %struct.wil_rx_buff** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.wil_rx_buff, %struct.wil_rx_buff* %54, i64 %56
  %58 = getelementptr inbounds %struct.wil_rx_buff, %struct.wil_rx_buff* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %40

62:                                               ; preds = %40
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %66 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.wil_rx_buff* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
