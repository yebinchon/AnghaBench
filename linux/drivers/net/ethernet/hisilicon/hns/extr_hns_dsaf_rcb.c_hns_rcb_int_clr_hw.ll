; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_int_clr_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_int_clr_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_queue = type { i32 }

@RCB_INT_FLAG_TX = common dso_local global i32 0, align 4
@RCB_RING_INTSTS_TX_RING_REG = common dso_local global i32 0, align 4
@RCB_RING_INTSTS_TX_OVERTIME_REG = common dso_local global i32 0, align 4
@RCB_INT_FLAG_RX = common dso_local global i32 0, align 4
@RCB_RING_INTSTS_RX_RING_REG = common dso_local global i32 0, align 4
@RCB_RING_INTSTS_RX_OVERTIME_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_rcb_int_clr_hw(%struct.hnae_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.hnae_queue* %0, %struct.hnae_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RCB_INT_FLAG_TX, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.hnae_queue*, %struct.hnae_queue** %3, align 8
  %11 = load i32, i32* @RCB_RING_INTSTS_TX_RING_REG, align 4
  %12 = call i32 @dsaf_write_dev(%struct.hnae_queue* %10, i32 %11, i32 1)
  %13 = load %struct.hnae_queue*, %struct.hnae_queue** %3, align 8
  %14 = load i32, i32* @RCB_RING_INTSTS_TX_OVERTIME_REG, align 4
  %15 = call i32 @dsaf_write_dev(%struct.hnae_queue* %13, i32 %14, i32 1)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RCB_INT_FLAG_RX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.hnae_queue*, %struct.hnae_queue** %3, align 8
  %23 = load i32, i32* @RCB_RING_INTSTS_RX_RING_REG, align 4
  %24 = call i32 @dsaf_write_dev(%struct.hnae_queue* %22, i32 %23, i32 1)
  %25 = load %struct.hnae_queue*, %struct.hnae_queue** %3, align 8
  %26 = load i32, i32* @RCB_RING_INTSTS_RX_OVERTIME_REG, align 4
  %27 = call i32 @dsaf_write_dev(%struct.hnae_queue* %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @dsaf_write_dev(%struct.hnae_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
