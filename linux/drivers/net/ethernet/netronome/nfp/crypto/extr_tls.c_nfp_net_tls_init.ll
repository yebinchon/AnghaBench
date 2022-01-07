; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/crypto/extr_tls.c_nfp_net_tls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32*, i32, i32 }

@NFP_NET_TLS_OPCODE_MASK = common dso_local global i32 0, align 4
@NFP_NET_TLS_CCM_MBOX_OPS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"disabling TLS offload - mbox too small: %d\0A\00", align 1
@NFP_NET_CFG_UPDATE_CRYPTO = common dso_local global i32 0, align 4
@NFP_NET_TLS_OPCODE_MASK_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_TLS_RX = common dso_local global i32 0, align 4
@NFP_NET_TLS_OPCODE_MASK_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_TLS_TX = common dso_local global i32 0, align 4
@nfp_net_tls_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_net_tls_init(%struct.nfp_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  %6 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %7 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %11 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NFP_NET_TLS_OPCODE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NFP_NET_TLS_CCM_MBOX_OPS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @NFP_NET_TLS_CCM_MBOX_OPS_MASK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %105

28:                                               ; preds = %18
  %29 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %30 = call i32 @nfp_ccm_mbox_fits(%struct.nfp_net* %29, i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %34 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %35 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nn_warn(%struct.nfp_net* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %2, align 4
  br label %105

39:                                               ; preds = %28
  %40 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %41 = call i32 @nfp_net_tls_reset(%struct.nfp_net* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %105

46:                                               ; preds = %39
  %47 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %48 = call i32 @nn_ctrl_bar_lock(%struct.nfp_net* %47)
  %49 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %50 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %51 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nn_writel(%struct.nfp_net* %49, i32 %53, i32 0)
  %55 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %56 = load i32, i32* @NFP_NET_CFG_UPDATE_CRYPTO, align 4
  %57 = call i32 @__nfp_net_reconfig(%struct.nfp_net* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %59 = call i32 @nn_ctrl_bar_unlock(%struct.nfp_net* %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %46
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %105

64:                                               ; preds = %46
  %65 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %66 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @NFP_NET_TLS_OPCODE_MASK_RX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load i32, i32* @NETIF_F_HW_TLS_RX, align 4
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @NETIF_F_HW_TLS_RX, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %72, %64
  %84 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %85 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NFP_NET_TLS_OPCODE_MASK_TX, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load i32, i32* @NETIF_F_HW_TLS_TX, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @NETIF_F_HW_TLS_TX, align 4
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %91, %83
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  store i32* @nfp_net_tls_ops, i32** %104, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %62, %44, %32, %27, %17
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @nfp_ccm_mbox_fits(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_warn(%struct.nfp_net*, i8*, i32) #1

declare dso_local i32 @nfp_net_tls_reset(%struct.nfp_net*) #1

declare dso_local i32 @nn_ctrl_bar_lock(%struct.nfp_net*) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @__nfp_net_reconfig(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_ctrl_bar_unlock(%struct.nfp_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
