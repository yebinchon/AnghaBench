; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_setup_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_setup_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i64, i32 (i64)*, i8*, i64, i32 (i32, i64)*, i32 }

@onenand_wait = common dso_local global i8* null, align 8
@onenand_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"onenand\00", align 1
@ONENAND_REG_SYS_CFG1 = common dso_local global i64 0, align 8
@ONENAND_SYS_CFG1_IOBE = common dso_local global i32 0, align 4
@onenand_try_interrupt_wait = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @onenand_setup_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onenand_setup_wait(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 0
  %7 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  store %struct.onenand_chip* %7, %struct.onenand_chip** %3, align 8
  %8 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %9 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %8, i32 0, i32 5
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %12 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i8*, i8** @onenand_wait, align 8
  %17 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %18 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %21 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @IRQF_SHARED, align 4
  %24 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %25 = call i64 @request_irq(i64 %22, i32* @onenand_interrupt, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.onenand_chip* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i8*, i8** @onenand_wait, align 8
  %29 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %30 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  br label %57

31:                                               ; preds = %19
  %32 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %33 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %32, i32 0, i32 1
  %34 = load i32 (i64)*, i32 (i64)** %33, align 8
  %35 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %36 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ONENAND_REG_SYS_CFG1, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 %34(i64 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @ONENAND_SYS_CFG1_IOBE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %45 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %44, i32 0, i32 4
  %46 = load i32 (i32, i64)*, i32 (i32, i64)** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %49 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ONENAND_REG_SYS_CFG1, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 %46(i32 %47, i64 %52)
  %54 = load i8*, i8** @onenand_try_interrupt_wait, align 8
  %55 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %56 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %31, %27, %15
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @request_irq(i64, i32*, i32, i8*, %struct.onenand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
