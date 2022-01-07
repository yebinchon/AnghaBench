; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_init_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_init_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32, i8*, i8* }

@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@TG3_PHYFLG_10_100_ONLY = common dso_local global i32 0, align 4
@TG3_PHYFLG_DISABLE_1G_HD_ADV = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@TG3_PHYFLG_ANY_SERDES = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i8* null, align 8
@DUPLEX_UNKNOWN = common dso_local global i8* null, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_phy_init_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_init_link_config(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load i32, i32* @ADVERTISED_Autoneg, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.tg3*, %struct.tg3** %2, align 8
  %6 = getelementptr inbounds %struct.tg3, %struct.tg3* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = load %struct.tg3*, %struct.tg3** %2, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TG3_PHYFLG_DISABLE_1G_HD_ADV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.tg3*, %struct.tg3** %2, align 8
  %28 = getelementptr inbounds %struct.tg3, %struct.tg3* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %35 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ADVERTISED_TP, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %26
  %46 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %33
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.tg3*, %struct.tg3** %2, align 8
  %52 = getelementptr inbounds %struct.tg3, %struct.tg3* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i8*, i8** @SPEED_UNKNOWN, align 8
  %55 = load %struct.tg3*, %struct.tg3** %2, align 8
  %56 = getelementptr inbounds %struct.tg3, %struct.tg3* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** @DUPLEX_UNKNOWN, align 8
  %59 = load %struct.tg3*, %struct.tg3** %2, align 8
  %60 = getelementptr inbounds %struct.tg3, %struct.tg3* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* @AUTONEG_ENABLE, align 4
  %63 = load %struct.tg3*, %struct.tg3** %2, align 8
  %64 = getelementptr inbounds %struct.tg3, %struct.tg3* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 8
  %66 = load i8*, i8** @SPEED_UNKNOWN, align 8
  %67 = load %struct.tg3*, %struct.tg3** %2, align 8
  %68 = getelementptr inbounds %struct.tg3, %struct.tg3* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  %70 = load i8*, i8** @DUPLEX_UNKNOWN, align 8
  %71 = load %struct.tg3*, %struct.tg3** %2, align 8
  %72 = getelementptr inbounds %struct.tg3, %struct.tg3* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.tg3*, %struct.tg3** %2, align 8
  %75 = getelementptr inbounds %struct.tg3, %struct.tg3* %74, i32 0, i32 1
  store i32 -1, i32* %75, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
