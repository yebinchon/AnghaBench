; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32, %struct.mvpp2* }
%struct.mvpp2 = type { i32 }

@GENCONF_PORT_CTRL1 = common dso_local global i32 0, align 4
@GENCONF_PORT_CTRL0 = common dso_local global i32 0, align 4
@GENCONF_PORT_CTRL0_CLK_DIV_PHASE_CLR = common dso_local global i32 0, align 4
@GENCONF_SOFT_RESET1 = common dso_local global i32 0, align 4
@GENCONF_SOFT_RESET1_GOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid port configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*)* @mvpp22_gop_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp22_gop_init(%struct.mvpp2_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %7 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %6, i32 0, i32 3
  %8 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  store %struct.mvpp2* %8, %struct.mvpp2** %4, align 8
  %9 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %10 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %99

14:                                               ; preds = %1
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %16 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %39 [
    i32 132, label %18
    i32 131, label %18
    i32 130, label %18
    i32 129, label %18
    i32 128, label %27
    i32 135, label %27
    i32 133, label %27
    i32 134, label %30
  ]

18:                                               ; preds = %14, %14, %14, %14
  %19 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %20 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %92

24:                                               ; preds = %18
  %25 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %26 = call i32 @mvpp22_gop_init_rgmii(%struct.mvpp2_port* %25)
  br label %40

27:                                               ; preds = %14, %14, %14
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %29 = call i32 @mvpp22_gop_init_sgmii(%struct.mvpp2_port* %28)
  br label %40

30:                                               ; preds = %14
  %31 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %32 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %92

36:                                               ; preds = %30
  %37 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %38 = call i32 @mvpp22_gop_init_10gkr(%struct.mvpp2_port* %37)
  br label %40

39:                                               ; preds = %14
  br label %91

40:                                               ; preds = %36, %27, %24
  %41 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %42 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GENCONF_PORT_CTRL1, align 4
  %45 = call i32 @regmap_read(i32 %43, i32 %44, i32* %5)
  %46 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %47 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @GENCONF_PORT_CTRL1_RESET(i32 %48)
  %50 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %51 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @GENCONF_PORT_CTRL1_EN(i32 %52)
  %54 = or i32 %49, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %58 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GENCONF_PORT_CTRL1, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @regmap_write(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %64 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GENCONF_PORT_CTRL0, align 4
  %67 = call i32 @regmap_read(i32 %65, i32 %66, i32* %5)
  %68 = load i32, i32* @GENCONF_PORT_CTRL0_CLK_DIV_PHASE_CLR, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %72 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GENCONF_PORT_CTRL0, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @regmap_write(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %78 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @GENCONF_SOFT_RESET1, align 4
  %81 = call i32 @regmap_read(i32 %79, i32 %80, i32* %5)
  %82 = load i32, i32* @GENCONF_SOFT_RESET1_GOP, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %86 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @GENCONF_SOFT_RESET1, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @regmap_write(i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %40, %39
  store i32 0, i32* %2, align 4
  br label %99

92:                                               ; preds = %35, %23
  %93 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %94 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @netdev_err(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %92, %91, %13
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @mvpp22_gop_init_rgmii(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_gop_init_sgmii(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_gop_init_10gkr(%struct.mvpp2_port*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @GENCONF_PORT_CTRL1_RESET(i32) #1

declare dso_local i32 @GENCONF_PORT_CTRL1_EN(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
