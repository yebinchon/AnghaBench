; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_irq_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_irq_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.TYPE_2__*, %struct.emac_sgmii }
%struct.TYPE_2__ = type { i32 }
%struct.emac_sgmii = type { i64 }

@EMAC_SGMII_PHY_INTERRUPT_CLEAR = common dso_local global i64 0, align 8
@IRQ_GLOBAL_CLEAR = common dso_local global i32 0, align 4
@EMAC_SGMII_PHY_IRQ_CMD = common dso_local global i64 0, align 8
@EMAC_SGMII_PHY_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@SGMII_PHY_IRQ_CLR_WAIT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: failed to clear SGMII irq: status:0x%x bits:0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_adapter*, i32)* @emac_sgmii_irq_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_sgmii_irq_clear(%struct.emac_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.emac_sgmii*, align 8
  %7 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %8, i32 0, i32 1
  store %struct.emac_sgmii* %9, %struct.emac_sgmii** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.emac_sgmii*, %struct.emac_sgmii** %6, align 8
  %12 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EMAC_SGMII_PHY_INTERRUPT_CLEAR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel_relaxed(i32 %10, i64 %15)
  %17 = load i32, i32* @IRQ_GLOBAL_CLEAR, align 4
  %18 = load %struct.emac_sgmii*, %struct.emac_sgmii** %6, align 8
  %19 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EMAC_SGMII_PHY_IRQ_CMD, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i32 %17, i64 %22)
  %24 = call i32 (...) @wmb()
  %25 = load %struct.emac_sgmii*, %struct.emac_sgmii** %6, align 8
  %26 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EMAC_SGMII_PHY_INTERRUPT_STATUS, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @SGMII_PHY_IRQ_CLR_WAIT_TIME, align 4
  %38 = call i64 @readl_poll_timeout_atomic(i64 %29, i32 %30, i32 %36, i32 1, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %2
  %41 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @net_err_ratelimited(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %65

51:                                               ; preds = %2
  %52 = load %struct.emac_sgmii*, %struct.emac_sgmii** %6, align 8
  %53 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EMAC_SGMII_PHY_IRQ_CMD, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel_relaxed(i32 0, i64 %56)
  %58 = load %struct.emac_sgmii*, %struct.emac_sgmii** %6, align 8
  %59 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EMAC_SGMII_PHY_INTERRUPT_CLEAR, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel_relaxed(i32 0, i64 %62)
  %64 = call i32 (...) @wmb()
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %51, %40
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @net_err_ratelimited(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
