; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_phy_mode_mismatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_phy_mode_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sja1105_xmii_params_entry* }
%struct.sja1105_xmii_params_entry = type { i32* }

@BLK_IDX_XMII_PARAMS = common dso_local global i64 0, align 8
@XMII_MODE_MII = common dso_local global i32 0, align 4
@XMII_MODE_RMII = common dso_local global i32 0, align 4
@XMII_MODE_RGMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32, i32)* @sja1105_phy_mode_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_phy_mode_mismatch(%struct.sja1105_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sja1105_xmii_params_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %11 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i64, i64* @BLK_IDX_XMII_PARAMS, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.sja1105_xmii_params_entry*, %struct.sja1105_xmii_params_entry** %16, align 8
  store %struct.sja1105_xmii_params_entry* %17, %struct.sja1105_xmii_params_entry** %8, align 8
  %18 = load %struct.sja1105_xmii_params_entry*, %struct.sja1105_xmii_params_entry** %8, align 8
  %19 = getelementptr inbounds %struct.sja1105_xmii_params_entry, %struct.sja1105_xmii_params_entry* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %41 [
    i32 133, label %26
    i32 128, label %31
    i32 132, label %36
    i32 131, label %36
    i32 130, label %36
    i32 129, label %36
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @XMII_MODE_MII, align 4
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %42

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @XMII_MODE_RMII, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %3, %3, %3, %3
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @XMII_MODE_RGMII, align 4
  %39 = icmp ne i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %36, %31, %26
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
