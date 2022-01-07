; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_probe_ext_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_probe_ext_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { i32, i32 }

@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @amd8111e_probe_ext_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111e_probe_ext_phy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.amd8111e_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.amd8111e_priv* %8, %struct.amd8111e_priv** %3, align 8
  store i32 30, i32* %4, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MII_PHYSID1, align 4
  %16 = call i64 @amd8111e_read_phy(%struct.amd8111e_priv* %13, i32 %14, i32 %15, i32* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %36

19:                                               ; preds = %12
  %20 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MII_PHYSID2, align 4
  %23 = call i64 @amd8111e_read_phy(%struct.amd8111e_priv* %20, i32 %21, i32 %22, i32* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %36

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %32 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %35 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %44

36:                                               ; preds = %25, %18
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  br label %9

39:                                               ; preds = %9
  %40 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %41 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %43 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %26
  ret void
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @amd8111e_read_phy(%struct.amd8111e_priv*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
