; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_wait_for_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_wait_for_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"timeout while waiting for irq 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.denali_controller*, i32)* @denali_wait_for_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_wait_for_irq(%struct.denali_controller* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.denali_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.denali_controller* %0, %struct.denali_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %10 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %9, i32 0, i32 4
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %14 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %22 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %21, i32 0, i32 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %29 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %31 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %30, i32 0, i32 3
  %32 = call i32 @reinit_completion(i32* %31)
  %33 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %34 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %33, i32 0, i32 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %38 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %37, i32 0, i32 3
  %39 = call i32 @msecs_to_jiffies(i32 1000)
  %40 = call i64 @wait_for_completion_timeout(i32* %38, i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %26
  %44 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %45 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 0, i32* %3, align 4
  br label %53

49:                                               ; preds = %26
  %50 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %51 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
