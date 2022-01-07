; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_irq_rearm_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_irq_rearm_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IXGBE_EIMS_RTX_QUEUE = common dso_local global i32 0, align 4
@IXGBE_EICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_irq_rearm_queues(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %34 [
    i32 133, label %11
    i32 132, label %20
    i32 131, label %20
    i32 130, label %20
    i32 129, label %20
    i32 128, label %20
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @IXGBE_EIMS_RTX_QUEUE, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* @IXGBE_EICS, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_4__* %16, i32 %17, i32 %18)
  br label %35

20:                                               ; preds = %2, %2, %2, %2, %2
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 0
  %24 = call i32 @IXGBE_EICS_EX(i32 0)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_4__* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 0
  %31 = call i32 @IXGBE_EICS_EX(i32 1)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_4__* %30, i32 %31, i32 %32)
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %20, %11
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @IXGBE_EICS_EX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
