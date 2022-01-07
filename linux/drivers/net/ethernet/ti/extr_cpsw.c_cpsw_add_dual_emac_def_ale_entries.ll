; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_add_dual_emac_def_ale_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_add_dual_emac_def_ale_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { i32, %struct.TYPE_2__*, %struct.cpsw_common* }
%struct.TYPE_2__ = type { i32 }
%struct.cpsw_common = type { i64, i32 }
%struct.cpsw_slave = type { i32 }

@ALE_PORT_HOST = common dso_local global i32 0, align 4
@CPSW_VERSION_1 = common dso_local global i64 0, align 8
@CPSW1_PORT_VLAN = common dso_local global i32 0, align 4
@CPSW2_PORT_VLAN = common dso_local global i32 0, align 4
@ALE_VLAN = common dso_local global i32 0, align 4
@HOST_PORT_NUM = common dso_local global i32 0, align 4
@ALE_SECURE = common dso_local global i32 0, align 4
@ALE_PORT_DROP_UNKNOWN_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_priv*, %struct.cpsw_slave*, i32)* @cpsw_add_dual_emac_def_ale_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_add_dual_emac_def_ale_entries(%struct.cpsw_priv* %0, %struct.cpsw_slave* %1, i32 %2) #0 {
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca %struct.cpsw_slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpsw_common*, align 8
  %8 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %4, align 8
  store %struct.cpsw_slave* %1, %struct.cpsw_slave** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %10 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %9, i32 0, i32 2
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  store %struct.cpsw_common* %11, %struct.cpsw_common** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* @ALE_PORT_HOST, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %17 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CPSW_VERSION_1, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.cpsw_slave*, %struct.cpsw_slave** %5, align 8
  %23 = load %struct.cpsw_slave*, %struct.cpsw_slave** %5, align 8
  %24 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CPSW1_PORT_VLAN, align 4
  %27 = call i32 @slave_write(%struct.cpsw_slave* %22, i32 %25, i32 %26)
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.cpsw_slave*, %struct.cpsw_slave** %5, align 8
  %30 = load %struct.cpsw_slave*, %struct.cpsw_slave** %5, align 8
  %31 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CPSW2_PORT_VLAN, align 4
  %34 = call i32 @slave_write(%struct.cpsw_slave* %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %37 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cpsw_slave*, %struct.cpsw_slave** %5, align 8
  %40 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @cpsw_ale_add_vlan(i32 %38, i32 %41, i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %47 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %50 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ALE_PORT_HOST, align 4
  %55 = load i32, i32* @ALE_VLAN, align 4
  %56 = load %struct.cpsw_slave*, %struct.cpsw_slave** %5, align 8
  %57 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpsw_ale_add_mcast(i32 %48, i32 %53, i32 %54, i32 %55, i32 %58, i32 0)
  %60 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %61 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %64 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HOST_PORT_NUM, align 4
  %67 = load i32, i32* @ALE_VLAN, align 4
  %68 = load i32, i32* @ALE_SECURE, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.cpsw_slave*, %struct.cpsw_slave** %5, align 8
  %71 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cpsw_ale_add_ucast(i32 %62, i32 %65, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %75 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ALE_PORT_DROP_UNKNOWN_VLAN, align 4
  %79 = call i32 @cpsw_ale_control_set(i32 %76, i32 %77, i32 %78, i32 1)
  ret void
}

declare dso_local i32 @slave_write(%struct.cpsw_slave*, i32, i32) #1

declare dso_local i32 @cpsw_ale_add_vlan(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_ale_add_mcast(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_ale_add_ucast(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_ale_control_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
