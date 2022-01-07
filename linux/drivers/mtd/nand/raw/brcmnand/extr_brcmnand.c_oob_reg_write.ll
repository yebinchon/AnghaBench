; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_oob_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_oob_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_controller = type { i32, i64* }

@BRCMNAND_OOB_WRITE_BASE = common dso_local global i64 0, align 8
@BRCMNAND_OOB_WRITE_10_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmnand_controller*, i32, i32)* @oob_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oob_reg_write(%struct.brcmnand_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmnand_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.brcmnand_controller* %0, %struct.brcmnand_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %11 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @BRCMNAND_OOB_WRITE_BASE, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %17 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @BRCMNAND_OOB_WRITE_10_BASE, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %24 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %52

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 16
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 16
  %38 = and i32 %37, -4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  store i64 %40, i64* %9, align 8
  br label %47

41:                                               ; preds = %31, %28
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, -4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @nand_writereg(%struct.brcmnand_controller* %48, i64 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %27
  ret void
}

declare dso_local i32 @nand_writereg(%struct.brcmnand_controller*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
