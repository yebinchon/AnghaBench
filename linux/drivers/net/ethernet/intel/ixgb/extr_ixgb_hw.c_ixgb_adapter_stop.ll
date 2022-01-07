; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_adapter_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_adapter_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Exiting because the adapter is already stopped!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@IMC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@IXGB_RCTL_RXEN = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@IXGB_TCTL_TXEN = common dso_local global i32 0, align 4
@IXGB_DELAY_BEFORE_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@ICR = common dso_local global i32 0, align 4
@IXGB_CTRL0_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgb_adapter_stop(%struct.ixgb_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgb_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %3, align 8
  %6 = call i32 (...) @ENTER()
  %7 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %18 = load i32, i32* @IMC, align 4
  %19 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %17, i32 %18, i32 -1)
  %20 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %21 = load i32, i32* @RCTL, align 4
  %22 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %23 = load i32, i32* @RCTL, align 4
  %24 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %22, i32 %23)
  %25 = load i32, i32* @IXGB_RCTL_RXEN, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %20, i32 %21, i32 %27)
  %29 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %30 = load i32, i32* @TCTL, align 4
  %31 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %32 = load i32, i32* @TCTL, align 4
  %33 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %31, i32 %32)
  %34 = load i32, i32* @IXGB_TCTL_TXEN, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %29, i32 %30, i32 %36)
  %38 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %39 = call i32 @IXGB_WRITE_FLUSH(%struct.ixgb_hw* %38)
  %40 = load i32, i32* @IXGB_DELAY_BEFORE_RESET, align 4
  %41 = call i32 @msleep(i32 %40)
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %44 = call i32 @ixgb_mac_reset(%struct.ixgb_hw* %43)
  store i32 %44, i32* %4, align 4
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %47 = load i32, i32* @IMC, align 4
  %48 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %46, i32 %47, i32 -1)
  %49 = load %struct.ixgb_hw*, %struct.ixgb_hw** %3, align 8
  %50 = load i32, i32* @ICR, align 4
  %51 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IXGB_CTRL0_RST, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %13, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @IXGB_WRITE_FLUSH(%struct.ixgb_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ixgb_mac_reset(%struct.ixgb_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
