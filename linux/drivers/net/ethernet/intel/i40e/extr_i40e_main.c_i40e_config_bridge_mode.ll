; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_bridge_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_config_bridge_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@I40E_DEBUG_LAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"enabling bridge mode: %s\0A\00", align 1
@BRIDGE_MODE_VEPA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"VEPA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"VEB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_veb*)* @i40e_config_bridge_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_config_bridge_mode(%struct.i40e_veb* %0) #0 {
  %2 = alloca %struct.i40e_veb*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_veb* %0, %struct.i40e_veb** %2, align 8
  %4 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %4, i32 0, i32 1
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  store %struct.i40e_pf* %6, %struct.i40e_pf** %3, align 8
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @I40E_DEBUG_LAN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BRIDGE_MODE_VEPA, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %14, %1
  %28 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BRIDGE_MODE_VEPA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %36 = call i32 @i40e_disable_pf_switch_lb(%struct.i40e_pf* %35)
  br label %40

37:                                               ; preds = %27
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %39 = call i32 @i40e_enable_pf_switch_lb(%struct.i40e_pf* %38)
  br label %40

40:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @i40e_disable_pf_switch_lb(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_enable_pf_switch_lb(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
