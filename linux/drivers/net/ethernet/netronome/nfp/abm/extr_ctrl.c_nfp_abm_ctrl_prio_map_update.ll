; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_prio_map_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_prio_map_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { %struct.TYPE_6__*, %struct.nfp_net* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nfp_net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@NFP_NET_CFG_MBOX_CMD_PCI_DSCP_PRIOMAP_SET = common dso_local global i32 0, align 4
@NFP_NET_ABM_MBOX_DATALEN = common dso_local global i64 0, align 8
@NFP_NET_ABM_MBOX_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"setting DSCP -> VQ map failed with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_abm_ctrl_prio_map_update(%struct.nfp_abm_link* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_abm_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @NFP_NET_CFG_MBOX_CMD_PCI_DSCP_PRIOMAP_SET, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %12 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %11, i32 0, i32 1
  %13 = load %struct.nfp_net*, %struct.nfp_net** %12, align 8
  store %struct.nfp_net* %13, %struct.nfp_net** %7, align 8
  %14 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %15 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nfp_net_mbox_lock(%struct.nfp_net* %14, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %27 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NFP_NET_ABM_MBOX_DATALEN, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %34 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nn_writeq(%struct.nfp_net* %26, i64 %32, i32 %37)
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %65, %25
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %42 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %40, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %39
  %48 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %49 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %50 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NFP_NET_ABM_MBOX_DATA, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = udiv i64 %60, 4
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nn_writel(%struct.nfp_net* %48, i64 %57, i32 %63)
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = add i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  br label %39

70:                                               ; preds = %39
  %71 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @nfp_net_mbox_reconfig_and_unlock(%struct.nfp_net* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %78 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @nfp_err(i32 %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %76, %70
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @nfp_net_mbox_lock(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_writeq(%struct.nfp_net*, i64, i32) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i64, i32) #1

declare dso_local i32 @nfp_net_mbox_reconfig_and_unlock(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
