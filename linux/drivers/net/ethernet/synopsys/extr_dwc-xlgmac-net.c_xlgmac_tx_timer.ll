; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_tx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_tx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { i64, i32, %struct.napi_struct, %struct.xlgmac_pdata* }
%struct.napi_struct = type { i32 }
%struct.xlgmac_pdata = type { %struct.TYPE_2__, i64, %struct.napi_struct }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@tx_timer = common dso_local global i32 0, align 4
@channel = common dso_local global %struct.xlgmac_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @xlgmac_tx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_tx_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca %struct.xlgmac_pdata*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %7 = ptrtoint %struct.xlgmac_channel* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @tx_timer, align 4
  %10 = call %struct.xlgmac_channel* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.xlgmac_channel* %10, %struct.xlgmac_channel** %3, align 8
  %11 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %12 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %11, i32 0, i32 3
  %13 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %12, align 8
  store %struct.xlgmac_pdata* %13, %struct.xlgmac_pdata** %4, align 8
  %14 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %15 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %20 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %19, i32 0, i32 2
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %22, i32 0, i32 2
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi %struct.napi_struct* [ %20, %18 ], [ %23, %21 ]
  store %struct.napi_struct* %25, %struct.napi_struct** %5, align 8
  %26 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %27 = call i64 @napi_schedule_prep(%struct.napi_struct* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %31 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %36 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @disable_irq_nosync(i32 %37)
  br label %42

39:                                               ; preds = %29
  %40 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %41 = call i32 @xlgmac_disable_rx_tx_ints(%struct.xlgmac_pdata* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %44 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %49 = call i32 @__napi_schedule(%struct.napi_struct* %48)
  br label %50

50:                                               ; preds = %42, %24
  %51 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %52 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  ret void
}

declare dso_local %struct.xlgmac_channel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @napi_schedule_prep(%struct.napi_struct*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @xlgmac_disable_rx_tx_ints(%struct.xlgmac_pdata*) #1

declare dso_local i32 @__napi_schedule(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
