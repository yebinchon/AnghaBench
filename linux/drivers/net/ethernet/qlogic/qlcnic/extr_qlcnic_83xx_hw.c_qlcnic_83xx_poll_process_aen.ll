; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_poll_process_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_poll_process_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_mailbox* }
%struct.qlcnic_mailbox = type { i32, i32 }

@QLC_83XX_MBX_RESPONSE_ARRIVED = common dso_local global i32 0, align 4
@QLCNIC_FW_MBX_CTRL = common dso_local global i32 0, align 4
@QLCNIC_SET_OWNER = common dso_local global i32 0, align 4
@QLCNIC_MBX_ASYNC_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_83xx_poll_process_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_poll_process_aen(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_mailbox*, align 8
  %7 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %8 = load i32, i32* @QLC_83XX_MBX_RESPONSE_ARRIVED, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %12, align 8
  store %struct.qlcnic_mailbox* %13, %struct.qlcnic_mailbox** %6, align 8
  %14 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %14, i32 0, i32 1
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* @QLCNIC_FW_MBX_CTRL, align 4
  %22 = call i32 @QLCRDX(%struct.TYPE_3__* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @QLCNIC_SET_OWNER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %52

28:                                               ; preds = %1
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @QLCNIC_MBX_FW(%struct.TYPE_3__* %31, i32 0)
  %33 = call i32 @readl(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @QLCNIC_MBX_ASYNC_EVENT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %40 = call i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %39)
  br label %51

41:                                               ; preds = %28
  %42 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %6, align 8
  %43 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %6, align 8
  %49 = call i32 @qlcnic_83xx_notify_mbx_response(%struct.qlcnic_mailbox* %48)
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %54 = call i32 @qlcnic_83xx_enable_legacy_msix_mbx_intr(%struct.qlcnic_adapter* %53)
  %55 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %6, align 8
  %56 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %55, i32 0, i32 1
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @QLCRDX(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @QLCNIC_MBX_FW(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_notify_mbx_response(%struct.qlcnic_mailbox*) #1

declare dso_local i32 @qlcnic_83xx_enable_legacy_msix_mbx_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
