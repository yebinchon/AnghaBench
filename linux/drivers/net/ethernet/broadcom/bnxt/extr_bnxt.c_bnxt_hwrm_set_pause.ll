; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32 }
%struct.hwrm_port_phy_cfg_input = type { i32 }

@HWRM_PORT_PHY_CFG = common dso_local global i32 0, align 4
@BNXT_AUTONEG_FLOW_CTRL = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_set_pause(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.hwrm_port_phy_cfg_input, align 4
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %5 = bitcast %struct.hwrm_port_phy_cfg_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %7 = load i32, i32* @HWRM_PORT_PHY_CFG, align 4
  %8 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %6, %struct.hwrm_port_phy_cfg_input* %3, i32 %7, i32 -1, i32 -1)
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = call i32 @bnxt_hwrm_set_pause_common(%struct.bnxt* %9, %struct.hwrm_port_phy_cfg_input* %3)
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %1
  %25 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %26 = call i32 @bnxt_hwrm_set_link_common(%struct.bnxt* %25, %struct.hwrm_port_phy_cfg_input* %3)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %32 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %33 = call i32 @_hwrm_send_message(%struct.bnxt* %31, %struct.hwrm_port_phy_cfg_input* %3, i32 4, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %27
  %37 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %38 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %36
  %45 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %46 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %50 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 4
  %52 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %53 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32 %48, i32* %54, align 8
  %55 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %56 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %59 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %44
  %64 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %65 = call i32 @bnxt_report_link(%struct.bnxt* %64)
  br label %66

66:                                               ; preds = %63, %44
  br label %67

67:                                               ; preds = %66, %36, %27
  %68 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %69 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*, i32, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_set_pause_common(%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*) #2

declare dso_local i32 @bnxt_hwrm_set_link_common(%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*, i32, i32) #2

declare dso_local i32 @bnxt_report_link(%struct.bnxt*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
