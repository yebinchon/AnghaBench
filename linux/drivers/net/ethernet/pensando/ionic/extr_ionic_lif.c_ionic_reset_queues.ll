; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_reset_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_reset_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, i32 }

@IONIC_LIF_QUEUE_RESET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_reset_queues(%struct.ionic_lif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %7 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @netif_trans_update(i32 %8)
  %10 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %11 = load i32, i32* @IONIC_LIF_QUEUE_RESET, align 4
  %12 = call i32 @ionic_wait_for_bit(%struct.ionic_lif* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %19 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netif_running(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %26 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ionic_stop(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %37 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ionic_open(i32 %38)
  br label %40

40:                                               ; preds = %35, %32, %29
  %41 = load i32, i32* @IONIC_LIF_QUEUE_RESET, align 4
  %42 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %43 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clear_bit(i32 %41, i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %40, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @netif_trans_update(i32) #1

declare dso_local i32 @ionic_wait_for_bit(%struct.ionic_lif*, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @ionic_stop(i32) #1

declare dso_local i32 @ionic_open(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
