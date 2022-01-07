; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32, i32, i32 }

@UCB_IE_RIS = common dso_local global i32 0, align 4
@UCB_IE_FAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucb1x00*, i32)* @ucb1x00_irq_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucb1x00_irq_update(%struct.ucb1x00* %0, i32 %1) #0 {
  %3 = alloca %struct.ucb1x00*, align 8
  %4 = alloca i32, align 4
  store %struct.ucb1x00* %0, %struct.ucb1x00** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %6 = call i32 @ucb1x00_enable(%struct.ucb1x00* %5)
  %7 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %8 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %15 = load i32, i32* @UCB_IE_RIS, align 4
  %16 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %17 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %20 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %14, i32 %15, i32 %22)
  br label %24

24:                                               ; preds = %13, %2
  %25 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %26 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %33 = load i32, i32* @UCB_IE_FAL, align 4
  %34 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %35 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %38 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %32, i32 %33, i32 %40)
  br label %42

42:                                               ; preds = %31, %24
  %43 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %44 = call i32 @ucb1x00_disable(%struct.ucb1x00* %43)
  ret void
}

declare dso_local i32 @ucb1x00_enable(%struct.ucb1x00*) #1

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @ucb1x00_disable(%struct.ucb1x00*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
