; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_cxgb4_immdata_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_cxgb4_immdata_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sge_uld_txq_info = type { %struct.sge_uld_txq* }
%struct.sge_uld_txq = type { i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sge_uld_txq_info** }

@CXGB4_TX_OFLD = common dso_local global i64 0, align 8
@NET_XMIT_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_immdata_send(%struct.net_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sge_uld_txq_info*, align 8
  %11 = alloca %struct.sge_uld_txq*, align 8
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.adapter* @netdev2adap(%struct.net_device* %14)
  store %struct.adapter* %15, %struct.adapter** %12, align 8
  %16 = call i32 (...) @local_bh_disable()
  %17 = load %struct.adapter*, %struct.adapter** %12, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.sge_uld_txq_info**, %struct.sge_uld_txq_info*** %19, align 8
  %21 = load i64, i64* @CXGB4_TX_OFLD, align 8
  %22 = getelementptr inbounds %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %20, i64 %21
  %23 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %22, align 8
  store %struct.sge_uld_txq_info* %23, %struct.sge_uld_txq_info** %10, align 8
  %24 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %10, align 8
  %25 = icmp ne %struct.sge_uld_txq_info* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = call i32 @WARN_ON(i32 1)
  %32 = call i32 (...) @local_bh_enable()
  %33 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %33, i32* %5, align 4
  br label %48

34:                                               ; preds = %4
  %35 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %10, align 8
  %36 = getelementptr inbounds %struct.sge_uld_txq_info, %struct.sge_uld_txq_info* %35, i32 0, i32 0
  %37 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %37, i64 %39
  store %struct.sge_uld_txq* %40, %struct.sge_uld_txq** %11, align 8
  %41 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %11, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ofld_xmit_direct(%struct.sge_uld_txq* %41, i8* %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = call i32 (...) @local_bh_enable()
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @net_xmit_eval(i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %34, %30
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @ofld_xmit_direct(%struct.sge_uld_txq*, i8*, i32) #1

declare dso_local i32 @net_xmit_eval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
