; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, %struct.emac_sgmii }
%struct.emac_sgmii = type { i32, i64 }

@EMAC_SGMII_PHY_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@SGMII_ISR_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SGMII_PHY_INTERRUPT_ERR = common dso_local global i32 0, align 4
@DECODE_ERROR_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @emac_sgmii_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_sgmii_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.emac_adapter*, align 8
  %7 = alloca %struct.emac_sgmii*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.emac_adapter*
  store %struct.emac_adapter* %11, %struct.emac_adapter** %6, align 8
  %12 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %12, i32 0, i32 1
  store %struct.emac_sgmii* %13, %struct.emac_sgmii** %7, align 8
  %14 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %15 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EMAC_SGMII_PHY_INTERRUPT_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @SGMII_ISR_MASK, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SGMII_PHY_INTERRUPT_ERR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %34 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %33, i32 0, i32 0
  %35 = call i32 @atomic_inc_return(i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @DECODE_ERROR_LIMIT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %40, i32 0, i32 0
  %42 = call i32 @schedule_work(i32* %41)
  %43 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %44 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %43, i32 0, i32 0
  %45 = call i32 @atomic_set(i32* %44, i32 0)
  br label %46

46:                                               ; preds = %39, %32
  br label %51

47:                                               ; preds = %27
  %48 = load %struct.emac_sgmii*, %struct.emac_sgmii** %7, align 8
  %49 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %48, i32 0, i32 0
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  br label %51

51:                                               ; preds = %47, %46
  %52 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @emac_sgmii_irq_clear(%struct.emac_adapter* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.emac_adapter*, %struct.emac_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %57, i32 0, i32 0
  %59 = call i32 @schedule_work(i32* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %25
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @emac_sgmii_irq_clear(%struct.emac_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
