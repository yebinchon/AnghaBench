; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_bridge_member.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_bridge_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sja1105_l2_forwarding_entry* }
%struct.sja1105_l2_forwarding_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { %struct.net_device* }

@BLK_IDX_L2_FORWARDING = common dso_local global i64 0, align 8
@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.net_device*, i32)* @sja1105_bridge_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_bridge_member(%struct.dsa_switch* %0, i32 %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sja1105_l2_forwarding_entry*, align 8
  %11 = alloca %struct.sja1105_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 0
  %16 = load %struct.sja1105_private*, %struct.sja1105_private** %15, align 8
  store %struct.sja1105_private* %16, %struct.sja1105_private** %11, align 8
  %17 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %18 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i64, i64* @BLK_IDX_L2_FORWARDING, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %23, align 8
  store %struct.sja1105_l2_forwarding_entry* %24, %struct.sja1105_l2_forwarding_entry** %10, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %73, %4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @dsa_is_user_port(%struct.dsa_switch* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %73

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %73

40:                                               ; preds = %35
  %41 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call %struct.TYPE_6__* @dsa_to_port(%struct.dsa_switch* %41, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = icmp ne %struct.net_device* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %73

49:                                               ; preds = %40
  %50 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @sja1105_port_allow_traffic(%struct.sja1105_l2_forwarding_entry* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @sja1105_port_allow_traffic(%struct.sja1105_l2_forwarding_entry* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %61 = load i64, i64* @BLK_IDX_L2_FORWARDING, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %63, i64 %65
  %67 = call i32 @sja1105_dynamic_config_write(%struct.sja1105_private* %60, i64 %61, i32 %62, %struct.sja1105_l2_forwarding_entry* %66, i32 1)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %49
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %85

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72, %48, %39, %34
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %25

76:                                               ; preds = %25
  %77 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  %78 = load i64, i64* @BLK_IDX_L2_FORWARDING, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %10, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %80, i64 %82
  %84 = call i32 @sja1105_dynamic_config_write(%struct.sja1105_private* %77, i64 %78, i32 %79, %struct.sja1105_l2_forwarding_entry* %83, i32 1)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %76, %70
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local %struct.TYPE_6__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @sja1105_port_allow_traffic(%struct.sja1105_l2_forwarding_entry*, i32, i32, i32) #1

declare dso_local i32 @sja1105_dynamic_config_write(%struct.sja1105_private*, i64, i32, %struct.sja1105_l2_forwarding_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
