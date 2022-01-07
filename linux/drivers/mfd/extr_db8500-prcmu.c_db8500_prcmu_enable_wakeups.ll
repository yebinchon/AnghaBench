; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_enable_wakeups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_enable_wakeups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VALID_WAKEUPS = common dso_local global i32 0, align 4
@NUM_PRCMU_WAKEUP_INDICES = common dso_local global i32 0, align 4
@prcmu_wakeup_bit = common dso_local global i32* null, align 8
@mb0_transfer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db8500_prcmu_enable_wakeups(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @VALID_WAKEUPS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @NUM_PRCMU_WAKEUP_INDICES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32*, i32** @prcmu_wakeup_bit, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %23, %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb0_transfer, i32 0, i32 0), i64 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb0_transfer, i32 0, i32 1, i32 0), align 4
  %39 = call i32 (...) @config_wakeups()
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb0_transfer, i32 0, i32 0), i64 %40)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @config_wakeups(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
