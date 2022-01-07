; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_set_data_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_set_data_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32 }

@SYSCTL = common dso_local global i32 0, align 4
@CLKD_MASK = common dso_local global i32 0, align 4
@CLKD_SHIFT = common dso_local global i32 0, align 4
@DTO_MASK = common dso_local global i32 0, align 4
@DTO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, i64, i32)* @set_data_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_data_timeout(%struct.omap_hsmmc_host* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SYSCTL, align 4
  %17 = call i32 @OMAP_HSMMC_READ(i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @CLKD_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @CLKD_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %28 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %29, %30
  %32 = sdiv i32 1000000000, %31
  store i32 %32, i32* %8, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @do_div(i64 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i64, i64* %7, align 8
  %45 = and i64 %44, 2147483648
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = load i64, i64* %7, align 8
  %51 = shl i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %43

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 31, %53
  store i32 %54, i32* %11, align 4
  %55 = load i64, i64* %7, align 8
  %56 = shl i64 %55, 1
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %62, %59, %52
  %66 = load i32, i32* %11, align 4
  %67 = icmp sge i32 %66, 13
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %69, 13
  store i32 %70, i32* %11, align 4
  br label %72

71:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32, i32* %11, align 4
  %74 = icmp sgt i32 %73, 14
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 14, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76, %26
  %78 = load i32, i32* @DTO_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @DTO_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %88 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SYSCTL, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @OMAP_HSMMC_WRITE(i32 %89, i32 %90, i32 %91)
  ret void
}

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
