; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_init_sgmii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_init_sgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.mvpp2* }
%struct.mvpp2 = type { i32 }

@GENCONF_PORT_CTRL0 = common dso_local global i32 0, align 4
@GENCONF_PORT_CTRL0_BUS_WIDTH_SELECT = common dso_local global i32 0, align 4
@GENCONF_PORT_CTRL0_RX_DATA_SAMPLE = common dso_local global i32 0, align 4
@GENCONF_CTRL0 = common dso_local global i32 0, align 4
@GENCONF_CTRL0_PORT0_RGMII = common dso_local global i32 0, align 4
@GENCONF_CTRL0_PORT1_RGMII_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp22_gop_init_sgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_gop_init_sgmii(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %5 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %6 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %5, i32 0, i32 1
  %7 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  store %struct.mvpp2* %7, %struct.mvpp2** %3, align 8
  %8 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %9 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GENCONF_PORT_CTRL0, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %4)
  %13 = load i32, i32* @GENCONF_PORT_CTRL0_BUS_WIDTH_SELECT, align 4
  %14 = load i32, i32* @GENCONF_PORT_CTRL0_RX_DATA_SAMPLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %19 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GENCONF_PORT_CTRL0, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @regmap_write(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %25 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %61

28:                                               ; preds = %1
  %29 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %30 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GENCONF_CTRL0, align 4
  %33 = call i32 @regmap_read(i32 %31, i32 %32, i32* %4)
  %34 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %35 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* @GENCONF_CTRL0_PORT0_RGMII, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %28
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %45 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @GENCONF_CTRL0_PORT1_RGMII_MII, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %56 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GENCONF_CTRL0, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @regmap_write(i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %1
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
