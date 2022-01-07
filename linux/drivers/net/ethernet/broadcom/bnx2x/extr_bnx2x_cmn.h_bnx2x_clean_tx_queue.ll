; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_clean_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_clean_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_fp_txdata = type { i32, i32, i32 }

@.str = private unnamed_addr constant [83 x i8] c"timeout waiting for queue[%d]: txdata->tx_pkt_prod(%d) != txdata->tx_pkt_cons(%d)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_fp_txdata*)* @bnx2x_clean_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_clean_tx_queue(%struct.bnx2x* %0, %struct.bnx2x_fp_txdata* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_fp_txdata*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_fp_txdata* %1, %struct.bnx2x_fp_txdata** %4, align 8
  store i32 1000, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %8 = call i64 @bnx2x_has_tx_work_unload(%struct.bnx2x_fp_txdata* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %18 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bnx2x_fp_txdata*, %struct.bnx2x_fp_txdata** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_fp_txdata, %struct.bnx2x_fp_txdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22)
  br label %28

24:                                               ; preds = %10
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %5, align 4
  %27 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %6

28:                                               ; preds = %13, %6
  ret i32 0
}

declare dso_local i64 @bnx2x_has_tx_work_unload(%struct.bnx2x_fp_txdata*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
