; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsmc_nand.c_fsmc_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsmc_nand_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsmc_nand_data*, i32*, i32)* @fsmc_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsmc_write_buf(%struct.fsmc_nand_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.fsmc_nand_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.fsmc_nand_data* %0, %struct.fsmc_nand_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = ptrtoint i32* %9 to i64
  %11 = trunc i64 %10 to i32
  %12 = call i64 @IS_ALIGNED(i32 %11, i32 4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @IS_ALIGNED(i32 %15, i32 4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 2
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %36, %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %4, align 8
  %33 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel_relaxed(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %22

39:                                               ; preds = %22
  br label %59

40:                                               ; preds = %14, %3
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fsmc_nand_data*, %struct.fsmc_nand_data** %4, align 8
  %52 = getelementptr inbounds %struct.fsmc_nand_data, %struct.fsmc_nand_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @writeb_relaxed(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %41

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %39
  ret void
}

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @writeb_relaxed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
