; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_get_cfg_done_82575.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_get_cfg_done_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@PHY_CFG_TIMEOUT = common dso_local global i64 0, align 8
@E1000_NVM_CFG_DONE_PORT_0 = common dso_local global i32 0, align 4
@E1000_NVM_CFG_DONE_PORT_1 = common dso_local global i32 0, align 4
@E1000_FUNC_2 = common dso_local global i32 0, align 4
@E1000_NVM_CFG_DONE_PORT_2 = common dso_local global i32 0, align 4
@E1000_FUNC_3 = common dso_local global i32 0, align 4
@E1000_NVM_CFG_DONE_PORT_3 = common dso_local global i32 0, align 4
@E1000_EEMNGCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MNG configuration cycle has not completed.\0A\00", align 1
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_PRES = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_get_cfg_done_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_get_cfg_done_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i64, i64* @PHY_CFG_TIMEOUT, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_0, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_1, align 4
  store i32 %13, i32* %4, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @E1000_FUNC_2, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_2, align 4
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @E1000_FUNC_3, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_3, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %23
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %12
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* @E1000_EEMNGCTL, align 4
  %40 = call i32 @rd32(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %49

45:                                               ; preds = %38
  %46 = call i32 @usleep_range(i32 1000, i32 2000)
  %47 = load i64, i64* %3, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %3, align 8
  br label %35

49:                                               ; preds = %44, %35
  %50 = load i64, i64* %3, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @hw_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* @E1000_EECD, align 4
  %56 = call i32 @rd32(i32 %55)
  %57 = load i32, i32* @E1000_EECD_PRES, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @e1000_phy_igp_3, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %69 = call i32 @igb_phy_init_script_igp3(%struct.e1000_hw* %68)
  br label %70

70:                                               ; preds = %67, %60, %54
  ret i64 0
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_phy_init_script_igp3(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
