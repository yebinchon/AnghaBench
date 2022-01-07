; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_init_dummy_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_init_dummy_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_4__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NETXEN_HOST_DUMMY_DMA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ERROR: Could not allocate dummy DMA memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CRB_HOST_DUMMY_BUF_ADDR_HI = common dso_local global i32 0, align 4
@CRB_HOST_DUMMY_BUF_ADDR_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_init_dummy_dma(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %7 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @NX_IS_REVISION_P2(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* @NETXEN_HOST_DUMMY_DMA_SIZE, align 4
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32* @pci_alloc_consistent(%struct.TYPE_6__* %17, i32 %18, i64* %21)
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* %22, i32** %25, align 8
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %14
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %14
  %40 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, 32
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %6, align 4
  %48 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %49 = load i32, i32* @CRB_HOST_DUMMY_BUF_ADDR_HI, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @NXWR32(%struct.netxen_adapter* %48, i32 %49, i32 %50)
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %53 = load i32, i32* @CRB_HOST_DUMMY_BUF_ADDR_LO, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @NXWR32(%struct.netxen_adapter* %52, i32 %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %39, %31, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32* @pci_alloc_consistent(%struct.TYPE_6__*, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
