; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_alloc_cont_frag_desc_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_alloc_cont_frag_desc_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.TYPE_4__, %struct.ath10k* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.ath10k = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to alloc fragment desc memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*)* @ath10k_htt_tx_alloc_cont_frag_desc_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_tx_alloc_cont_frag_desc_64(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i64, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %6 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %6, i32 0, i32 2
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  store i64 %20, i64* %5, align 8
  %21 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %26 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @dma_alloc_coherent(i32 %23, i64 %24, i32* %27, i32 %28)
  %30 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %34 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %15
  %39 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %40 = call i32 @ath10k_err(%struct.ath10k* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %15
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %46 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %38, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
