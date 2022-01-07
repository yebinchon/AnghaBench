; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_alloc_intr_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_alloc_intr_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_GET_CONF_INTR = common dso_local global i32 0, align 4
@VMXNET3_IT_AUTO = common dso_local global i32 0, align 4
@VMXNET3_IT_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Using INTx interrupt, #Rx queues: 1.\0A\00", align 1
@VMXNET3_IT_INTX = common dso_local global i32 0, align 4
@VMXNET3_INTR_BUDDYSHARE = common dso_local global i64 0, align 8
@VMXNET3_INTR_TXSHARE = common dso_local global i64 0, align 8
@VMXNET3_IT_MSI = common dso_local global i32 0, align 4
@VMXNET3_LINUX_MIN_MSIX_VECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*)* @vmxnet3_alloc_intr_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_alloc_intr_resources(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca %struct.vmxnet3_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %2, align 8
  %5 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %5, i32 0, i32 6
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %10 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %11 = load i32, i32* @VMXNET3_CMD_GET_CONF_INTR, align 4
  %12 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %9, i32 %10, i32 %11)
  %13 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %14 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %15 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %16, i32 0, i32 6
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 3
  %22 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = ashr i32 %25, 2
  %27 = and i32 %26, 3
  %28 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VMXNET3_IT_AUTO, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load i32, i32* @VMXNET3_IT_MSIX, align 4
  %39 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %43, i32 0, i32 2
  store i32 1, i32* %44, align 4
  %45 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_info(i32* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @VMXNET3_IT_INTX, align 4
  %51 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
