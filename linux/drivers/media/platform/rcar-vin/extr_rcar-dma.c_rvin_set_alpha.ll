; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STOPPED = common dso_local global i64 0, align 8
@VNDMR_REG = common dso_local global i32 0, align 4
@VNDMR_ABIT = common dso_local global i32 0, align 4
@VNDMR_A8BIT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvin_set_alpha(%struct.rvin_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %7, i32 0, i32 2
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %15 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STOPPED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %54 [
    i32 128, label %25
    i32 129, label %41
  ]

25:                                               ; preds = %20
  %26 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %27 = load i32, i32* @VNDMR_REG, align 4
  %28 = call i32 @rvin_read(%struct.rvin_dev* %26, i32 %27)
  %29 = load i32, i32* @VNDMR_ABIT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %33 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32, i32* @VNDMR_ABIT, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %25
  br label %55

41:                                               ; preds = %20
  %42 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %43 = load i32, i32* @VNDMR_REG, align 4
  %44 = call i32 @rvin_read(%struct.rvin_dev* %42, i32 %43)
  %45 = load i32, i32* @VNDMR_A8BIT_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %49 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @VNDMR_A8BIT(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %55

54:                                               ; preds = %20
  br label %60

55:                                               ; preds = %41, %40
  %56 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @VNDMR_REG, align 4
  %59 = call i32 @rvin_write(%struct.rvin_dev* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %54, %19
  %61 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %62 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %61, i32 0, i32 2
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rvin_read(%struct.rvin_dev*, i32) #1

declare dso_local i32 @VNDMR_A8BIT(i32) #1

declare dso_local i32 @rvin_write(%struct.rvin_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
