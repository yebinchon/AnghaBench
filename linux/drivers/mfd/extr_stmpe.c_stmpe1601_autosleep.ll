; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe1601_autosleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe1601_autosleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid timeout\0A\00", align 1
@STMPE_IDX_SYS_CTRL2 = common dso_local global i64 0, align 8
@STMPE1601_AUTOSLEEP_TIMEOUT_MASK = common dso_local global i32 0, align 4
@STPME1601_AUTOSLEEP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*, i32)* @stmpe1601_autosleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe1601_autosleep(%struct.stmpe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmpe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stmpe* %0, %struct.stmpe** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @stmpe_round_timeout(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %14 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %20 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %21 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @STMPE_IDX_SYS_CTRL2, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @STMPE1601_AUTOSLEEP_TIMEOUT_MASK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @__stmpe_set_bits(%struct.stmpe* %19, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %44

33:                                               ; preds = %18
  %34 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %35 = load %struct.stmpe*, %struct.stmpe** %4, align 8
  %36 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @STMPE_IDX_SYS_CTRL2, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @STPME1601_AUTOSLEEP_ENABLE, align 4
  %42 = load i32, i32* @STPME1601_AUTOSLEEP_ENABLE, align 4
  %43 = call i32 @__stmpe_set_bits(%struct.stmpe* %34, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %33, %31, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @stmpe_round_timeout(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @__stmpe_set_bits(%struct.stmpe*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
