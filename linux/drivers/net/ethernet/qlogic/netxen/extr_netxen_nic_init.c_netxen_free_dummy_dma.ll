; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_free_dummy_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_free_dummy_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@NETXEN_DMA_WATCHDOG_CTRL = common dso_local global i32 0, align 4
@NETXEN_HOST_DUMMY_DMA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"dma_watchdog_shutdown failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netxen_free_dummy_dma(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  store i32 100, i32* %3, align 4
  %5 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @NX_IS_REVISION_P2(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %73

19:                                               ; preds = %12
  %20 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %21 = load i32, i32* @NETXEN_DMA_WATCHDOG_CTRL, align 4
  %22 = call i32 @NXRD32(%struct.netxen_adapter* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %28 = load i32, i32* @NETXEN_DMA_WATCHDOG_CTRL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, 2
  %31 = call i32 @NXWR32(%struct.netxen_adapter* %27, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %45, %26
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = call i32 @msleep(i32 50)
  %38 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %39 = load i32, i32* @NETXEN_DMA_WATCHDOG_CTRL, align 4
  %40 = call i32 @NXRD32(%struct.netxen_adapter* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %46

45:                                               ; preds = %36
  br label %32

46:                                               ; preds = %44, %32
  br label %47

47:                                               ; preds = %46, %19
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* @NETXEN_HOST_DUMMY_DMA_SIZE, align 4
  %55 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pci_free_consistent(%struct.TYPE_6__* %53, i32 %54, i32* %58, i32 %62)
  %64 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %73

67:                                               ; preds = %47
  %68 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %11, %18, %67, %50
  ret void
}

declare dso_local i32 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
