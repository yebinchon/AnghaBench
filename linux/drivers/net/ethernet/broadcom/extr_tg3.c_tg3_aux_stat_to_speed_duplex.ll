; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_aux_stat_to_speed_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_aux_stat_to_speed_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MII_TG3_AUX_STAT_SPDMASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@TG3_PHYFLG_IS_FET = common dso_local global i32 0, align 4
@MII_TG3_AUX_STAT_100 = common dso_local global i32 0, align 4
@MII_TG3_AUX_STAT_FULL = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32, i32*, i32*)* @tg3_aux_stat_to_speed_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_aux_stat_to_speed_duplex(%struct.tg3* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.tg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.tg3* %0, %struct.tg3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MII_TG3_AUX_STAT_SPDMASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %42 [
    i32 128, label %12
    i32 129, label %17
    i32 130, label %22
    i32 131, label %27
    i32 132, label %32
    i32 133, label %37
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* @SPEED_10, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @DUPLEX_HALF, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  br label %77

17:                                               ; preds = %4
  %18 = load i32, i32* @SPEED_10, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @DUPLEX_FULL, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  br label %77

22:                                               ; preds = %4
  %23 = load i32, i32* @SPEED_100, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @DUPLEX_HALF, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  br label %77

27:                                               ; preds = %4
  %28 = load i32, i32* @SPEED_100, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @DUPLEX_FULL, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %77

32:                                               ; preds = %4
  %33 = load i32, i32* @SPEED_1000, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @DUPLEX_HALF, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %77

37:                                               ; preds = %4
  %38 = load i32, i32* @SPEED_1000, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @DUPLEX_FULL, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %77

42:                                               ; preds = %4
  %43 = load %struct.tg3*, %struct.tg3** %5, align 8
  %44 = getelementptr inbounds %struct.tg3, %struct.tg3* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MII_TG3_AUX_STAT_100, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @SPEED_100, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @SPEED_10, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @MII_TG3_AUX_STAT_FULL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @DUPLEX_FULL, align 4
  br label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @DUPLEX_HALF, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %77

72:                                               ; preds = %42
  %73 = load i32, i32* @SPEED_UNKNOWN, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %69, %37, %32, %27, %22, %17, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
