; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { i32, i32, i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Recovered in open\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [148 x i8] c"Recovery flow hasn't been properly completed yet. Try again later.\0AIf you still see this message after a few retries then power cycle is required.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_DONE = common dso_local global i32 0, align 4
@LOAD_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnx2x_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %10)
  store %struct.bnx2x* %11, %struct.bnx2x** %4, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @netif_carrier_off(%struct.net_device* %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = load i32, i32* @PCI_D0, align 4
  %18 = call i32 @bnx2x_set_power_state(%struct.bnx2x* %16, i32 %17)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = call i64 @IS_PF(%struct.bnx2x* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %1
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = call i32 @BP_PATH(%struct.bnx2x* %23)
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 1
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bnx2x_get_load_status(%struct.bnx2x* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = call i32 @BP_PATH(%struct.bnx2x* %32)
  %34 = call i32 @bnx2x_get_load_status(%struct.bnx2x* %31, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %36 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %37 = call i32 @BP_PATH(%struct.bnx2x* %36)
  %38 = call i32 @bnx2x_reset_is_done(%struct.bnx2x* %35, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %42 = call i64 @bnx2x_chk_parity_attn(%struct.bnx2x* %41, i32* %9, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %40, %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %50 = call i32 @bnx2x_set_reset_global(%struct.bnx2x* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %62 = call i64 @bnx2x_trylock_leader_lock(%struct.bnx2x* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %66 = call i32 @bnx2x_leader_reset(%struct.bnx2x* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %70 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @netdev_info(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %83

73:                                               ; preds = %64, %60, %57, %51
  %74 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %75 = load i32, i32* @PCI_D3hot, align 4
  %76 = call i32 @bnx2x_set_power_state(%struct.bnx2x* %74, i32 %75)
  %77 = load i32, i32* @BNX2X_RECOVERY_FAILED, align 4
  %78 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %79 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %104

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %40
  br label %85

85:                                               ; preds = %84, %1
  %86 = load i32, i32* @BNX2X_RECOVERY_DONE, align 4
  %87 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %88 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %90 = load i32, i32* @LOAD_OPEN, align 4
  %91 = call i32 @bnx2x_nic_load(%struct.bnx2x* %89, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %104

96:                                               ; preds = %85
  %97 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %98 = call i64 @IS_PF(%struct.bnx2x* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = call i32 @udp_tunnel_get_rx_info(%struct.net_device* %101)
  br label %103

103:                                              ; preds = %100, %96
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %94, %73
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @bnx2x_set_power_state(%struct.bnx2x*, i32) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_load_status(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_reset_is_done(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_chk_parity_attn(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @bnx2x_set_reset_global(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_trylock_leader_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_leader_reset(%struct.bnx2x*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_nic_load(%struct.bnx2x*, i32) #1

declare dso_local i32 @udp_tunnel_get_rx_info(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
