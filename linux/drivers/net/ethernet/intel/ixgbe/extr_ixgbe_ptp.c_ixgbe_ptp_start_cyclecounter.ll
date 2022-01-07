; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_start_cyclecounter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_start_cyclecounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cyclecounter = type { i32, i32, i8*, i32 }

@IXGBE_FUSES0_300MHZ = common dso_local global i32 0, align 4
@ixgbe_ptp_read_X550 = common dso_local global i8* null, align 8
@IXGBE_SYSTIMR = common dso_local global i32 0, align 4
@IXGBE_SYSTIML = common dso_local global i32 0, align 4
@IXGBE_SYSTIMH = common dso_local global i32 0, align 4
@IXGBE_TSAUXC = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_DISABLE_SYSTIME = common dso_local global i32 0, align 4
@IXGBE_TSIM = common dso_local global i32 0, align 4
@IXGBE_TSIM_TXTS = common dso_local global i32 0, align 4
@IXGBE_EIMS = common dso_local global i32 0, align 4
@IXGBE_EIMS_TIMESYNC = common dso_local global i32 0, align 4
@ixgbe_ptp_read_82599 = common dso_local global i8* null, align 8
@IXGBE_TIMINCA = common dso_local global i32 0, align 4
@IXGBE_INCVAL_SHIFT_82599 = common dso_local global i32 0, align 4
@IXGBE_INCPER_SHIFT_82599 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_ptp_start_cyclecounter(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.cyclecounter, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 3
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 @CLOCKSOURCE_MASK(i32 64)
  %12 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %93 [
    i32 129, label %19
    i32 128, label %31
    i32 130, label %31
    i32 131, label %63
    i32 132, label %73
  ]

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = call i32 @IXGBE_FUSES0_GROUP(i32 0)
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @IXGBE_FUSES0_300MHZ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 0
  store i32 3, i32* %28, align 8
  %29 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 1
  store i32 2, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %19
  br label %31

31:                                               ; preds = %1, %1, %30
  %32 = load i8*, i8** @ixgbe_ptp_read_X550, align 8
  %33 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = load i32, i32* @IXGBE_SYSTIMR, align 4
  %36 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %34, i32 %35, i32 0)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = load i32, i32* @IXGBE_SYSTIML, align 4
  %39 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i32 %38, i32 0)
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = load i32, i32* @IXGBE_SYSTIMH, align 4
  %42 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %40, i32 %41, i32 0)
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = load i32, i32* @IXGBE_TSAUXC, align 4
  %45 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = load i32, i32* @IXGBE_TSAUXC, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IXGBE_TSAUXC_DISABLE_SYSTIME, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %46, i32 %47, i32 %51)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = load i32, i32* @IXGBE_TSIM, align 4
  %55 = load i32, i32* @IXGBE_TSIM_TXTS, align 4
  %56 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %53, i32 %54, i32 %55)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = load i32, i32* @IXGBE_EIMS, align 4
  %59 = load i32, i32* @IXGBE_EIMS_TIMESYNC, align 4
  %60 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %61)
  br label %94

63:                                               ; preds = %1
  %64 = load i8*, i8** @ixgbe_ptp_read_82599, align 8
  %65 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 1
  %68 = call i32 @ixgbe_ptp_link_speed_adjust(%struct.ixgbe_adapter* %66, i32* %67, i32* %6)
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = load i32, i32* @IXGBE_TIMINCA, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %69, i32 %70, i32 %71)
  br label %94

73:                                               ; preds = %1
  %74 = load i8*, i8** @ixgbe_ptp_read_82599, align 8
  %75 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 1
  %78 = call i32 @ixgbe_ptp_link_speed_adjust(%struct.ixgbe_adapter* %76, i32* %77, i32* %6)
  %79 = load i32, i32* @IXGBE_INCVAL_SHIFT_82599, align 4
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @IXGBE_INCVAL_SHIFT_82599, align 4
  %83 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %4, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %87 = load i32, i32* @IXGBE_TIMINCA, align 4
  %88 = load i32, i32* @IXGBE_INCPER_SHIFT_82599, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %86, i32 %87, i32 %91)
  br label %94

93:                                               ; preds = %1
  br label %112

94:                                               ; preds = %73, %63, %31
  %95 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %96 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @WRITE_ONCE(i32 %97, i32 %98)
  %100 = call i32 (...) @smp_mb()
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 0
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @spin_lock_irqsave(i32* %102, i64 %103)
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %105, i32 0, i32 1
  %107 = call i32 @memcpy(i32* %106, %struct.cyclecounter* %4, i32 4)
  %108 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %108, i32 0, i32 0
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %112

112:                                              ; preds = %94, %93
  ret void
}

declare dso_local i32 @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_FUSES0_GROUP(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_ptp_link_speed_adjust(%struct.ixgbe_adapter*, i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.cyclecounter*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
