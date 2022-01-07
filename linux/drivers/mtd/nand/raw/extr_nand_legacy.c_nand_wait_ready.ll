; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_legacy.c_nand_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_legacy.c_nand_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.nand_chip.0*)* }
%struct.nand_chip.0 = type opaque

@oops_in_progress = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"timeout while waiting for chip to become ready\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nand_wait_ready(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca i64, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  store i64 400, i64* %3, align 8
  %4 = call i64 (...) @in_interrupt()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @oops_in_progress, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %1
  %10 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %11 = load i64, i64* %3, align 8
  call void @panic_nand_wait_ready(%struct.nand_chip* %10, i64 %11)
  br label %45

12:                                               ; preds = %6
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @msecs_to_jiffies(i64 %14)
  %16 = add i64 %13, %15
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %29, %12
  %18 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (%struct.nand_chip.0*)*, i64 (%struct.nand_chip.0*)** %20, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %23 = bitcast %struct.nand_chip* %22 to %struct.nand_chip.0*
  %24 = call i64 %21(%struct.nand_chip.0* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %45

27:                                               ; preds = %17
  %28 = call i32 (...) @cond_resched()
  br label %29

29:                                               ; preds = %27
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @time_before(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %17, label %34

34:                                               ; preds = %29
  %35 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64 (%struct.nand_chip.0*)*, i64 (%struct.nand_chip.0*)** %37, align 8
  %39 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %40 = bitcast %struct.nand_chip* %39 to %struct.nand_chip.0*
  %41 = call i64 %38(%struct.nand_chip.0* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %9, %26, %43, %34
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local void @panic_nand_wait_ready(%struct.nand_chip*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @pr_warn_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
