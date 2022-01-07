; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_soft_waitrdy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_soft_waitrdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_sdr_timings = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NAND_STATUS_READY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_soft_waitrdy(%struct.nand_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nand_sdr_timings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call i32 @nand_has_exec_op(%struct.nand_chip* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %17)
  store %struct.nand_sdr_timings* %18, %struct.nand_sdr_timings** %6, align 8
  %19 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %6, align 8
  %20 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PSEC_TO_NSEC(i32 %21)
  %23 = call i32 @ndelay(i32 %22)
  %24 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %25 = call i32 @nand_status_op(%struct.nand_chip* %24, i32* null)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %15
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @msecs_to_jiffies(i64 %32)
  %34 = add i64 %31, %33
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %49, %30
  %36 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %37 = call i32 @nand_read_data_op(%struct.nand_chip* %36, i32* %7, i32 4, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %54

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @NAND_STATUS_READY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %54

47:                                               ; preds = %41
  %48 = call i32 @udelay(i32 10)
  br label %49

49:                                               ; preds = %47
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @time_before(i64 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %35, label %54

54:                                               ; preds = %49, %46, %40
  %55 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %56 = call i32 @nand_exit_status_op(%struct.nand_chip* %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %72

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @NAND_STATUS_READY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i32 [ 0, %66 ], [ %69, %67 ]
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %59, %28, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @nand_has_exec_op(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @PSEC_TO_NSEC(i32) #1

declare dso_local i32 @nand_status_op(%struct.nand_chip*, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @nand_exit_status_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
