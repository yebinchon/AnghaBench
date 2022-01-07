; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_clk_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_clk_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_nand_info = type { i64, i32 }

@CLOCK_SUSPEND = common dso_local global i32 0, align 4
@CLOCK_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_nand_info*, i32)* @s3c2410_nand_clk_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_nand_clk_set_state(%struct.s3c2410_nand_info* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c2410_nand_info*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c2410_nand_info* %0, %struct.s3c2410_nand_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %3, align 8
  %6 = call i32 @allow_clk_suspend(%struct.s3c2410_nand_info* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CLOCK_SUSPEND, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %46

13:                                               ; preds = %8, %2
  %14 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %3, align 8
  %15 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CLOCK_ENABLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* @CLOCK_ENABLE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %3, align 8
  %26 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %41

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @CLOCK_ENABLE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %3, align 8
  %37 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clk_prepare_enable(i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %3, align 8
  %45 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %12
  ret void
}

declare dso_local i32 @allow_clk_suspend(%struct.s3c2410_nand_info*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
