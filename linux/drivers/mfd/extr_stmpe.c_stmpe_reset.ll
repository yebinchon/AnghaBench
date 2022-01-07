; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@STMPE811_ID = common dso_local global i64 0, align 8
@STMPE811_SYS_CTRL_RESET = common dso_local global i32 0, align 4
@STMPE_SYS_CTRL_RESET = common dso_local global i32 0, align 4
@STMPE_IDX_SYS_CTRL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*)* @stmpe_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_reset(%struct.stmpe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmpe*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stmpe* %0, %struct.stmpe** %3, align 8
  %8 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %9 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @STMPE811_ID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @STMPE811_SYS_CTRL_RESET, align 4
  store i32 %17, i32* %7, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @STMPE_SYS_CTRL_RESET, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %22 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %23 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @STMPE_IDX_SYS_CTRL, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @__stmpe_set_bits(%struct.stmpe* %21, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %69

35:                                               ; preds = %20
  %36 = call i32 @msleep(i32 10)
  %37 = load i64, i64* @jiffies, align 8
  %38 = call i64 @msecs_to_jiffies(i32 100)
  %39 = add i64 %37, %38
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %64, %35
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @time_before(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %47 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %48 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @STMPE_IDX_SYS_CTRL, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__stmpe_reg_read(%struct.stmpe* %46, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %69

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %69

64:                                               ; preds = %58
  %65 = call i32 @usleep_range(i32 100, i32 200)
  br label %40

66:                                               ; preds = %40
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %63, %56, %33
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @__stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @__stmpe_reg_read(%struct.stmpe*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
