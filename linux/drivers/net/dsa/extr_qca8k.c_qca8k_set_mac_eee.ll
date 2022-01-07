; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_set_mac_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_set_mac_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i64 }
%struct.ethtool_eee = type { i64 }
%struct.qca8k_priv = type { i32 }

@QCA8K_REG_EEE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.ethtool_eee*)* @qca8k_set_mac_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_set_mac_eee(%struct.dsa_switch* %0, i32 %1, %struct.ethtool_eee* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethtool_eee*, align 8
  %7 = alloca %struct.qca8k_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ethtool_eee* %2, %struct.ethtool_eee** %6, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.qca8k_priv*
  store %struct.qca8k_priv* %13, %struct.qca8k_priv** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @QCA8K_REG_EEE_CTRL_LPI_EN(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %17 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %20 = load i32, i32* @QCA8K_REG_EEE_CTRL, align 4
  %21 = call i32 @qca8k_read(%struct.qca8k_priv* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ethtool_eee*, %struct.ethtool_eee** %6, align 8
  %23 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %37 = load i32, i32* @QCA8K_REG_EEE_CTRL, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @qca8k_write(%struct.qca8k_priv* %36, i32 %37, i32 %38)
  %40 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %41 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  ret i32 0
}

declare dso_local i32 @QCA8K_REG_EEE_CTRL_LPI_EN(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qca8k_read(%struct.qca8k_priv*, i32) #1

declare dso_local i32 @qca8k_write(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
