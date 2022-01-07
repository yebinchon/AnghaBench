; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_rx_readfifo_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_rx_readfifo_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@SMSC911X_SWAP_FIFO = common dso_local global i32 0, align 4
@RX_DATA_FIFO = common dso_local global i32 0, align 4
@SMSC911X_USE_32BIT = common dso_local global i32 0, align 4
@SMSC911X_USE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*, i32*, i32)* @smsc911x_rx_readfifo_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_rx_readfifo_shift(%struct.smsc911x_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %9 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %13 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SMSC911X_SWAP_FIFO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %26 = load i32, i32* @RX_DATA_FIFO, align 4
  %27 = call i32 @__smsc911x_reg_read_shift(%struct.smsc911x_data* %25, i32 %26)
  %28 = call i32 @swab32(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %20

31:                                               ; preds = %20
  br label %73

32:                                               ; preds = %3
  %33 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %34 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SMSC911X_USE_32BIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %42 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %45 = load i32, i32* @RX_DATA_FIFO, align 4
  %46 = call i64 @__smsc_shift(%struct.smsc911x_data* %44, i32 %45)
  %47 = add nsw i64 %43, %46
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ioread32_rep(i64 %47, i32* %48, i32 %49)
  br label %73

51:                                               ; preds = %32
  %52 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %53 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SMSC911X_USE_16BIT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, -1
  store i32 %62, i32* %6, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %66 = load i32, i32* @RX_DATA_FIFO, align 4
  %67 = call i32 @__smsc911x_reg_read_shift(%struct.smsc911x_data* %65, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  br label %60

70:                                               ; preds = %60
  br label %73

71:                                               ; preds = %51
  %72 = call i32 (...) @BUG()
  br label %73

73:                                               ; preds = %71, %70, %40, %31
  %74 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %75 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @__smsc911x_reg_read_shift(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @ioread32_rep(i64, i32*, i32) #1

declare dso_local i64 @__smsc_shift(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
