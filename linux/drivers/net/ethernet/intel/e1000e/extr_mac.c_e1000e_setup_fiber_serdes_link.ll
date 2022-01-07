; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_setup_fiber_serdes_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000e_setup_fiber_serdes_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_LRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Auto-negotiation enabled\0A\00", align 1
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@E1000_CTRL_SWDPIN1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No signal detected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_setup_fiber_serdes_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i32, i32* @CTRL, align 4
  %7 = call i32 @er32(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @E1000_CTRL_LRST, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %15, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = bitcast %struct.e1000_hw* %17 to %struct.e1000_hw.0*
  %19 = call i32 %16(%struct.e1000_hw.0* %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = call i64 @e1000_commit_fc_settings_generic(%struct.e1000_hw* %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %2, align 8
  br label %52

26:                                               ; preds = %1
  %27 = call i32 @e_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @CTRL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ew32(i32 %28, i32 %29)
  %31 = call i32 (...) @e1e_flush()
  %32 = call i32 @usleep_range(i32 1000, i32 2000)
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @CTRL, align 4
  %41 = call i32 @er32(i32 %40)
  %42 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %26
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = call i64 @e1000_poll_fiber_serdes_link_generic(%struct.e1000_hw* %46)
  store i64 %47, i64* %5, align 8
  br label %50

48:                                               ; preds = %39
  %49 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i64, i64* %5, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %50, %24
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_commit_fc_settings_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000_poll_fiber_serdes_link_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
