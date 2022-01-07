; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_mbox_reconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_mbox_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NFP_NET_CFG_MBOX_SIMPLE_CMD = common dso_local global i64 0, align 8
@NFP_NET_CFG_UPDATE_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Mailbox update error\0A\00", align 1
@NFP_NET_CFG_MBOX_SIMPLE_RET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_net_mbox_reconfig(%struct.nfp_net* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @NFP_NET_CFG_MBOX_SIMPLE_CMD, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @nn_writeq(%struct.nfp_net* %12, i64 %15, i64 %16)
  %18 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %19 = load i32, i32* @NFP_NET_CFG_UPDATE_MBOX, align 4
  %20 = call i32 @__nfp_net_reconfig(%struct.nfp_net* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %25 = call i32 @nn_err(%struct.nfp_net* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @NFP_NET_CFG_MBOX_SIMPLE_RET, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @nn_readl(%struct.nfp_net* %28, i64 %31)
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @nn_writeq(%struct.nfp_net*, i64, i64) #1

declare dso_local i32 @__nfp_net_reconfig(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_err(%struct.nfp_net*, i8*) #1

declare dso_local i32 @nn_readl(%struct.nfp_net*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
