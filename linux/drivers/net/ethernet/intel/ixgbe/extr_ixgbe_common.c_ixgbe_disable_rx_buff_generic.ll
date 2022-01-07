; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_disable_rx_buff_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_disable_rx_buff_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_SECRXCTRL = common dso_local global i32 0, align 4
@IXGBE_SECRXCTRL_RX_DIS = common dso_local global i32 0, align 4
@IXGBE_SECRXSTAT = common dso_local global i32 0, align 4
@IXGBE_SECRXSTAT_SECRX_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Rx unit being enabled before security path fully disabled. Continuing with init.\0A\00", align 1
@IXGBE_MAX_SECRX_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_disable_rx_buff_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = load i32, i32* @IXGBE_SECRXCTRL, align 4
  %7 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @IXGBE_SECRXCTRL_RX_DIS, align 4
  %9 = load i32, i32* %4, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = load i32, i32* @IXGBE_SECRXCTRL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %11, i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 40
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = load i32, i32* @IXGBE_SECRXSTAT, align 4
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IXGBE_SECRXSTAT_SECRX_RDY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %33

27:                                               ; preds = %18
  %28 = call i32 @udelay(i32 1000)
  br label %29

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %15

33:                                               ; preds = %26, %15
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 40
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = call i32 @hw_dbg(%struct.ixgbe_hw* %37, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  ret i32 0
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
