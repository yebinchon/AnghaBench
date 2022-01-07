; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_tango_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.tango_chip = type { i64 }

@NAND_CLE = common dso_local global i32 0, align 4
@PBUS_CMD = common dso_local global i64 0, align 8
@NAND_ALE = common dso_local global i32 0, align 4
@PBUS_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @tango_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tango_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tango_chip*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call %struct.tango_chip* @to_tango_chip(%struct.nand_chip* %8)
  store %struct.tango_chip* %9, %struct.tango_chip** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NAND_CLE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.tango_chip*, %struct.tango_chip** %7, align 8
  %17 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PBUS_CMD, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writeb_relaxed(i32 %15, i64 %20)
  br label %22

22:                                               ; preds = %14, %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NAND_ALE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.tango_chip*, %struct.tango_chip** %7, align 8
  %30 = getelementptr inbounds %struct.tango_chip, %struct.tango_chip* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PBUS_ADDR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writeb_relaxed(i32 %28, i64 %33)
  br label %35

35:                                               ; preds = %27, %22
  ret void
}

declare dso_local %struct.tango_chip* @to_tango_chip(%struct.nand_chip*) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
