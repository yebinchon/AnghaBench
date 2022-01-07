; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IXGB_INT_RXT0 = common dso_local global i32 0, align 4
@IXGB_INT_RXDMT0 = common dso_local global i32 0, align 4
@IXGB_INT_TXDW = common dso_local global i32 0, align 4
@IXGB_INT_LSC = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SUN = common dso_local global i64 0, align 8
@IXGB_INT_GPI0 = common dso_local global i32 0, align 4
@IMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_adapter*)* @ixgb_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_irq_enable(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %4 = load i32, i32* @IXGB_INT_RXT0, align 4
  %5 = load i32, i32* @IXGB_INT_RXDMT0, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @IXGB_INT_TXDW, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @IXGB_INT_LSC, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_VENDOR_ID_SUN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @IXGB_INT_GPI0, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* @IMS, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @IXGB_WRITE_REG(%struct.TYPE_3__* %23, i32 %24, i32 %25)
  %27 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %27, i32 0, i32 0
  %29 = call i32 @IXGB_WRITE_FLUSH(%struct.TYPE_3__* %28)
  ret void
}

declare dso_local i32 @IXGB_WRITE_REG(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @IXGB_WRITE_FLUSH(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
