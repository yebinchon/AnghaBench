; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { %struct.atl2_hw, %struct.TYPE_4__*, i32 }
%struct.atl2_hw = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@REG_ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ISR_PHY = common dso_local global i32 0, align 4
@ISR_DIS_INT = common dso_local global i32 0, align 4
@ISR_PHY_LINKDOWN = common dso_local global i32 0, align 4
@REG_IMR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ISR_DMAR_TO_RST = common dso_local global i32 0, align 4
@ISR_DMAW_TO_RST = common dso_local global i32 0, align 4
@ISR_MANUAL = common dso_local global i32 0, align 4
@ISR_TX_EVENT = common dso_local global i32 0, align 4
@ISR_RX_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atl2_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atl2_adapter*, align 8
  %7 = alloca %struct.atl2_hw*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.atl2_adapter* @netdev_priv(i8* %9)
  store %struct.atl2_adapter* %10, %struct.atl2_adapter** %6, align 8
  %11 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %11, i32 0, i32 0
  store %struct.atl2_hw* %12, %struct.atl2_hw** %7, align 8
  %13 = load %struct.atl2_hw*, %struct.atl2_hw** %7, align 8
  %14 = load i32, i32* @REG_ISR, align 4
  %15 = call i32 @ATL2_READ_REG(%struct.atl2_hw* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 0, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %118

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ISR_PHY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %27 = call i32 @atl2_clear_phy_int(%struct.atl2_adapter* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.atl2_hw*, %struct.atl2_hw** %7, align 8
  %30 = load i32, i32* @REG_ISR, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ISR_DIS_INT, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %29, i32 %30, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ISR_PHY_LINKDOWN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %28
  %40 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i64 @netif_running(%struct.TYPE_4__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.atl2_hw*, %struct.atl2_hw** %7, align 8
  %47 = load i32, i32* @REG_ISR, align 4
  %48 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %46, i32 %47, i32 0)
  %49 = load %struct.atl2_hw*, %struct.atl2_hw** %7, align 8
  %50 = load i32, i32* @REG_IMR, align 4
  %51 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %49, i32 %50, i32 0)
  %52 = load %struct.atl2_hw*, %struct.atl2_hw** %7, align 8
  %53 = call i32 @ATL2_WRITE_FLUSH(%struct.atl2_hw* %52)
  %54 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %54, i32 0, i32 2
  %56 = call i32 @schedule_work(i32* %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %118

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %28
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @ISR_DMAR_TO_RST, align 4
  %62 = load i32, i32* @ISR_DMAW_TO_RST, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.atl2_hw*, %struct.atl2_hw** %7, align 8
  %68 = load i32, i32* @REG_ISR, align 4
  %69 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %67, i32 %68, i32 0)
  %70 = load %struct.atl2_hw*, %struct.atl2_hw** %7, align 8
  %71 = load i32, i32* @REG_IMR, align 4
  %72 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %70, i32 %71, i32 0)
  %73 = load %struct.atl2_hw*, %struct.atl2_hw** %7, align 8
  %74 = call i32 @ATL2_WRITE_FLUSH(%struct.atl2_hw* %73)
  %75 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %75, i32 0, i32 2
  %77 = call i32 @schedule_work(i32* %76)
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %78, i32* %3, align 4
  br label %118

79:                                               ; preds = %59
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @ISR_PHY, align 4
  %82 = load i32, i32* @ISR_MANUAL, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %88 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %95 = call i32 @atl2_check_for_link(%struct.atl2_adapter* %94)
  br label %96

96:                                               ; preds = %86, %79
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ISR_TX_EVENT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %103 = call i32 @atl2_intr_tx(%struct.atl2_adapter* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @ISR_RX_EVENT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %111 = call i32 @atl2_intr_rx(%struct.atl2_adapter* %110)
  br label %112

112:                                              ; preds = %109, %104
  %113 = load %struct.atl2_adapter*, %struct.atl2_adapter** %6, align 8
  %114 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %113, i32 0, i32 0
  %115 = load i32, i32* @REG_ISR, align 4
  %116 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %114, i32 %115, i32 0)
  %117 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %112, %66, %45, %18
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.atl2_adapter* @netdev_priv(i8*) #1

declare dso_local i32 @ATL2_READ_REG(%struct.atl2_hw*, i32) #1

declare dso_local i32 @atl2_clear_phy_int(%struct.atl2_adapter*) #1

declare dso_local i32 @ATL2_WRITE_REG(%struct.atl2_hw*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.TYPE_4__*) #1

declare dso_local i32 @ATL2_WRITE_FLUSH(%struct.atl2_hw*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @atl2_check_for_link(%struct.atl2_adapter*) #1

declare dso_local i32 @atl2_intr_tx(%struct.atl2_adapter*) #1

declare dso_local i32 @atl2_intr_rx(%struct.atl2_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
