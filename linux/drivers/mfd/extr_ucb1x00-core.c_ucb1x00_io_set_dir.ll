; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_io_set_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_io_set_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32, i32 }

@UCB_IO_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucb1x00_io_set_dir(%struct.ucb1x00* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ucb1x00*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ucb1x00* %0, %struct.ucb1x00** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %9 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %14 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %5, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %20 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %24 = load i32, i32* @UCB_IO_DIR, align 4
  %25 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %26 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %23, i32 %24, i32 %27)
  %29 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %30 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %29, i32 0, i32 1
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
