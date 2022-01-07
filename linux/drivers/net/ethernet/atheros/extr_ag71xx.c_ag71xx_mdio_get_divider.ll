; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_mdio_get_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_mdio_get_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR9330 = common dso_local global i32 0, align 4
@AR9340 = common dso_local global i32 0, align 4
@ar933x_mdio_div_table = common dso_local global i64* null, align 8
@AR7240 = common dso_local global i32 0, align 4
@ar7240_mdio_div_table = common dso_local global i64* null, align 8
@ar71xx_mdio_div_table = common dso_local global i64* null, align 8
@AG71XX_MDIO_MAX_CLK = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*, i64*)* @ag71xx_mdio_get_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_get_divider(%struct.ag71xx* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ag71xx*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %12 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @clk_get_rate(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %22 = load i32, i32* @AR9330, align 4
  %23 = call i64 @ag71xx_is(%struct.ag71xx* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %27 = load i32, i32* @AR9340, align 4
  %28 = call i64 @ag71xx_is(%struct.ag71xx* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %20
  %31 = load i64*, i64** @ar933x_mdio_div_table, align 8
  store i64* %31, i64** %7, align 8
  %32 = load i64*, i64** @ar933x_mdio_div_table, align 8
  %33 = call i32 @ARRAY_SIZE(i64* %32)
  store i32 %33, i32* %8, align 4
  br label %48

34:                                               ; preds = %25
  %35 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %36 = load i32, i32* @AR7240, align 4
  %37 = call i64 @ag71xx_is(%struct.ag71xx* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64*, i64** @ar7240_mdio_div_table, align 8
  store i64* %40, i64** %7, align 8
  %41 = load i64*, i64** @ar7240_mdio_div_table, align 8
  %42 = call i32 @ARRAY_SIZE(i64* %41)
  store i32 %42, i32* %8, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load i64*, i64** @ar71xx_mdio_div_table, align 8
  store i64* %44, i64** %7, align 8
  %45 = load i64*, i64** @ar71xx_mdio_div_table, align 8
  %46 = call i32 @ARRAY_SIZE(i64* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %30
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %69, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = udiv i64 %54, %59
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @AG71XX_MDIO_MAX_CLK, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %5, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %3, align 4
  br label %75

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %49

72:                                               ; preds = %49
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %64, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @ag71xx_is(%struct.ag71xx*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
