; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_init_rgmii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_init_rgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.mvpp2* }
%struct.mvpp2 = type { i32 }

@GENCONF_PORT_CTRL0 = common dso_local global i32 0, align 4
@GENCONF_PORT_CTRL0_BUS_WIDTH_SELECT = common dso_local global i32 0, align 4
@GENCONF_CTRL0 = common dso_local global i32 0, align 4
@GENCONF_CTRL0_PORT0_RGMII = common dso_local global i32 0, align 4
@GENCONF_CTRL0_PORT1_RGMII = common dso_local global i32 0, align 4
@GENCONF_CTRL0_PORT1_RGMII_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp22_gop_init_rgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_gop_init_rgmii(%struct.mvpp2_port* %0) #0 {
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
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %17 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GENCONF_PORT_CTRL0, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @regmap_write(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %23 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GENCONF_CTRL0, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %4)
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %28 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @GENCONF_CTRL0_PORT0_RGMII, align 4
  %33 = load i32, i32* @GENCONF_CTRL0_PORT1_RGMII, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %47

37:                                               ; preds = %1
  %38 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %39 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @GENCONF_CTRL0_PORT1_RGMII_MII, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %49 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GENCONF_CTRL0, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @regmap_write(i32 %50, i32 %51, i32 %52)
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
