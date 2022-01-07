; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_wait_rdy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_wait_rdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_user = type { i32, %struct.atmel_pmecc* }
%struct.atmel_pmecc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@ATMEL_PMECC_SR = common dso_local global i64 0, align 8
@PMECC_SR_BUSY = common dso_local global i32 0, align 4
@PMECC_MAX_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout while waiting for PMECC ready.\0A\00", align 1
@ATMEL_PMECC_ISR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmel_pmecc_wait_rdy(%struct.atmel_pmecc_user* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_pmecc_user*, align 8
  %4 = alloca %struct.atmel_pmecc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_pmecc_user* %0, %struct.atmel_pmecc_user** %3, align 8
  %7 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %7, i32 0, i32 1
  %9 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %8, align 8
  store %struct.atmel_pmecc* %9, %struct.atmel_pmecc** %4, align 8
  %10 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  %11 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ATMEL_PMECC_SR, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PMECC_SR_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @PMECC_MAX_TIMEOUT_MS, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = call i32 @readl_relaxed_poll_timeout(i64 %15, i32 %16, i32 %22, i32 0, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  %30 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %1
  %35 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_pmecc, %struct.atmel_pmecc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ATMEL_PMECC_ISR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl_relaxed(i64 %40)
  %42 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %43 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %34, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
