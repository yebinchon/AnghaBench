; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_get_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_get_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i32, %struct.TYPE_2__*, %struct.resources }
%struct.TYPE_2__ = type { i32, i32* }
%struct.resources = type { %struct.clk** }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed in finding the clocks.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @gpmi_get_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_get_clks(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.resources*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %8 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %9 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %8, i32 0, i32 2
  store %struct.resources* %9, %struct.resources** %4, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %46, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %13 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %10
  %19 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %20 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %23 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.clk* @devm_clk_get(i32 %21, i32 %30)
  store %struct.clk* %31, %struct.clk** %5, align 8
  %32 = load %struct.clk*, %struct.clk** %5, align 8
  %33 = call i64 @IS_ERR(%struct.clk* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load %struct.clk*, %struct.clk** %5, align 8
  %37 = call i32 @PTR_ERR(%struct.clk* %36)
  store i32 %37, i32* %6, align 4
  br label %61

38:                                               ; preds = %18
  %39 = load %struct.clk*, %struct.clk** %5, align 8
  %40 = load %struct.resources*, %struct.resources** %4, align 8
  %41 = getelementptr inbounds %struct.resources, %struct.resources* %40, i32 0, i32 0
  %42 = load %struct.clk**, %struct.clk*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.clk*, %struct.clk** %42, i64 %44
  store %struct.clk* %39, %struct.clk** %45, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %10

49:                                               ; preds = %10
  %50 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %51 = call i64 @GPMI_IS_MX6(%struct.gpmi_nand_data* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.resources*, %struct.resources** %4, align 8
  %55 = getelementptr inbounds %struct.resources, %struct.resources* %54, i32 0, i32 0
  %56 = load %struct.clk**, %struct.clk*** %55, align 8
  %57 = getelementptr inbounds %struct.clk*, %struct.clk** %56, i64 0
  %58 = load %struct.clk*, %struct.clk** %57, align 8
  %59 = call i32 @clk_set_rate(%struct.clk* %58, i32 22000000)
  br label %60

60:                                               ; preds = %53, %49
  store i32 0, i32* %2, align 4
  br label %67

61:                                               ; preds = %35
  %62 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %63 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %60
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.clk* @devm_clk_get(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i64 @GPMI_IS_MX6(%struct.gpmi_nand_data*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
