; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_common_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_common_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, %struct.emac_sgmii }
%struct.emac_sgmii = type { i64, i64 }

@EMAC_SGMII_PHY_INTERRUPT_MASK = common dso_local global i64 0, align 8
@emac_sgmii_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"emac-sgmii\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"could not register handler for internal PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_adapter*)* @emac_sgmii_common_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_sgmii_common_open(%struct.emac_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_adapter*, align 8
  %4 = alloca %struct.emac_sgmii*, align 8
  %5 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  %6 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %6, i32 0, i32 1
  store %struct.emac_sgmii* %7, %struct.emac_sgmii** %4, align 8
  %8 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %9 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %14 = call i32 @emac_sgmii_irq_clear(%struct.emac_adapter* %13, i32 255)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %12
  %20 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %21 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EMAC_SGMII_PHY_INTERRUPT_MASK, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %27 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @emac_sgmii_interrupt, align 4
  %30 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %31 = call i32 @request_irq(i64 %28, i32 %29, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.emac_adapter* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %19
  %35 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netdev_err(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %40, %1
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %34, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @emac_sgmii_irq_clear(%struct.emac_adapter*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.emac_adapter*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
