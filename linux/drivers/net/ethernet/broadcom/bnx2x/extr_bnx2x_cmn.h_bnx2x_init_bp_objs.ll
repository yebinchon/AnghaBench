; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_init_bp_objs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_init_bp_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@mcast_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_MCAST_PENDING = common dso_local global i32 0, align 4
@BNX2X_OBJ_TYPE_RX = common dso_local global i32 0, align 4
@rss_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_RSS_CONF_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_init_bp_objs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_bp_objs(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %4, i32 0, i32 7
  %6 = call i32 @bnx2x_init_rx_mode_obj(%struct.bnx2x* %3, i32* %5)
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 6
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = call i32 @BP_FUNC(%struct.bnx2x* %20)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = call i32 @BP_FUNC(%struct.bnx2x* %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %25 = load i32, i32* @mcast_rdata, align 4
  %26 = call i32 @bnx2x_sp(%struct.bnx2x* %24, i32 %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = load i32, i32* @mcast_rdata, align 4
  %29 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %27, i32 %28)
  %30 = load i32, i32* @BNX2X_FILTER_MCAST_PENDING, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 1
  %33 = load i32, i32* @BNX2X_OBJ_TYPE_RX, align 4
  %34 = call i32 @bnx2x_init_mcast_obj(%struct.bnx2x* %7, i32* %9, i32 %14, i32 %19, i32 %21, i32 %23, i32 %26, i32 %29, i32 %30, i32* %32, i32 %33)
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 5
  %38 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %39 = call i32 @BP_FUNC(%struct.bnx2x* %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %41 = call i32 @bnx2x_get_path_func_num(%struct.bnx2x* %40)
  %42 = call i32 @bnx2x_init_mac_credit_pool(%struct.bnx2x* %35, i32* %37, i32 %39, i32 %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %45 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %44, i32 0, i32 4
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = call i32 @BP_FUNC(%struct.bnx2x* %46)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = call i32 @bnx2x_get_path_func_num(%struct.bnx2x* %48)
  %50 = call i32 @bnx2x_init_vlan_credit_pool(%struct.bnx2x* %43, i32* %45, i32 %47, i32 %49)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %53 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %52, i32 0, i32 3
  %54 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %65 = call i32 @BP_FUNC(%struct.bnx2x* %64)
  %66 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %67 = call i32 @BP_FUNC(%struct.bnx2x* %66)
  %68 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %69 = load i32, i32* @rss_rdata, align 4
  %70 = call i32 @bnx2x_sp(%struct.bnx2x* %68, i32 %69)
  %71 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %72 = load i32, i32* @rss_rdata, align 4
  %73 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %71, i32 %72)
  %74 = load i32, i32* @BNX2X_FILTER_RSS_CONF_PENDING, align 4
  %75 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %76 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %75, i32 0, i32 1
  %77 = load i32, i32* @BNX2X_OBJ_TYPE_RX, align 4
  %78 = call i32 @bnx2x_init_rss_config_obj(%struct.bnx2x* %51, i32* %53, i32 %58, i32 %63, i32 %65, i32 %67, i32 %70, i32 %73, i32 %74, i32* %76, i32 %77)
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %81 = call i32 @bnx2x_get_path_func_num(%struct.bnx2x* %80)
  %82 = call i32 @PF_VLAN_CREDIT_E2(%struct.bnx2x* %79, i32 %81)
  %83 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %84 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  ret void
}

declare dso_local i32 @bnx2x_init_rx_mode_obj(%struct.bnx2x*, i32*) #1

declare dso_local i32 @bnx2x_init_mcast_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_sp_mapping(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_init_mac_credit_pool(%struct.bnx2x*, i32*, i32, i32) #1

declare dso_local i32 @bnx2x_get_path_func_num(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_vlan_credit_pool(%struct.bnx2x*, i32*, i32, i32) #1

declare dso_local i32 @bnx2x_init_rss_config_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @PF_VLAN_CREDIT_E2(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
