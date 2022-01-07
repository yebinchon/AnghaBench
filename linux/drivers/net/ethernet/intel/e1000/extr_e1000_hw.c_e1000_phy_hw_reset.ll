; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_phy_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"Resetting Phy...\0A\00", align 1
@e1000_82543 = common dso_local global i64 0, align 8
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP4_DIR = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP4_DATA = common dso_local global i32 0, align 4
@e1000_82541 = common dso_local global i64 0, align 8
@e1000_82547 = common dso_local global i64 0, align 8
@LEDCTL = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_MASK = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_ENABLE = common dso_local global i32 0, align 4
@IGP_LED3_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_phy_hw_reset(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = call i32 @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_82543, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @CTRL, align 4
  %14 = call i32 @er32(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @CTRL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @ew32(i32 %15, i32 %18)
  %20 = call i32 (...) @E1000_WRITE_FLUSH()
  %21 = call i32 @msleep(i32 10)
  %22 = load i32, i32* @CTRL, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ew32(i32 %22, i32 %23)
  %25 = call i32 (...) @E1000_WRITE_FLUSH()
  br label %48

26:                                               ; preds = %1
  %27 = load i32, i32* @CTRL_EXT, align 4
  %28 = call i32 @er32(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @E1000_CTRL_EXT_SDP4_DIR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @E1000_CTRL_EXT_SDP4_DATA, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @CTRL_EXT, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ew32(i32 %36, i32 %37)
  %39 = call i32 (...) @E1000_WRITE_FLUSH()
  %40 = call i32 @msleep(i32 10)
  %41 = load i32, i32* @E1000_CTRL_EXT_SDP4_DATA, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @CTRL_EXT, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ew32(i32 %44, i32 %45)
  %47 = call i32 (...) @E1000_WRITE_FLUSH()
  br label %48

48:                                               ; preds = %26, %12
  %49 = call i32 @udelay(i32 150)
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @e1000_82541, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @e1000_82547, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55, %48
  %62 = load i32, i32* @LEDCTL, align 4
  %63 = call i32 @er32(i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @IGP_ACTIVITY_LED_MASK, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @IGP_ACTIVITY_LED_ENABLE, align 4
  %68 = load i32, i32* @IGP_LED3_MODE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @LEDCTL, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ew32(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %61, %55
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = call i32 @e1000_get_phy_cfg_done(%struct.e1000_hw* %76)
  ret i32 %77
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_get_phy_cfg_done(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
