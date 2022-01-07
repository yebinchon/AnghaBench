; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_set_promiscuous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_set_promiscuous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ksz_hw = type { i32, i32, %struct.ksz_switch* }
%struct.ksz_switch = type { i32 }

@STP_SUPPORT = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@STP_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dev_priv*, %struct.ksz_hw*, i32)* @dev_set_promiscuous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_set_promiscuous(%struct.net_device* %0, %struct.dev_priv* %1, %struct.ksz_hw* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dev_priv*, align 8
  %7 = alloca %struct.ksz_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ksz_switch*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.dev_priv* %1, %struct.dev_priv** %6, align 8
  store %struct.ksz_hw* %2, %struct.ksz_hw** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.dev_priv*, %struct.dev_priv** %6, align 8
  %14 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %98

17:                                               ; preds = %4
  %18 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %19 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %25 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %30 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.dev_priv*, %struct.dev_priv** %6, align 8
  %36 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %38 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %39, 1
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = icmp sle i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %46 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %47 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @hw_set_promiscuous(%struct.ksz_hw* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %41, %33
  %51 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %52 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @STP_SUPPORT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %97

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %97, label %60

60:                                               ; preds = %57
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %60
  %68 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %69 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %68, i32 0, i32 2
  %70 = load %struct.ksz_switch*, %struct.ksz_switch** %69, align 8
  store %struct.ksz_switch* %70, %struct.ksz_switch** %10, align 8
  %71 = load %struct.dev_priv*, %struct.dev_priv** %6, align 8
  %72 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %11, align 4
  %75 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @STP_STATE_DISABLED, align 4
  %78 = call i32 @port_set_stp_state(%struct.ksz_hw* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 1, %79
  store i32 %80, i32* %11, align 4
  %81 = load %struct.ksz_switch*, %struct.ksz_switch** %10, align 8
  %82 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %67
  %88 = load i32, i32* %11, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.ksz_switch*, %struct.ksz_switch** %10, align 8
  %91 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %95 = call i32 @bridge_change(%struct.ksz_hw* %94)
  br label %96

96:                                               ; preds = %87, %67
  br label %97

97:                                               ; preds = %96, %60, %57, %50
  br label %98

98:                                               ; preds = %97, %4
  ret void
}

declare dso_local i32 @hw_set_promiscuous(%struct.ksz_hw*, i32) #1

declare dso_local i32 @port_set_stp_state(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @bridge_change(%struct.ksz_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
