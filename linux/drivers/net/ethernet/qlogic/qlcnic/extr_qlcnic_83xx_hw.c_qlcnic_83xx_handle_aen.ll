; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_handle_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_handle_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.qlcnic_mailbox* }
%struct.qlcnic_mailbox = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@QLC_83XX_MBX_RESPONSE_ARRIVED = common dso_local global i32 0, align 4
@QLCNIC_FW_MBX_CTRL = common dso_local global i32 0, align 4
@QLCNIC_SET_OWNER = common dso_local global i32 0, align 4
@QLCNIC_MBX_ASYNC_EVENT = common dso_local global i32 0, align 4
@QLCNIC_DEF_INT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qlcnic_83xx_handle_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_handle_aen(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlcnic_adapter*, align 8
  %10 = alloca %struct.qlcnic_mailbox*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @QLC_83XX_MBX_RESPONSE_ARRIVED, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.qlcnic_adapter*
  store %struct.qlcnic_adapter* %14, %struct.qlcnic_adapter** %9, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %18, align 8
  store %struct.qlcnic_mailbox* %19, %struct.qlcnic_mailbox** %10, align 8
  %20 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %10, align 8
  %21 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %20, i32 0, i32 1
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* @QLCNIC_FW_MBX_CTRL, align 4
  %28 = call i32 @QLCRDX(%struct.TYPE_5__* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @QLCNIC_SET_OWNER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %64

34:                                               ; preds = %2
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 @QLCNIC_MBX_FW(%struct.TYPE_5__* %37, i32 0)
  %39 = call i32 @readl(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @QLCNIC_MBX_ASYNC_EVENT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %46 = call i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %45)
  br label %63

47:                                               ; preds = %34
  %48 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %10, align 8
  %49 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %10, align 8
  %55 = call i32 @qlcnic_83xx_notify_mbx_response(%struct.qlcnic_mailbox* %54)
  br label %62

56:                                               ; preds = %47
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %58 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %33
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* @QLCNIC_DEF_INT_MASK, align 4
  %69 = call i32 @QLCRDX(%struct.TYPE_5__* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @writel(i32 0, i32 %76)
  %78 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %10, align 8
  %79 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %78, i32 0, i32 1
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %82
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @QLCRDX(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @QLCNIC_MBX_FW(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_notify_mbx_response(%struct.qlcnic_mailbox*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
