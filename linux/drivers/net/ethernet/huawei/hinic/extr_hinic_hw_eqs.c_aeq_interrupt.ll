; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_aeq_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_aeq_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_eq_work = type { i32, %struct.hinic_eq* }
%struct.hinic_eq = type { %struct.hinic_eq_work, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hinic_aeqs = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aeq_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aeq_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hinic_eq_work*, align 8
  %6 = alloca %struct.hinic_eq*, align 8
  %7 = alloca %struct.hinic_aeqs*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hinic_eq*
  store %struct.hinic_eq* %9, %struct.hinic_eq** %6, align 8
  %10 = load %struct.hinic_eq*, %struct.hinic_eq** %6, align 8
  %11 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hinic_eq*, %struct.hinic_eq** %6, align 8
  %14 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @hinic_msix_attr_cnt_clear(i32 %12, i32 %16)
  %18 = load %struct.hinic_eq*, %struct.hinic_eq** %6, align 8
  %19 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %18, i32 0, i32 0
  store %struct.hinic_eq_work* %19, %struct.hinic_eq_work** %5, align 8
  %20 = load %struct.hinic_eq*, %struct.hinic_eq** %6, align 8
  %21 = load %struct.hinic_eq_work*, %struct.hinic_eq_work** %5, align 8
  %22 = getelementptr inbounds %struct.hinic_eq_work, %struct.hinic_eq_work* %21, i32 0, i32 1
  store %struct.hinic_eq* %20, %struct.hinic_eq** %22, align 8
  %23 = load %struct.hinic_eq*, %struct.hinic_eq** %6, align 8
  %24 = call %struct.hinic_aeqs* @aeq_to_aeqs(%struct.hinic_eq* %23)
  store %struct.hinic_aeqs* %24, %struct.hinic_aeqs** %7, align 8
  %25 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %7, align 8
  %26 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hinic_eq_work*, %struct.hinic_eq_work** %5, align 8
  %29 = getelementptr inbounds %struct.hinic_eq_work, %struct.hinic_eq_work* %28, i32 0, i32 0
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local i32 @hinic_msix_attr_cnt_clear(i32, i32) #1

declare dso_local %struct.hinic_aeqs* @aeq_to_aeqs(%struct.hinic_eq*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
