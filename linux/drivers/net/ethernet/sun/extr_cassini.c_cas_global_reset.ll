; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_global_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_global_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64, i32, i32 }

@SW_RESET_TX = common dso_local global i32 0, align 4
@SW_RESET_RX = common dso_local global i32 0, align 4
@SW_RESET_BLOCK_PCS_SLINK = common dso_local global i32 0, align 4
@REG_SW_RESET = common dso_local global i64 0, align 8
@STOP_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sw reset failed\0A\00", align 1
@BIM_CFG_DPAR_INTR_ENABLE = common dso_local global i32 0, align 4
@BIM_CFG_RMA_INTR_ENABLE = common dso_local global i32 0, align 4
@BIM_CFG_RTA_INTR_ENABLE = common dso_local global i32 0, align 4
@REG_BIM_CFG = common dso_local global i64 0, align 8
@PCI_ERR_BADACK = common dso_local global i32 0, align 4
@PCI_ERR_DTRTO = common dso_local global i32 0, align 4
@PCI_ERR_OTHER = common dso_local global i32 0, align 4
@PCI_ERR_BIM_DMA_WRITE = common dso_local global i32 0, align 4
@PCI_ERR_BIM_DMA_READ = common dso_local global i32 0, align 4
@REG_PCI_ERR_STATUS_MASK = common dso_local global i64 0, align 8
@PCS_DATAPATH_MODE_MII = common dso_local global i32 0, align 4
@REG_PCS_DATAPATH_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32)* @cas_global_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_global_reset(%struct.cas* %0, i32 %1) #0 {
  %3 = alloca %struct.cas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.cas*, %struct.cas** %3, align 8
  %11 = getelementptr inbounds %struct.cas, %struct.cas* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CAS_PHY_MII(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @SW_RESET_TX, align 4
  %17 = load i32, i32* @SW_RESET_RX, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SW_RESET_BLOCK_PCS_SLINK, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.cas*, %struct.cas** %3, align 8
  %22 = getelementptr inbounds %struct.cas, %struct.cas* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_SW_RESET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  br label %37

27:                                               ; preds = %9, %2
  %28 = load i32, i32* @SW_RESET_TX, align 4
  %29 = load i32, i32* @SW_RESET_RX, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.cas*, %struct.cas** %3, align 8
  %32 = getelementptr inbounds %struct.cas, %struct.cas* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_SW_RESET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  br label %37

37:                                               ; preds = %27, %15
  %38 = call i32 @mdelay(i32 3)
  %39 = load i32, i32* @STOP_TRIES, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %58, %37
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct.cas*, %struct.cas** %3, align 8
  %46 = getelementptr inbounds %struct.cas, %struct.cas* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_SW_RESET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SW_RESET_TX, align 4
  %53 = load i32, i32* @SW_RESET_RX, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %65

58:                                               ; preds = %44
  %59 = call i32 @udelay(i32 10)
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.cas*, %struct.cas** %3, align 8
  %62 = getelementptr inbounds %struct.cas, %struct.cas* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @netdev_err(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* @BIM_CFG_DPAR_INTR_ENABLE, align 4
  %67 = load i32, i32* @BIM_CFG_RMA_INTR_ENABLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @BIM_CFG_RTA_INTR_ENABLE, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.cas*, %struct.cas** %3, align 8
  %72 = getelementptr inbounds %struct.cas, %struct.cas* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @REG_BIM_CFG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load i32, i32* @PCI_ERR_BADACK, align 4
  %78 = load i32, i32* @PCI_ERR_DTRTO, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PCI_ERR_OTHER, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PCI_ERR_BIM_DMA_WRITE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PCI_ERR_BIM_DMA_READ, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = and i32 -1, %86
  %88 = load %struct.cas*, %struct.cas** %3, align 8
  %89 = getelementptr inbounds %struct.cas, %struct.cas* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @REG_PCI_ERR_STATUS_MASK, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  %94 = load i32, i32* @PCS_DATAPATH_MODE_MII, align 4
  %95 = load %struct.cas*, %struct.cas** %3, align 8
  %96 = getelementptr inbounds %struct.cas, %struct.cas* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @REG_PCS_DATAPATH_MODE, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  ret void
}

declare dso_local i32 @CAS_PHY_MII(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
