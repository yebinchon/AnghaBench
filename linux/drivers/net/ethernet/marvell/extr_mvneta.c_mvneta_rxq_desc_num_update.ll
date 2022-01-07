; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_desc_num_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_desc_num_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }
%struct.mvneta_rx_queue = type { i32 }

@MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_rx_queue*, i32, i32)* @mvneta_rxq_desc_num_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_rxq_desc_num_update(%struct.mvneta_port* %0, %struct.mvneta_rx_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mvneta_port*, align 8
  %6 = alloca %struct.mvneta_rx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %5, align 8
  store %struct.mvneta_rx_queue* %1, %struct.mvneta_rx_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 255
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %13, 255
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %22 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %6, align 8
  %23 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MVNETA_RXQ_STATUS_UPDATE_REG(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @mvreg_write(%struct.mvneta_port* %21, i32 %25, i32 %26)
  br label %69

28:                                               ; preds = %12, %4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ true, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %69

37:                                               ; preds = %35
  %38 = load i32, i32* %7, align 4
  %39 = icmp sle i32 %38, 255
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %45

42:                                               ; preds = %37
  store i32 255, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 255
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %46, 255
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %61

54:                                               ; preds = %45
  %55 = load i32, i32* @MVNETA_RXQ_ADD_NON_OCCUPIED_SHIFT, align 4
  %56 = shl i32 255, %55
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 255
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %63 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %6, align 8
  %64 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MVNETA_RXQ_STATUS_UPDATE_REG(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @mvreg_write(%struct.mvneta_port* %62, i32 %66, i32 %67)
  br label %29

69:                                               ; preds = %15, %35
  ret void
}

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @MVNETA_RXQ_STATUS_UPDATE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
