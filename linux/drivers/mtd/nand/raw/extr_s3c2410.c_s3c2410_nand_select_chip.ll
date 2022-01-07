; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.s3c2410_nand_info = type { i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.s3c2410_nand_mtd = type { %struct.TYPE_4__*, %struct.s3c2410_nand_info* }

@CLOCK_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid chip %d\0A\00", align 1
@CLOCK_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @s3c2410_nand_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_nand_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c2410_nand_info*, align 8
  %6 = alloca %struct.s3c2410_nand_mtd*, align 8
  %7 = alloca i64, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.s3c2410_nand_mtd* @nand_get_controller_data(%struct.nand_chip* %8)
  store %struct.s3c2410_nand_mtd* %9, %struct.s3c2410_nand_mtd** %6, align 8
  %10 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %11 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %10, i32 0, i32 1
  %12 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %11, align 8
  store %struct.s3c2410_nand_info* %12, %struct.s3c2410_nand_info** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %17 = load i32, i32* @CLOCK_ENABLE, align 4
  %18 = call i32 @s3c2410_nand_clk_set_state(%struct.s3c2410_nand_info* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %21 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @readl(i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %28 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %82

32:                                               ; preds = %19
  %33 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %34 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %40 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %38, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %47 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %94

51:                                               ; preds = %37, %32
  %52 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %53 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %58 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.TYPE_4__*, i32)* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %65 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %67, align 8
  %69 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %70 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 %68(%struct.TYPE_4__* %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %56
  br label %75

75:                                               ; preds = %74, %51
  %76 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %77 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = xor i64 %78, -1
  %80 = load i64, i64* %7, align 8
  %81 = and i64 %80, %79
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %75, %26
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %85 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @writel(i64 %83, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %92 = load i32, i32* @CLOCK_SUSPEND, align 4
  %93 = call i32 @s3c2410_nand_clk_set_state(%struct.s3c2410_nand_info* %91, i32 %92)
  br label %94

94:                                               ; preds = %45, %90, %82
  ret void
}

declare dso_local %struct.s3c2410_nand_mtd* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @s3c2410_nand_clk_set_state(%struct.s3c2410_nand_info*, i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
