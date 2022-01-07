; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_check_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_check_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }

@NFP_NET_CFG_UPDATE = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Reconfig error (status: 0x%08x update: 0x%08x ctrl: 0x%08x)\0A\00", align 1
@NFP_NET_CFG_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Reconfig timeout (status: 0x%08x update: 0x%08x ctrl: 0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, i32)* @nfp_net_reconfig_check_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_reconfig_check_done(%struct.nfp_net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %8 = load i32, i32* @NFP_NET_CFG_UPDATE, align 4
  %9 = call i32 @nn_readl(%struct.nfp_net* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NFP_NET_CFG_UPDATE_ERR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %22 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %25 = load i32, i32* @NFP_NET_CFG_CTRL, align 4
  %26 = call i32 @nn_readl(%struct.nfp_net* %24, i32 %25)
  %27 = call i32 @nn_err(%struct.nfp_net* %19, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  store i32 1, i32* %3, align 4
  br label %43

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %35 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %38 = load i32, i32* @NFP_NET_CFG_CTRL, align 4
  %39 = call i32 @nn_readl(%struct.nfp_net* %37, i32 %38)
  %40 = call i32 @nn_err(%struct.nfp_net* %32, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  store i32 1, i32* %3, align 4
  br label %43

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %31, %18, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @nn_readl(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_err(%struct.nfp_net*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
