; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_tx_writefifo_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_tx_writefifo_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@SMSC911X_SWAP_FIFO = common dso_local global i32 0, align 4
@TX_DATA_FIFO = common dso_local global i32 0, align 4
@SMSC911X_USE_32BIT = common dso_local global i32 0, align 4
@SMSC911X_USE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*, i32*, i32)* @smsc911x_tx_writefifo_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_tx_writefifo_shift(%struct.smsc911x_data* %0, i32* %1, i32 %2) #0 {
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
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %26 = load i32, i32* @TX_DATA_FIFO, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  %29 = load i32, i32* %27, align 4
  %30 = call i32 @swab32(i32 %29)
  %31 = call i32 @__smsc911x_reg_write_shift(%struct.smsc911x_data* %25, i32 %26, i32 %30)
  br label %20

32:                                               ; preds = %20
  br label %75

33:                                               ; preds = %3
  %34 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %35 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SMSC911X_USE_32BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %43 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %46 = load i32, i32* @TX_DATA_FIFO, align 4
  %47 = call i64 @__smsc_shift(%struct.smsc911x_data* %45, i32 %46)
  %48 = add nsw i64 %44, %47
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @iowrite32_rep(i64 %48, i32* %49, i32 %50)
  br label %75

52:                                               ; preds = %33
  %53 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %54 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SMSC911X_USE_16BIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %6, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %67 = load i32, i32* @TX_DATA_FIFO, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* %68, align 4
  %71 = call i32 @__smsc911x_reg_write_shift(%struct.smsc911x_data* %66, i32 %67, i32 %70)
  br label %61

72:                                               ; preds = %61
  br label %75

73:                                               ; preds = %52
  %74 = call i32 (...) @BUG()
  br label %75

75:                                               ; preds = %73, %72, %41, %32
  %76 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %77 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %76, i32 0, i32 0
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__smsc911x_reg_write_shift(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @iowrite32_rep(i64, i32*, i32) #1

declare dso_local i64 @__smsc_shift(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
