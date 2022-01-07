; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.phy_device = type { i32 }

@MT7530_CPU_PORT = common dso_local global i32 0, align 4
@PCR_MATRIX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.phy_device*)* @mt7530_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_port_enable(%struct.dsa_switch* %0, i32 %1, %struct.phy_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca %struct.mt7530_priv*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.phy_device* %2, %struct.phy_device** %7, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load %struct.mt7530_priv*, %struct.mt7530_priv** %10, align 8
  store %struct.mt7530_priv* %11, %struct.mt7530_priv** %8, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @dsa_is_user_port(%struct.dsa_switch* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

17:                                               ; preds = %3
  %18 = load %struct.mt7530_priv*, %struct.mt7530_priv** %8, align 8
  %19 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @MT7530_CPU_PORT, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = call i32 @PCR_MATRIX(i32 %22)
  %24 = load %struct.mt7530_priv*, %struct.mt7530_priv** %8, align 8
  %25 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %23
  store i32 %32, i32* %30, align 4
  %33 = load %struct.mt7530_priv*, %struct.mt7530_priv** %8, align 8
  %34 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.mt7530_priv*, %struct.mt7530_priv** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @MT7530_PCR_P(i32 %41)
  %43 = load i32, i32* @PCR_MATRIX_MASK, align 4
  %44 = load %struct.mt7530_priv*, %struct.mt7530_priv** %8, align 8
  %45 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mt7530_rmw(%struct.mt7530_priv* %40, i32 %42, i32 %43, i32 %51)
  %53 = load %struct.mt7530_priv*, %struct.mt7530_priv** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @mt7530_port_set_status(%struct.mt7530_priv* %53, i32 %54, i32 0)
  %56 = load %struct.mt7530_priv*, %struct.mt7530_priv** %8, align 8
  %57 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %17, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PCR_MATRIX(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @MT7530_PCR_P(i32) #1

declare dso_local i32 @mt7530_port_set_status(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
