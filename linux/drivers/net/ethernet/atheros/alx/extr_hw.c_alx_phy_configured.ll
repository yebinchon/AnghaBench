; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_phy_configured.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_phy_configured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ALX_DRV_PHY = common dso_local global i32 0, align 4
@ALX_DRV_PHY_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alx_phy_configured(%struct.alx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.alx_hw* %0, %struct.alx_hw** %3, align 8
  %6 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %7 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %8 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ethadv_to_hw_cfg(%struct.alx_hw* %6, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* @ALX_DRV_PHY, align 4
  %13 = call i64 @ALX_GET_FIELD(i64 %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %15 = call i64 @alx_get_phy_config(%struct.alx_hw* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ALX_DRV_PHY_UNKNOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @ethadv_to_hw_cfg(%struct.alx_hw*, i32) #1

declare dso_local i64 @ALX_GET_FIELD(i64, i32) #1

declare dso_local i64 @alx_get_phy_config(%struct.alx_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
