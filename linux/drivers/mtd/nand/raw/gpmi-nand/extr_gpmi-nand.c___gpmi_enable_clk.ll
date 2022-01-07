; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c___gpmi_enable_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c___gpmi_enable_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.clk** }
%struct.clk = type { i32 }

@GPMI_CLK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*, i32)* @__gpmi_enable_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gpmi_enable_clk(%struct.gpmi_nand_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpmi_nand_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @GPMI_CLK_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %15 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.clk**, %struct.clk*** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.clk*, %struct.clk** %17, i64 %19
  %21 = load %struct.clk*, %struct.clk** %20, align 8
  store %struct.clk* %21, %struct.clk** %6, align 8
  %22 = load %struct.clk*, %struct.clk** %6, align 8
  %23 = icmp ne %struct.clk* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %42

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.clk*, %struct.clk** %6, align 8
  %30 = call i32 @clk_prepare_enable(%struct.clk* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %43

34:                                               ; preds = %28
  br label %38

35:                                               ; preds = %25
  %36 = load %struct.clk*, %struct.clk** %6, align 8
  %37 = call i32 @clk_disable_unprepare(%struct.clk* %36)
  br label %38

38:                                               ; preds = %35, %34
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %9

42:                                               ; preds = %24, %9
  store i32 0, i32* %3, align 4
  br label %63

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %49 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.clk**, %struct.clk*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.clk*, %struct.clk** %51, i64 %54
  %56 = load %struct.clk*, %struct.clk** %55, align 8
  %57 = call i32 @clk_disable_unprepare(%struct.clk* %56)
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %8, align 4
  br label %44

61:                                               ; preds = %44
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %42
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
