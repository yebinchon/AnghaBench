; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_write_eitr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_write_eitr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { i32, i32, %struct.ixgbe_adapter* }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_MAX_EITR = common dso_local global i32 0, align 4
@IXGBE_EITR_CNT_WDIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_write_eitr(%struct.ixgbe_q_vector* %0) #0 {
  %2 = alloca %struct.ixgbe_q_vector*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %2, align 8
  %7 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %7, i32 0, i32 2
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %3, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %4, align 8
  %12 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IXGBE_MAX_EITR, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %34 [
    i32 133, label %25
    i32 132, label %30
    i32 131, label %30
    i32 130, label %30
    i32 129, label %30
    i32 128, label %30
  ]

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %35

30:                                               ; preds = %1, %1, %1, %1, %1
  %31 = load i32, i32* @IXGBE_EITR_CNT_WDIS, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %30, %25
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @IXGBE_EITR(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %36, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_EITR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
