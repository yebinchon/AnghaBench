; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_setup_read_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_setup_read_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, {}* }

@.str = private unnamed_addr constant [28 x i8] c"setting READ RETRY mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @nand_setup_read_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_setup_read_retry(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 1
  %19 = bitcast {}** %18 to i32 (%struct.nand_chip*, i32)**
  %20 = load i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.nand_chip*, i32)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %16
  %26 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 1
  %28 = bitcast {}** %27 to i32 (%struct.nand_chip*, i32)**
  %29 = load i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)** %28, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %29(%struct.nand_chip* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %22, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
