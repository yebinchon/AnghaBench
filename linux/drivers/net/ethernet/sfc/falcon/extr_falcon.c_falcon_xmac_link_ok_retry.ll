; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_xmac_link_ok_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_xmac_link_ok_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32 }

@LOOPBACKS_WS = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bashing xaui\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*, i32)* @falcon_xmac_link_ok_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_xmac_link_ok_retry(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %8 = call i32 @falcon_xmac_link_ok(%struct.ef4_nic* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %10 = call i32 @LOOPBACK_MASK(%struct.ef4_nic* %9)
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %12 = call i32 @LOOPBACKS_EXTERNAL(%struct.ef4_nic* %11)
  %13 = and i32 %10, %12
  %14 = load i32, i32* @LOOPBACKS_WS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %19 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ef4_phy_mode_disabled(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %17
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %27 = call i32 @falcon_stop_nic_stats(%struct.ef4_nic* %26)
  br label %28

28:                                               ; preds = %36, %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ false, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %50

36:                                               ; preds = %34
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %38 = load i32, i32* @hw, align 4
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %40 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netif_dbg(%struct.ef4_nic* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %44 = call i32 @falcon_reset_xaui(%struct.ef4_nic* %43)
  %45 = call i32 @udelay(i32 200)
  %46 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %47 = call i32 @falcon_xmac_link_ok(%struct.ef4_nic* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  br label %28

50:                                               ; preds = %34
  %51 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %52 = call i32 @falcon_start_nic_stats(%struct.ef4_nic* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %23
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @falcon_xmac_link_ok(%struct.ef4_nic*) #1

declare dso_local i32 @LOOPBACK_MASK(%struct.ef4_nic*) #1

declare dso_local i32 @LOOPBACKS_EXTERNAL(%struct.ef4_nic*) #1

declare dso_local i64 @ef4_phy_mode_disabled(i32) #1

declare dso_local i32 @falcon_stop_nic_stats(%struct.ef4_nic*) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @falcon_reset_xaui(%struct.ef4_nic*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @falcon_start_nic_stats(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
