; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_vlan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_vlan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32, i64* }

@ANA_TABLES_VLANACCESS_CMD_INIT = common dso_local global i64 0, align 8
@ANA_TABLES_VLANACCESS = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i64 0, align 8
@ANA_PORT_VLAN_CFG_VLAN_AWARE_ENA = common dso_local global i32 0, align 4
@ANA_PORT_VLAN_CFG = common dso_local global i32 0, align 4
@ANA_VLANMASK = common dso_local global i32 0, align 4
@REW_PORT_VLAN_CFG = common dso_local global i32 0, align 4
@REW_TAG_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot*)* @ocelot_vlan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_vlan_init(%struct.ocelot* %0) #0 {
  %2 = alloca %struct.ocelot*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ocelot* %0, %struct.ocelot** %2, align 8
  %5 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %6 = load i64, i64* @ANA_TABLES_VLANACCESS_CMD_INIT, align 8
  %7 = load i32, i32* @ANA_TABLES_VLANACCESS, align 4
  %8 = call i32 @ocelot_write(%struct.ocelot* %5, i64 %6, i32 %7)
  %9 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %10 = call i32 @ocelot_vlant_wait_for_completion(%struct.ocelot* %9)
  store i64 1, i64* %4, align 8
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @VLAN_N_VID, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %17 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 0, i64* %20, align 8
  %21 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %24 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ocelot_vlant_set_mask(%struct.ocelot* %21, i64 %22, i64 %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %35 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = call i64 @GENMASK(i32 %37, i32 0)
  %39 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %40 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %38, i64* %42, align 8
  %43 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %44 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %45 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ocelot_vlant_set_mask(%struct.ocelot* %43, i64 0, i64 %48)
  %50 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %51 = call i32 @ANA_PORT_VLAN_CFG_VLAN_VID(i32 0)
  %52 = load i32, i32* @ANA_PORT_VLAN_CFG_VLAN_AWARE_ENA, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @ANA_PORT_VLAN_CFG_VLAN_POP_CNT(i32 1)
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ANA_PORT_VLAN_CFG, align 4
  %57 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %58 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = call i32 @ocelot_write_gix(%struct.ocelot* %50, i32 %55, i32 %56, i64 %60)
  %62 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %63 = call i64 @GENMASK(i32 9, i32 0)
  %64 = load i32, i32* @ANA_VLANMASK, align 4
  %65 = call i32 @ocelot_write(%struct.ocelot* %62, i64 %63, i32 %64)
  store i64 0, i64* %3, align 8
  br label %66

66:                                               ; preds = %82, %33
  %67 = load i64, i64* %3, align 8
  %68 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %69 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %75 = load i32, i32* @REW_PORT_VLAN_CFG, align 4
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @ocelot_write_gix(%struct.ocelot* %74, i32 0, i32 %75, i64 %76)
  %78 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %79 = load i32, i32* @REW_TAG_CFG, align 4
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @ocelot_write_gix(%struct.ocelot* %78, i32 0, i32 %79, i64 %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %3, align 8
  br label %66

85:                                               ; preds = %66
  ret void
}

declare dso_local i32 @ocelot_write(%struct.ocelot*, i64, i32) #1

declare dso_local i32 @ocelot_vlant_wait_for_completion(%struct.ocelot*) #1

declare dso_local i32 @ocelot_vlant_set_mask(%struct.ocelot*, i64, i64) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @ocelot_write_gix(%struct.ocelot*, i32, i32, i64) #1

declare dso_local i32 @ANA_PORT_VLAN_CFG_VLAN_VID(i32) #1

declare dso_local i32 @ANA_PORT_VLAN_CFG_VLAN_POP_CNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
