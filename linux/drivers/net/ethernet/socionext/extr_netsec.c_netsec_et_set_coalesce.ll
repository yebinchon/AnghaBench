; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_et_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_et_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.netsec_priv = type { %struct.ethtool_coalesce }

@NETSEC_REG_NRM_TX_DONE_TXINT_PKTCNT = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_TX_TXINT_TMR = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_TX_INTEN_SET = common dso_local global i32 0, align 4
@NRM_TX_ST_TXDONE = common dso_local global i32 0, align 4
@NRM_TX_ST_TMREXP = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_RX_RXINT_PKTCNT = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_RX_RXINT_TMR = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_RX_INTEN_SET = common dso_local global i32 0, align 4
@NRM_RX_ST_PKTCNT = common dso_local global i32 0, align 4
@NRM_RX_ST_TMREXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @netsec_et_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_et_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.netsec_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.netsec_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.netsec_priv* %7, %struct.netsec_priv** %5, align 8
  %8 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %9 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %8, i32 0, i32 0
  %10 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %11 = bitcast %struct.ethtool_coalesce* %9 to i8*
  %12 = bitcast %struct.ethtool_coalesce* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 16, i1 false)
  %13 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %14 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 50
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %20 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 0
  store i32 50, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %24 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %30 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %34 = load i32, i32* @NETSEC_REG_NRM_TX_DONE_TXINT_PKTCNT, align 4
  %35 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %36 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netsec_write(%struct.netsec_priv* %33, i32 %34, i32 %38)
  %40 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %41 = load i32, i32* @NETSEC_REG_NRM_TX_TXINT_TMR, align 4
  %42 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %43 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netsec_write(%struct.netsec_priv* %40, i32 %41, i32 %45)
  %47 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %48 = load i32, i32* @NETSEC_REG_NRM_TX_INTEN_SET, align 4
  %49 = load i32, i32* @NRM_TX_ST_TXDONE, align 4
  %50 = call i32 @netsec_write(%struct.netsec_priv* %47, i32 %48, i32 %49)
  %51 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %52 = load i32, i32* @NETSEC_REG_NRM_TX_INTEN_SET, align 4
  %53 = load i32, i32* @NRM_TX_ST_TMREXP, align 4
  %54 = call i32 @netsec_write(%struct.netsec_priv* %51, i32 %52, i32 %53)
  %55 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %56 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 50
  br i1 %59, label %60, label %64

60:                                               ; preds = %32
  %61 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %62 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %62, i32 0, i32 2
  store i32 50, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %32
  %65 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %66 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %72 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %72, i32 0, i32 3
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %76 = load i32, i32* @NETSEC_REG_NRM_RX_RXINT_PKTCNT, align 4
  %77 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %78 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @netsec_write(%struct.netsec_priv* %75, i32 %76, i32 %80)
  %82 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %83 = load i32, i32* @NETSEC_REG_NRM_RX_RXINT_TMR, align 4
  %84 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %85 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @netsec_write(%struct.netsec_priv* %82, i32 %83, i32 %87)
  %89 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %90 = load i32, i32* @NETSEC_REG_NRM_RX_INTEN_SET, align 4
  %91 = load i32, i32* @NRM_RX_ST_PKTCNT, align 4
  %92 = call i32 @netsec_write(%struct.netsec_priv* %89, i32 %90, i32 %91)
  %93 = load %struct.netsec_priv*, %struct.netsec_priv** %5, align 8
  %94 = load i32, i32* @NETSEC_REG_NRM_RX_INTEN_SET, align 4
  %95 = load i32, i32* @NRM_RX_ST_TMREXP, align 4
  %96 = call i32 @netsec_write(%struct.netsec_priv* %93, i32 %94, i32 %95)
  ret i32 0
}

declare dso_local %struct.netsec_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @netsec_write(%struct.netsec_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
