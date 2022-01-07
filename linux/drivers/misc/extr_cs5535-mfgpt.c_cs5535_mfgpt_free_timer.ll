; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_free_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_free_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_mfgpt_timer = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MFGPT_REG_SETUP = common dso_local global i32 0, align 4
@MFGPT_SETUP_SETUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cs5535_mfgpt_free_timer(%struct.cs5535_mfgpt_timer* %0) #0 {
  %2 = alloca %struct.cs5535_mfgpt_timer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.cs5535_mfgpt_timer* %0, %struct.cs5535_mfgpt_timer** %2, align 8
  %5 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %2, align 8
  %6 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %7 = call i32 @cs5535_mfgpt_read(%struct.cs5535_mfgpt_timer* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MFGPT_SETUP_SETUP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %1
  %13 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %2, align 8
  %14 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %2, align 8
  %20 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %2, align 8
  %23 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__set_bit(i32 %21, i32 %26)
  %28 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %2, align 8
  %29 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %12, %1
  %35 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %2, align 8
  %36 = call i32 @kfree(%struct.cs5535_mfgpt_timer* %35)
  ret void
}

declare dso_local i32 @cs5535_mfgpt_read(%struct.cs5535_mfgpt_timer*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.cs5535_mfgpt_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
