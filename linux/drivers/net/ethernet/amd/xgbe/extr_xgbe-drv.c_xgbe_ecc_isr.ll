; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_ecc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_ecc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xgbe_ecc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_ecc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xgbe_prv_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.xgbe_prv_data*
  store %struct.xgbe_prv_data* %7, %struct.xgbe_prv_data** %5, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 0
  %15 = call i32 @tasklet_schedule(i32* %14)
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %18 = ptrtoint %struct.xgbe_prv_data* %17 to i64
  %19 = call i32 @xgbe_ecc_isr_task(i64 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %21
}

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @xgbe_ecc_isr_task(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
