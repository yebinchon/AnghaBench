; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ecc = type { i64, %struct.device* }
%struct.device = type { i32 }

@ECC_IDLE_MASK = common dso_local global i32 0, align 4
@ECC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s NOT idle\0A\00", align 1
@ECC_ENCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ecc*, i32)* @mtk_ecc_wait_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_ecc_wait_idle(%struct.mtk_ecc* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_ecc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_ecc* %0, %struct.mtk_ecc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtk_ecc*, %struct.mtk_ecc** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.mtk_ecc*, %struct.mtk_ecc** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @ECC_IDLE_REG(i32 %14)
  %16 = add nsw i64 %13, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ECC_IDLE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @ECC_TIMEOUT, align 4
  %22 = call i32 @readl_poll_timeout_atomic(i64 %16, i32 %17, i32 %20, i32 10, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ECC_ENCODE, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @dev_warn(%struct.device* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i64 @ECC_IDLE_REG(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
