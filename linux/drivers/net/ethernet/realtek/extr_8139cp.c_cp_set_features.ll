; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cp_private = type { i32, i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RxChkSum = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@RxVlanOn = common dso_local global i32 0, align 4
@CpCmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @cp_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cp_private*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.cp_private* @netdev_priv(%struct.net_device* %8)
  store %struct.cp_private* %9, %struct.cp_private** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = xor i32 %12, %13
  %15 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %21 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i32, i32* @RxChkSum, align 4
  %30 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %31 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %41

34:                                               ; preds = %19
  %35 = load i32, i32* @RxChkSum, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %38 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @RxVlanOn, align 4
  %48 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %49 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %59

52:                                               ; preds = %41
  %53 = load i32, i32* @RxVlanOn, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %56 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %46
  %60 = load i32, i32* @CpCmd, align 4
  %61 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %62 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cpw16_f(i32 %60, i32 %63)
  %65 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %66 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %65, i32 0, i32 0
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpw16_f(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
