; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_bridge_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_bridge_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.ksz_switch* }
%struct.ksz_switch = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@SWITCH_PORT_NUM = common dso_local global i32 0, align 4
@STP_STATE_SIMPLE = common dso_local global i32 0, align 4
@STP_STATE_FORWARDING = common dso_local global i64 0, align 8
@HOST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @bridge_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_change(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_switch*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %6, i32 0, i32 0
  %8 = load %struct.ksz_switch*, %struct.ksz_switch** %7, align 8
  store %struct.ksz_switch* %8, %struct.ksz_switch** %5, align 8
  %9 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %10 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %15 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %16 = load i32, i32* @STP_STATE_SIMPLE, align 4
  %17 = call i32 @port_set_stp_state(%struct.ksz_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %19 = call i32 @sw_block_addr(%struct.ksz_hw* %18)
  br label %20

20:                                               ; preds = %13, %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %64, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = load i64, i64* @STP_STATE_FORWARDING, align 8
  %27 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %28 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %26, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32, i32* @HOST_MASK, align 4
  %38 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %39 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %37, %40
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %25
  %43 = load i32, i32* @HOST_MASK, align 4
  %44 = load i32, i32* %3, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %43, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %50 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %48, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @sw_cfg_port_base_vlan(%struct.ksz_hw* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %21

67:                                               ; preds = %21
  ret void
}

declare dso_local i32 @port_set_stp_state(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @sw_block_addr(%struct.ksz_hw*) #1

declare dso_local i32 @sw_cfg_port_base_vlan(%struct.ksz_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
