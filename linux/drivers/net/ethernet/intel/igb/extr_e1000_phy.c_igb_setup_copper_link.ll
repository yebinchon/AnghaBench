; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_setup_copper_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_setup_copper_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Forcing Speed and Duplex\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Error Forcing Speed and Duplex\0A\00", align 1
@COPPER_LINK_UP_LIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Valid link established!!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to establish link!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_setup_copper_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = call i64 @igb_copper_link_autoneg(%struct.e1000_hw* %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %51

16:                                               ; preds = %10
  br label %32

17:                                               ; preds = %1
  %18 = call i32 @hw_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.0*
  %26 = call i64 %23(%struct.e1000_hw.0* %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 @hw_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %51

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = load i32, i32* @COPPER_LINK_UP_LIMIT, align 4
  %35 = call i64 @igb_phy_has_link(%struct.e1000_hw* %33, i32 %34, i32 10, i32* %4)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %51

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = call i32 @hw_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = call i32 @igb_config_collision_dist(%struct.e1000_hw* %44)
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = call i64 @igb_config_fc_after_link_up(%struct.e1000_hw* %46)
  store i64 %47, i64* %3, align 8
  br label %50

48:                                               ; preds = %39
  %49 = call i32 @hw_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %50, %38, %29, %15
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i64 @igb_copper_link_autoneg(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i64 @igb_phy_has_link(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @igb_config_collision_dist(%struct.e1000_hw*) #1

declare dso_local i64 @igb_config_fc_after_link_up(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
