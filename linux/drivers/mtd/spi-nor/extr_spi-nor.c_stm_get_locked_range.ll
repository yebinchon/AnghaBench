; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_stm_get_locked_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_stm_get_locked_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.mtd_info }
%struct.mtd_info = type { i32 }

@SR_BP2 = common dso_local global i32 0, align 4
@SR_BP1 = common dso_local global i32 0, align 4
@SR_BP0 = common dso_local global i32 0, align 4
@SNOR_F_HAS_SR_TB = common dso_local global i32 0, align 4
@SR_TB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor*, i32, i32*, i32*)* @stm_get_locked_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm_get_locked_range(%struct.spi_nor* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 1
  store %struct.mtd_info* %14, %struct.mtd_info** %9, align 8
  %15 = load i32, i32* @SR_BP2, align 4
  %16 = load i32, i32* @SR_BP1, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SR_BP0, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @ffs(i32 %20)
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 0, i32* %29, align 4
  br label %66

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = xor i32 %33, %34
  %36 = load i32, i32* %11, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %45 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SNOR_F_HAS_SR_TB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %30
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SR_TB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  store i32 0, i32* %56, align 4
  br label %65

57:                                               ; preds = %50, %30
  %58 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %60, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %55
  br label %66

66:                                               ; preds = %65, %27
  ret void
}

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
