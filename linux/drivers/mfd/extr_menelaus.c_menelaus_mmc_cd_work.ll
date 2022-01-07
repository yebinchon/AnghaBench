; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_mmc_cd_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_mmc_cd_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menelaus_chip = type { i32, i32 (i32, i8)* }

@MENELAUS_MCT_PIN_ST = common dso_local global i32 0, align 4
@MCT_PIN_ST_S1_CD_ST = common dso_local global i8 0, align 1
@MCT_PIN_ST_S2_CD_ST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menelaus_chip*)* @menelaus_mmc_cd_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menelaus_mmc_cd_work(%struct.menelaus_chip* %0) #0 {
  %2 = alloca %struct.menelaus_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.menelaus_chip* %0, %struct.menelaus_chip** %2, align 8
  store i8 0, i8* %4, align 1
  %5 = load i32, i32* @MENELAUS_MCT_PIN_ST, align 4
  %6 = call i32 @menelaus_read_reg(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* @MCT_PIN_ST_S1_CD_ST, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %4, align 1
  br label %21

21:                                               ; preds = %14, %10
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* @MCT_PIN_ST_S2_CD_ST, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %4, align 1
  br label %32

32:                                               ; preds = %25, %21
  %33 = load %struct.menelaus_chip*, %struct.menelaus_chip** %2, align 8
  %34 = getelementptr inbounds %struct.menelaus_chip, %struct.menelaus_chip* %33, i32 0, i32 1
  %35 = load i32 (i32, i8)*, i32 (i32, i8)** %34, align 8
  %36 = icmp ne i32 (i32, i8)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.menelaus_chip*, %struct.menelaus_chip** %2, align 8
  %39 = getelementptr inbounds %struct.menelaus_chip, %struct.menelaus_chip* %38, i32 0, i32 1
  %40 = load i32 (i32, i8)*, i32 (i32, i8)** %39, align 8
  %41 = load %struct.menelaus_chip*, %struct.menelaus_chip** %2, align 8
  %42 = getelementptr inbounds %struct.menelaus_chip, %struct.menelaus_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8, i8* %4, align 1
  %45 = call i32 %40(i32 %43, i8 zeroext %44)
  br label %46

46:                                               ; preds = %9, %37, %32
  ret void
}

declare dso_local i32 @menelaus_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
