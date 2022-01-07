; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_INT = common dso_local global i32 0, align 4
@XP_INT_REISSUE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_an73_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an73_isr(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %3 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %4 = call i32 @xgbe_an73_disable_interrupts(%struct.xgbe_prv_data* %3)
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = load i32, i32* @MDIO_MMD_AN, align 4
  %7 = load i32, i32* @MDIO_AN_INT, align 4
  %8 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %5, i32 %6, i32 %7)
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = load i32, i32* @MDIO_MMD_AN, align 4
  %18 = load i32, i32* @MDIO_AN_INT, align 4
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = xor i32 %21, -1
  %23 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %16, i32 %17, i32 %18, i32 %22)
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %28 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %27, i32 0, i32 2
  %29 = call i32 @queue_work(i32 %26, i32* %28)
  br label %44

30:                                               ; preds = %1
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %32 = call i32 @xgbe_an73_enable_interrupts(%struct.xgbe_prv_data* %31)
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %41 = load i32, i32* @XP_INT_REISSUE_EN, align 4
  %42 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %40, i32 %41, i32 8)
  br label %43

43:                                               ; preds = %39, %30
  br label %44

44:                                               ; preds = %43, %15
  ret void
}

declare dso_local i32 @xgbe_an73_disable_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @xgbe_an73_enable_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XP_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
