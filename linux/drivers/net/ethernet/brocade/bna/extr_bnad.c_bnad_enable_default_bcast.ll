; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_enable_default_bcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_enable_default_bcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_2__, i32, %struct.bnad_rx_info* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bnad_rx_info = type { i32 }

@bnad_bcast_addr = common dso_local global i32 0, align 4
@bnad_cb_rx_mcast_add = common dso_local global i32 0, align 4
@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnad_enable_default_bcast(%struct.bnad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bnad_rx_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  %7 = load %struct.bnad*, %struct.bnad** %3, align 8
  %8 = getelementptr inbounds %struct.bnad, %struct.bnad* %7, i32 0, i32 2
  %9 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %8, align 8
  %10 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %9, i64 0
  store %struct.bnad_rx_info* %10, %struct.bnad_rx_info** %4, align 8
  %11 = load %struct.bnad*, %struct.bnad** %3, align 8
  %12 = getelementptr inbounds %struct.bnad, %struct.bnad* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @init_completion(i32* %13)
  %15 = load %struct.bnad*, %struct.bnad** %3, align 8
  %16 = getelementptr inbounds %struct.bnad, %struct.bnad* %15, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %4, align 8
  %20 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @bnad_bcast_addr, align 4
  %23 = load i32, i32* @bnad_cb_rx_mcast_add, align 4
  %24 = call i32 @bna_rx_mcast_add(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.bnad*, %struct.bnad** %3, align 8
  %26 = getelementptr inbounds %struct.bnad, %struct.bnad* %25, i32 0, i32 1
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BNA_CB_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.bnad*, %struct.bnad** %3, align 8
  %34 = getelementptr inbounds %struct.bnad, %struct.bnad* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @wait_for_completion(i32* %35)
  br label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %51

40:                                               ; preds = %32
  %41 = load %struct.bnad*, %struct.bnad** %3, align 8
  %42 = getelementptr inbounds %struct.bnad, %struct.bnad* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BNA_CB_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %47, %37
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_rx_mcast_add(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
