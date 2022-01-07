; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.intel_spi* }
%struct.intel_spi = type { i32, i64, i64, i64, i64 }

@SPINOR_OP_WREN = common dso_local global i32 0, align 4
@PREOP_OPTYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FADDR = common dso_local global i64 0, align 8
@OPTYPE_WRITE_NO_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i32*, i32)* @intel_spi_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_spi_write_reg(%struct.spi_nor* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_spi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 0
  %15 = load %struct.intel_spi*, %struct.intel_spi** %14, align 8
  store %struct.intel_spi* %15, %struct.intel_spi** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SPINOR_OP_WREN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %4
  %20 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %21 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %92

25:                                               ; preds = %19
  %26 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %27 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PREOP_OPTYPE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readw(i64 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, 255
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %25
  %37 = load i32, i32* %12, align 4
  %38 = ashr i32 %37, 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %43 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %92

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %52 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PREOP_OPTYPE, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %49, %36, %25
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %60 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %5, align 4
  br label %92

61:                                               ; preds = %4
  %62 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %63 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FADDR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 0, i64 %66)
  %68 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @intel_spi_write_block(%struct.intel_spi* %68, i32* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %92

76:                                               ; preds = %61
  %77 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %78 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @OPTYPE_WRITE_NO_ADDR, align 4
  %86 = call i32 @intel_spi_sw_cycle(%struct.intel_spi* %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %5, align 4
  br label %92

87:                                               ; preds = %76
  %88 = load %struct.intel_spi*, %struct.intel_spi** %10, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @intel_spi_hw_cycle(%struct.intel_spi* %88, i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %81, %74, %57, %46, %24
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @intel_spi_write_block(%struct.intel_spi*, i32*, i32) #1

declare dso_local i32 @intel_spi_sw_cycle(%struct.intel_spi*, i32, i32, i32) #1

declare dso_local i32 @intel_spi_hw_cycle(%struct.intel_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
