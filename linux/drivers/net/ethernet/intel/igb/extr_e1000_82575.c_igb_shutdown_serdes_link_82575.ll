; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_shutdown_serdes_link_82575.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_shutdown_serdes_link_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@E1000_PCS_CFG0 = common dso_local global i32 0, align 4
@E1000_PCS_CFG_PCS_EN = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP3_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_shutdown_serdes_link_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = call i64 @igb_sgmii_active_82575(%struct.e1000_hw* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %39

15:                                               ; preds = %10, %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = call i32 @igb_enable_mng_pass_thru(%struct.e1000_hw* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @E1000_PCS_CFG0, align 4
  %21 = call i32 @rd32(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @E1000_PCS_CFG_PCS_EN, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @E1000_PCS_CFG0, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @wr32(i32 %26, i32 %27)
  %29 = load i32, i32* @E1000_CTRL_EXT, align 4
  %30 = call i32 @rd32(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @E1000_CTRL_EXT_SDP3_DATA, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @E1000_CTRL_EXT, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @wr32(i32 %34, i32 %35)
  %37 = call i32 (...) @wrfl()
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %39

39:                                               ; preds = %14, %19, %15
  ret void
}

declare dso_local i64 @igb_sgmii_active_82575(%struct.e1000_hw*) #1

declare dso_local i32 @igb_enable_mng_pass_thru(%struct.e1000_hw*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
