; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_axi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_axi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }

@MVPP22_BM_ADDR_HIGH_RLS_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_CODE_CACHE_RD_CACHE = common dso_local global i32 0, align 4
@MVPP22_AXI_ATTR_CACHE_OFFS = common dso_local global i32 0, align 4
@MVPP22_AXI_CODE_DOMAIN_OUTER_DOM = common dso_local global i32 0, align 4
@MVPP22_AXI_ATTR_DOMAIN_OFFS = common dso_local global i32 0, align 4
@MVPP22_AXI_CODE_CACHE_WR_CACHE = common dso_local global i32 0, align 4
@MVPP22_AXI_BM_WR_ATTR_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_BM_RD_ATTR_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_AGGRQ_DESCR_RD_ATTR_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_TXQ_DESCR_WR_ATTR_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_TXQ_DESCR_RD_ATTR_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_RXQ_DESCR_WR_ATTR_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_TX_DATA_RD_ATTR_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_RX_DATA_WR_ATTR_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_CODE_CACHE_NON_CACHE = common dso_local global i32 0, align 4
@MVPP22_AXI_CODE_CACHE_OFFS = common dso_local global i32 0, align 4
@MVPP22_AXI_CODE_DOMAIN_SYSTEM = common dso_local global i32 0, align 4
@MVPP22_AXI_CODE_DOMAIN_OFFS = common dso_local global i32 0, align 4
@MVPP22_AXI_RD_NORMAL_CODE_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_WR_NORMAL_CODE_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_RD_SNOOP_CODE_REG = common dso_local global i32 0, align 4
@MVPP22_AXI_WR_SNOOP_CODE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*)* @mvpp2_axi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_axi_init(%struct.mvpp2* %0) #0 {
  %2 = alloca %struct.mvpp2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %2, align 8
  %6 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %7 = load i32, i32* @MVPP22_BM_ADDR_HIGH_RLS_REG, align 4
  %8 = call i32 @mvpp2_write(%struct.mvpp2* %6, i32 %7, i32 0)
  %9 = load i32, i32* @MVPP22_AXI_CODE_CACHE_RD_CACHE, align 4
  %10 = load i32, i32* @MVPP22_AXI_ATTR_CACHE_OFFS, align 4
  %11 = shl i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MVPP22_AXI_CODE_DOMAIN_OUTER_DOM, align 4
  %13 = load i32, i32* @MVPP22_AXI_ATTR_DOMAIN_OFFS, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @MVPP22_AXI_CODE_CACHE_WR_CACHE, align 4
  %18 = load i32, i32* @MVPP22_AXI_ATTR_CACHE_OFFS, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @MVPP22_AXI_CODE_DOMAIN_OUTER_DOM, align 4
  %21 = load i32, i32* @MVPP22_AXI_ATTR_DOMAIN_OFFS, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %26 = load i32, i32* @MVPP22_AXI_BM_WR_ATTR_REG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mvpp2_write(%struct.mvpp2* %25, i32 %26, i32 %27)
  %29 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %30 = load i32, i32* @MVPP22_AXI_BM_RD_ATTR_REG, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mvpp2_write(%struct.mvpp2* %29, i32 %30, i32 %31)
  %33 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %34 = load i32, i32* @MVPP22_AXI_AGGRQ_DESCR_RD_ATTR_REG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @mvpp2_write(%struct.mvpp2* %33, i32 %34, i32 %35)
  %37 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %38 = load i32, i32* @MVPP22_AXI_TXQ_DESCR_WR_ATTR_REG, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mvpp2_write(%struct.mvpp2* %37, i32 %38, i32 %39)
  %41 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %42 = load i32, i32* @MVPP22_AXI_TXQ_DESCR_RD_ATTR_REG, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @mvpp2_write(%struct.mvpp2* %41, i32 %42, i32 %43)
  %45 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %46 = load i32, i32* @MVPP22_AXI_RXQ_DESCR_WR_ATTR_REG, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @mvpp2_write(%struct.mvpp2* %45, i32 %46, i32 %47)
  %49 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %50 = load i32, i32* @MVPP22_AXI_TX_DATA_RD_ATTR_REG, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @mvpp2_write(%struct.mvpp2* %49, i32 %50, i32 %51)
  %53 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %54 = load i32, i32* @MVPP22_AXI_RX_DATA_WR_ATTR_REG, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @mvpp2_write(%struct.mvpp2* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @MVPP22_AXI_CODE_CACHE_NON_CACHE, align 4
  %58 = load i32, i32* @MVPP22_AXI_CODE_CACHE_OFFS, align 4
  %59 = shl i32 %57, %58
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @MVPP22_AXI_CODE_DOMAIN_SYSTEM, align 4
  %61 = load i32, i32* @MVPP22_AXI_CODE_DOMAIN_OFFS, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %66 = load i32, i32* @MVPP22_AXI_RD_NORMAL_CODE_REG, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @mvpp2_write(%struct.mvpp2* %65, i32 %66, i32 %67)
  %69 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %70 = load i32, i32* @MVPP22_AXI_WR_NORMAL_CODE_REG, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @mvpp2_write(%struct.mvpp2* %69, i32 %70, i32 %71)
  %73 = load i32, i32* @MVPP22_AXI_CODE_CACHE_RD_CACHE, align 4
  %74 = load i32, i32* @MVPP22_AXI_CODE_CACHE_OFFS, align 4
  %75 = shl i32 %73, %74
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @MVPP22_AXI_CODE_DOMAIN_OUTER_DOM, align 4
  %77 = load i32, i32* @MVPP22_AXI_CODE_DOMAIN_OFFS, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %82 = load i32, i32* @MVPP22_AXI_RD_SNOOP_CODE_REG, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @mvpp2_write(%struct.mvpp2* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @MVPP22_AXI_CODE_CACHE_WR_CACHE, align 4
  %86 = load i32, i32* @MVPP22_AXI_CODE_CACHE_OFFS, align 4
  %87 = shl i32 %85, %86
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* @MVPP22_AXI_CODE_DOMAIN_OUTER_DOM, align 4
  %89 = load i32, i32* @MVPP22_AXI_CODE_DOMAIN_OFFS, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  %93 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %94 = load i32, i32* @MVPP22_AXI_WR_SNOOP_CODE_REG, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @mvpp2_write(%struct.mvpp2* %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
