; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_clear_config_and_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_clear_config_and_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32* }

@NFP_NET_CFG_CTRL_ENABLE = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_GEN = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_MSIX = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_RING = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RINGCFG = common dso_local global i32 0, align 4
@NFP_NET_CFG_TXRS_ENABLE = common dso_local global i32 0, align 4
@NFP_NET_CFG_RXRS_ENABLE = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not disable device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*)* @nfp_net_clear_config_and_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_clear_config_and_disable(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %7 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %8 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @NFP_NET_CFG_CTRL_ENABLE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @NFP_NET_CFG_UPDATE_GEN, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @NFP_NET_CFG_UPDATE_MSIX, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @NFP_NET_CFG_UPDATE_RING, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %23 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NFP_NET_CFG_CTRL_RINGCFG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @NFP_NET_CFG_CTRL_RINGCFG, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %35 = load i32, i32* @NFP_NET_CFG_TXRS_ENABLE, align 4
  %36 = call i32 @nn_writeq(%struct.nfp_net* %34, i32 %35, i32 0)
  %37 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %38 = load i32, i32* @NFP_NET_CFG_RXRS_ENABLE, align 4
  %39 = call i32 @nn_writeq(%struct.nfp_net* %37, i32 %38, i32 0)
  %40 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %41 = load i32, i32* @NFP_NET_CFG_CTRL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @nn_writel(%struct.nfp_net* %40, i32 %41, i32 %42)
  %44 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @nfp_net_reconfig(%struct.nfp_net* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %33
  %50 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @nn_err(%struct.nfp_net* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %33
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %57 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %63 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @nfp_net_rx_ring_reset(i32* %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %54

73:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %92, %73
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %77 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %75, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %74
  %82 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %83 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %82, i32 0, i32 1
  %84 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %85 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @nfp_net_tx_ring_reset(%struct.TYPE_2__* %83, i32* %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %74

95:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %107, %95
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %99 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp ult i32 %97, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @nfp_net_vec_clear_ring_data(%struct.nfp_net* %104, i32 %105)
  br label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %5, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %96

110:                                              ; preds = %96
  %111 = load i32, i32* %3, align 4
  %112 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %113 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  ret void
}

declare dso_local i32 @nn_writeq(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nfp_net_reconfig(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_err(%struct.nfp_net*, i8*, i32) #1

declare dso_local i32 @nfp_net_rx_ring_reset(i32*) #1

declare dso_local i32 @nfp_net_tx_ring_reset(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @nfp_net_vec_clear_ring_data(%struct.nfp_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
