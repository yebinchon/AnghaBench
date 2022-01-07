; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_rx_readfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_rx_readfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@SMSC911X_SWAP_FIFO = common dso_local global i32 0, align 4
@RX_DATA_FIFO = common dso_local global i64 0, align 8
@SMSC911X_USE_32BIT = common dso_local global i32 0, align 4
@SMSC911X_USE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*, i32*, i32)* @smsc911x_rx_readfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_rx_readfifo(%struct.smsc911x_data* %0, i32* %1, i32 %2) #0 {
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
  %26 = load i64, i64* @RX_DATA_FIFO, align 8
  %27 = call i32 @__smsc911x_reg_read(%struct.smsc911x_data* %25, i64 %26)
  %28 = call i32 @swab32(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %20

31:                                               ; preds = %20
  br label %71

32:                                               ; preds = %3
  %33 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %34 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SMSC911X_USE_32BIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %42 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RX_DATA_FIFO, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ioread32_rep(i64 %45, i32* %46, i32 %47)
  br label %71

49:                                               ; preds = %32
  %50 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %51 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SMSC911X_USE_16BIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %62, %57
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %64 = load i64, i64* @RX_DATA_FIFO, align 8
  %65 = call i32 @__smsc911x_reg_read(%struct.smsc911x_data* %63, i64 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  br label %58

68:                                               ; preds = %58
  br label %71

69:                                               ; preds = %49
  %70 = call i32 (...) @BUG()
  br label %71

71:                                               ; preds = %69, %68, %40, %31
  %72 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %73 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %72, i32 0, i32 0
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @__smsc911x_reg_read(%struct.smsc911x_data*, i64) #1

declare dso_local i32 @ioread32_rep(i64, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
