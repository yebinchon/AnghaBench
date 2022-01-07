; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii.c_emac_sgmii_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_sgmii_link_change(%struct.emac_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %7 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.emac_adapter*, i32)**
  %18 = load i32 (%struct.emac_adapter*, i32)*, i32 (%struct.emac_adapter*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.emac_adapter*, i32)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %32

21:                                               ; preds = %11
  %22 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.emac_adapter*, i32)**
  %28 = load i32 (%struct.emac_adapter*, i32)*, i32 (%struct.emac_adapter*, i32)** %27, align 8
  %29 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 %28(%struct.emac_adapter* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
