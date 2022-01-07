; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_legacy.c_nand_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_legacy.c_nand_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.nand_chip.0*)* }
%struct.nand_chip.0 = type opaque

@oops_in_progress = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@NAND_STATUS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @nand_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_wait(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i64 400, i64* %4, align 8
  %7 = call i32 @ndelay(i32 100)
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call i32 @nand_status_op(%struct.nand_chip* %8, i32* null)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %84

14:                                               ; preds = %1
  %15 = call i64 (...) @in_interrupt()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @oops_in_progress, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %14
  %21 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @panic_nand_wait(%struct.nand_chip* %21, i64 %22)
  br label %68

24:                                               ; preds = %17
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @msecs_to_jiffies(i64 %26)
  %28 = add i64 %25, %27
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %62, %24
  %30 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64 (%struct.nand_chip.0*)*, i64 (%struct.nand_chip.0*)** %32, align 8
  %34 = icmp ne i64 (%struct.nand_chip.0*)* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64 (%struct.nand_chip.0*)*, i64 (%struct.nand_chip.0*)** %38, align 8
  %40 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %41 = bitcast %struct.nand_chip* %40 to %struct.nand_chip.0*
  %42 = call i64 %39(%struct.nand_chip.0* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %67

45:                                               ; preds = %35
  br label %60

46:                                               ; preds = %29
  %47 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %48 = call i32 @nand_read_data_op(%struct.nand_chip* %47, i32* %5, i32 4, i32 1)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %84

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @NAND_STATUS_READY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %67

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %45
  %61 = call i32 (...) @cond_resched()
  br label %62

62:                                               ; preds = %60
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @time_before(i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %29, label %67

67:                                               ; preds = %62, %58, %44
  br label %68

68:                                               ; preds = %67, %20
  %69 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %70 = call i32 @nand_read_data_op(%struct.nand_chip* %69, i32* %5, i32 4, i32 1)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %84

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @NAND_STATUS_READY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @WARN_ON(i32 %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %75, %73, %51, %12
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @panic_nand_wait(%struct.nand_chip*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
