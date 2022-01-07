; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_mac.c_xge_mac_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_mac.c_xge_mac_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xge_pdata = type { i32 }

@ICM_CONFIG0_REG_0 = common dso_local global i32 0, align 4
@ICM_CONFIG2_REG_0 = common dso_local global i32 0, align 4
@ECM_CONFIG0_REG_0 = common dso_local global i32 0, align 4
@RGMII_REG_0 = common dso_local global i32 0, align 4
@MAC_CONFIG_2 = common dso_local global i32 0, align 4
@INTERFACE_CONTROL = common dso_local global i32 0, align 4
@CFG_WAITASYNCRD_EN = common dso_local global i32 0, align 4
@INTF_MODE = common dso_local global i32 0, align 4
@HD_MODE = common dso_local global i32 0, align 4
@CFG_MACMODE = common dso_local global i32 0, align 4
@CFG_WAITASYNCRD = common dso_local global i32 0, align 4
@CFG_SPEED_125 = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i32 0, align 4
@CRC_EN = common dso_local global i32 0, align 4
@PAD_CRC = common dso_local global i32 0, align 4
@CFG_WFIFOFULLTHR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xge_mac_set_speed(%struct.xge_pdata* %0) #0 {
  %2 = alloca %struct.xge_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xge_pdata* %0, %struct.xge_pdata** %2, align 8
  %9 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %10 = load i32, i32* @ICM_CONFIG0_REG_0, align 4
  %11 = call i32 @xge_rd_csr(%struct.xge_pdata* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %13 = load i32, i32* @ICM_CONFIG2_REG_0, align 4
  %14 = call i32 @xge_rd_csr(%struct.xge_pdata* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %16 = load i32, i32* @ECM_CONFIG0_REG_0, align 4
  %17 = call i32 @xge_rd_csr(%struct.xge_pdata* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %19 = load i32, i32* @RGMII_REG_0, align 4
  %20 = call i32 @xge_rd_csr(%struct.xge_pdata* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %22 = load i32, i32* @MAC_CONFIG_2, align 4
  %23 = call i32 @xge_rd_csr(%struct.xge_pdata* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %25 = load i32, i32* @INTERFACE_CONTROL, align 4
  %26 = call i32 @xge_rd_csr(%struct.xge_pdata* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @CFG_WAITASYNCRD_EN, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %31 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %55 [
    i32 129, label %33
    i32 128, label %44
  ]

33:                                               ; preds = %1
  %34 = load i32, i32* @INTF_MODE, align 4
  %35 = call i32 @SET_REG_BITS(i32* %6, i32 %34, i32 1)
  %36 = load i32, i32* @HD_MODE, align 4
  %37 = call i32 @SET_REG_BITS(i32* %7, i32 %36, i32 0)
  %38 = load i32, i32* @CFG_MACMODE, align 4
  %39 = call i32 @SET_REG_BITS(i32* %3, i32 %38, i32 0)
  %40 = load i32, i32* @CFG_WAITASYNCRD, align 4
  %41 = call i32 @SET_REG_BITS(i32* %4, i32 %40, i32 500)
  %42 = load i32, i32* @CFG_SPEED_125, align 4
  %43 = call i32 @SET_REG_BIT(i32* %8, i32 %42, i32 0)
  br label %66

44:                                               ; preds = %1
  %45 = load i32, i32* @INTF_MODE, align 4
  %46 = call i32 @SET_REG_BITS(i32* %6, i32 %45, i32 1)
  %47 = load i32, i32* @HD_MODE, align 4
  %48 = call i32 @SET_REG_BITS(i32* %7, i32 %47, i32 1)
  %49 = load i32, i32* @CFG_MACMODE, align 4
  %50 = call i32 @SET_REG_BITS(i32* %3, i32 %49, i32 1)
  %51 = load i32, i32* @CFG_WAITASYNCRD, align 4
  %52 = call i32 @SET_REG_BITS(i32* %4, i32 %51, i32 80)
  %53 = load i32, i32* @CFG_SPEED_125, align 4
  %54 = call i32 @SET_REG_BIT(i32* %8, i32 %53, i32 0)
  br label %66

55:                                               ; preds = %1
  %56 = load i32, i32* @INTF_MODE, align 4
  %57 = call i32 @SET_REG_BITS(i32* %6, i32 %56, i32 2)
  %58 = load i32, i32* @HD_MODE, align 4
  %59 = call i32 @SET_REG_BITS(i32* %7, i32 %58, i32 2)
  %60 = load i32, i32* @CFG_MACMODE, align 4
  %61 = call i32 @SET_REG_BITS(i32* %3, i32 %60, i32 2)
  %62 = load i32, i32* @CFG_WAITASYNCRD, align 4
  %63 = call i32 @SET_REG_BITS(i32* %4, i32 %62, i32 16)
  %64 = load i32, i32* @CFG_SPEED_125, align 4
  %65 = call i32 @SET_REG_BIT(i32* %8, i32 %64, i32 1)
  br label %66

66:                                               ; preds = %55, %44, %33
  %67 = load i32, i32* @FULL_DUPLEX, align 4
  %68 = load i32, i32* @CRC_EN, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @PAD_CRC, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @CFG_WFIFOFULLTHR, align 4
  %75 = call i32 @SET_REG_BITS(i32* %5, i32 %74, i32 50)
  %76 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %77 = load i32, i32* @MAC_CONFIG_2, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @xge_wr_csr(%struct.xge_pdata* %76, i32 %77, i32 %78)
  %80 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %81 = load i32, i32* @INTERFACE_CONTROL, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @xge_wr_csr(%struct.xge_pdata* %80, i32 %81, i32 %82)
  %84 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %85 = load i32, i32* @RGMII_REG_0, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @xge_wr_csr(%struct.xge_pdata* %84, i32 %85, i32 %86)
  %88 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %89 = load i32, i32* @ICM_CONFIG0_REG_0, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @xge_wr_csr(%struct.xge_pdata* %88, i32 %89, i32 %90)
  %92 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %93 = load i32, i32* @ICM_CONFIG2_REG_0, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @xge_wr_csr(%struct.xge_pdata* %92, i32 %93, i32 %94)
  %96 = load %struct.xge_pdata*, %struct.xge_pdata** %2, align 8
  %97 = load i32, i32* @ECM_CONFIG0_REG_0, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @xge_wr_csr(%struct.xge_pdata* %96, i32 %97, i32 %98)
  ret void
}

declare dso_local i32 @xge_rd_csr(%struct.xge_pdata*, i32) #1

declare dso_local i32 @SET_REG_BITS(i32*, i32, i32) #1

declare dso_local i32 @SET_REG_BIT(i32*, i32, i32) #1

declare dso_local i32 @xge_wr_csr(%struct.xge_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
