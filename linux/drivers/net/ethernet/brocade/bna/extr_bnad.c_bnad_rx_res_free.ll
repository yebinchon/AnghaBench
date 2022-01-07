; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rx_res_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_rx_res_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_res_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BNA_RX_RES_T_MAX = common dso_local global i32 0, align 4
@BNA_RES_T_MEM = common dso_local global i64 0, align 8
@BNA_RES_T_INTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_res_info*)* @bnad_rx_res_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_rx_res_free(%struct.bnad* %0, %struct.bna_res_info* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_res_info*, align 8
  %5 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_res_info* %1, %struct.bna_res_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %48, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BNA_RX_RES_T_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %11, i64 %13
  %15 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BNA_RES_T_MEM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.bnad*, %struct.bnad** %3, align 8
  %21 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %21, i64 %23
  %25 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @bnad_mem_free(%struct.bnad* %20, i32* %26)
  br label %47

28:                                               ; preds = %10
  %29 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %29, i64 %31
  %33 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BNA_RES_T_INTR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.bnad*, %struct.bnad** %3, align 8
  %39 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %39, i64 %41
  %43 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @bnad_txrx_irq_free(%struct.bnad* %38, i32* %44)
  br label %46

46:                                               ; preds = %37, %28
  br label %47

47:                                               ; preds = %46, %19
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %6

51:                                               ; preds = %6
  ret void
}

declare dso_local i32 @bnad_mem_free(%struct.bnad*, i32*) #1

declare dso_local i32 @bnad_txrx_irq_free(%struct.bnad*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
