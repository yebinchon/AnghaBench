; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_opcode_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_opcode_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_spi = type { i64*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@OPMENU0 = common dso_local global i64 0, align 8
@PREOP_OPTYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_spi*, i64, i32)* @intel_spi_opcode_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_spi_opcode_index(%struct.intel_spi* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_spi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_spi* %0, %struct.intel_spi** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %11 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %18 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i64* %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %24 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %66

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %66

41:                                               ; preds = %3
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %45 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OPMENU0, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %51 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PREOP_OPTYPE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readw(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %61 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PREOP_OPTYPE, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %41, %38, %32
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
