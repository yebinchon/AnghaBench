; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_dump_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_dump_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_nand_controller = type { i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"Tegra NAND controller register dump\0A\00", align 1
@tegra_nand_reg_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_nand_controller*)* @tegra_nand_dump_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_nand_dump_reg(%struct.tegra_nand_controller* %0) #0 {
  %2 = alloca %struct.tegra_nand_controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.tegra_nand_controller* %0, %struct.tegra_nand_controller** %2, align 8
  %6 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i32, i8*, ...) @dev_err(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %39, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** @tegra_nand_reg_names, align 8
  %13 = call i32 @ARRAY_SIZE(i8** %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %10
  %16 = load i8**, i8*** @tegra_nand_reg_names, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %39

24:                                               ; preds = %15
  %25 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %26 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %2, align 8
  %34 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %24, %23
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %10

42:                                               ; preds = %10
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
