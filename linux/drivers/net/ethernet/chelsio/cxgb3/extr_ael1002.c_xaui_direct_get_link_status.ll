; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_xaui_direct_get_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_xaui_direct_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@A_XGM_SERDES_STAT0 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT1 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT2 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT3 = common dso_local global i32 0, align 4
@F_LOWSIG0 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @xaui_direct_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xaui_direct_get_link_status(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.cphy*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %5
  %16 = load %struct.cphy*, %struct.cphy** %6, align 8
  %17 = getelementptr inbounds %struct.cphy, %struct.cphy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.cphy*, %struct.cphy** %6, align 8
  %21 = getelementptr inbounds %struct.cphy, %struct.cphy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @A_XGM_SERDES_STAT0, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @XGM_REG(i32 %23, i32 %24)
  %26 = call i32 @t3_read_reg(i32 %22, i32 %25)
  %27 = load %struct.cphy*, %struct.cphy** %6, align 8
  %28 = getelementptr inbounds %struct.cphy, %struct.cphy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @A_XGM_SERDES_STAT1, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @XGM_REG(i32 %30, i32 %31)
  %33 = call i32 @t3_read_reg(i32 %29, i32 %32)
  %34 = or i32 %26, %33
  %35 = load %struct.cphy*, %struct.cphy** %6, align 8
  %36 = getelementptr inbounds %struct.cphy, %struct.cphy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @A_XGM_SERDES_STAT2, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @XGM_REG(i32 %38, i32 %39)
  %41 = call i32 @t3_read_reg(i32 %37, i32 %40)
  %42 = or i32 %34, %41
  %43 = load %struct.cphy*, %struct.cphy** %6, align 8
  %44 = getelementptr inbounds %struct.cphy, %struct.cphy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @A_XGM_SERDES_STAT3, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @XGM_REG(i32 %46, i32 %47)
  %49 = call i32 @t3_read_reg(i32 %45, i32 %48)
  %50 = or i32 %42, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @F_LOWSIG0, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %15, %5
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @SPEED_10000, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @DUPLEX_FULL, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %64
  ret i32 0
}

declare dso_local i32 @t3_read_reg(i32, i32) #1

declare dso_local i32 @XGM_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
