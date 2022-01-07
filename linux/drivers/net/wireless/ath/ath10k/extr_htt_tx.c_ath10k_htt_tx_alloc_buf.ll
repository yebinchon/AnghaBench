; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.ath10k* }
%struct.ath10k = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to alloc cont tx buffer: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to alloc cont frag desc: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to alloc txq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to alloc txdone fifo: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*)* @ath10k_htt_tx_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_tx_alloc_buf(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %6 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %6, i32 0, i32 0
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %4, align 8
  %9 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %10 = call i32 @ath10k_htt_alloc_txbuff(%struct.ath10k_htt* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ath10k_err(%struct.ath10k* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %20 = call i32 @ath10k_htt_alloc_frag_desc(%struct.ath10k_htt* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ath10k_err(%struct.ath10k* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %52

27:                                               ; preds = %18
  %28 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %29 = call i32 @ath10k_htt_tx_alloc_txq(%struct.ath10k_htt* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ath10k_err(%struct.ath10k* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %49

36:                                               ; preds = %27
  %37 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %38 = call i32 @ath10k_htt_tx_alloc_txdone_fifo(%struct.ath10k_htt* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ath10k_err(%struct.ath10k* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %56

46:                                               ; preds = %41
  %47 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %48 = call i32 @ath10k_htt_tx_free_txq(%struct.ath10k_htt* %47)
  br label %49

49:                                               ; preds = %46, %32
  %50 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %51 = call i32 @ath10k_htt_free_frag_desc(%struct.ath10k_htt* %50)
  br label %52

52:                                               ; preds = %49, %23
  %53 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %54 = call i32 @ath10k_htt_free_txbuff(%struct.ath10k_htt* %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %45, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ath10k_htt_alloc_txbuff(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_htt_alloc_frag_desc(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_tx_alloc_txq(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_tx_alloc_txdone_fifo(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_tx_free_txq(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_free_frag_desc(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_free_txbuff(%struct.ath10k_htt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
