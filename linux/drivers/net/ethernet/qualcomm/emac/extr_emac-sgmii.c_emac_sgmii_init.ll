; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_sgmii_init(%struct.emac_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_adapter*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  %4 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.emac_adapter*)**
  %16 = load i32 (%struct.emac_adapter*)*, i32 (%struct.emac_adapter*)** %15, align 8
  %17 = icmp ne i32 (%struct.emac_adapter*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %29

19:                                               ; preds = %9
  %20 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.emac_adapter*)**
  %26 = load i32 (%struct.emac_adapter*)*, i32 (%struct.emac_adapter*)** %25, align 8
  %27 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %28 = call i32 %26(%struct.emac_adapter* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %19, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
