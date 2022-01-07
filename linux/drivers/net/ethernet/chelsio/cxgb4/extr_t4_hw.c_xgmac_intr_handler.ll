; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_xgmac_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_xgmac_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XGMAC_PORT_INT_CAUSE_A = common dso_local global i32 0, align 4
@MAC_PORT_INT_CAUSE_A = common dso_local global i32 0, align 4
@TXFIFO_PRTY_ERR_F = common dso_local global i32 0, align 4
@RXFIFO_PRTY_ERR_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"XGMAC %d Tx FIFO parity error\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"XGMAC %d Rx FIFO parity error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @xgmac_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgmac_intr_handler(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @is_t4(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @XGMAC_PORT_INT_CAUSE_A, align 4
  %16 = call i32 @PORT_REG(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAC_PORT_INT_CAUSE_A, align 4
  %20 = call i32 @T5_PORT_REG(i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @t4_read_reg(%struct.adapter* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @TXFIFO_PRTY_ERR_F, align 4
  %26 = load i32, i32* @RXFIFO_PRTY_ERR_F, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %64

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TXFIFO_PRTY_ERR_F, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_alert(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RXFIFO_PRTY_ERR_F, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dev_alert(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @XGMAC_PORT_INT_CAUSE_A, align 4
  %59 = call i32 @PORT_REG(i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @t4_write_reg(%struct.adapter* %56, i32 %59, i32 %60)
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = call i32 @t4_fatal_err(%struct.adapter* %62)
  br label %64

64:                                               ; preds = %55, %32
  ret void
}

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @PORT_REG(i32, i32) #1

declare dso_local i32 @T5_PORT_REG(i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @dev_alert(i32, i8*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_fatal_err(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
