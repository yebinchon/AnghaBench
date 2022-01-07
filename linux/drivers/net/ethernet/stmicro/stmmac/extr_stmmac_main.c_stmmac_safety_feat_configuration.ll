; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_safety_feat_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_safety_feat_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Enabling Safety Features\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"No Safety Features support found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_safety_feat_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_safety_feat_configuration(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %3 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %4 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %10 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netdev_info(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @stmmac_safety_feat_config(%struct.stmmac_priv* %13, i32 %16, i64 %20)
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @netdev_info(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @stmmac_safety_feat_config(%struct.stmmac_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
