; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_sgmii_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_sgmii_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_priv = type { i32 }
%struct.gbe_slave = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_priv*, %struct.gbe_slave*)* @gbe_sgmii_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbe_sgmii_config(%struct.gbe_priv* %0, %struct.gbe_slave* %1) #0 {
  %3 = alloca %struct.gbe_priv*, align 8
  %4 = alloca %struct.gbe_slave*, align 8
  store %struct.gbe_priv* %0, %struct.gbe_priv** %3, align 8
  store %struct.gbe_slave* %1, %struct.gbe_slave** %4, align 8
  %5 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %6 = call i64 @SLAVE_LINK_IS_XGMII(%struct.gbe_slave* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %31

9:                                                ; preds = %2
  %10 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %11 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %12 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SGMII_BASE(%struct.gbe_priv* %10, i32 %13)
  %15 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %16 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netcp_sgmii_reset(i32 %14, i32 %17)
  %19 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %20 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %21 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SGMII_BASE(%struct.gbe_priv* %19, i32 %22)
  %24 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %25 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gbe_slave*, %struct.gbe_slave** %4, align 8
  %28 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @netcp_sgmii_config(i32 %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @SLAVE_LINK_IS_XGMII(%struct.gbe_slave*) #1

declare dso_local i32 @netcp_sgmii_reset(i32, i32) #1

declare dso_local i32 @SGMII_BASE(%struct.gbe_priv*, i32) #1

declare dso_local i32 @netcp_sgmii_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
