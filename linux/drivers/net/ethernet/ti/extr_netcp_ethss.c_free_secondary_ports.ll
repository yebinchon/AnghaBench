; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_free_secondary_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_free_secondary_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_priv = type { i64, i32 }
%struct.gbe_slave = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_priv*)* @free_secondary_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_secondary_ports(%struct.gbe_priv* %0) #0 {
  %2 = alloca %struct.gbe_priv*, align 8
  %3 = alloca %struct.gbe_slave*, align 8
  store %struct.gbe_priv* %0, %struct.gbe_priv** %2, align 8
  br label %4

4:                                                ; preds = %22, %1
  %5 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %6 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %5, i32 0, i32 1
  %7 = call i32 @list_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %12 = call %struct.gbe_slave* @first_sec_slave(%struct.gbe_priv* %11)
  store %struct.gbe_slave* %12, %struct.gbe_slave** %3, align 8
  %13 = load %struct.gbe_slave*, %struct.gbe_slave** %3, align 8
  %14 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.gbe_slave*, %struct.gbe_slave** %3, align 8
  %19 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @phy_disconnect(i64 %20)
  br label %22

22:                                               ; preds = %17, %10
  %23 = load %struct.gbe_slave*, %struct.gbe_slave** %3, align 8
  %24 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  br label %4

26:                                               ; preds = %4
  %27 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %28 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.gbe_priv*, %struct.gbe_priv** %2, align 8
  %33 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @free_netdev(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.gbe_slave* @first_sec_slave(%struct.gbe_priv*) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_netdev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
