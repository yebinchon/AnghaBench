; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ugeth_graceful_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ugeth_graceful_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.ucc_fast_private* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ucc_fast_private = type { i32 }

@GRACEFUL_STOP_ACKNOWLEDGE_RX = common dso_local global i32 0, align 4
@QE_GRACEFUL_STOP_RX = common dso_local global i32 0, align 4
@QE_CR_PROTOCOL_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*)* @ugeth_graceful_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugeth_graceful_stop_rx(%struct.ucc_geth_private* %0) #0 {
  %2 = alloca %struct.ucc_geth_private*, align 8
  %3 = alloca %struct.ucc_fast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %2, align 8
  store i32 10, i32* %6, align 4
  %7 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %8 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %7, i32 0, i32 2
  %9 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %8, align 8
  store %struct.ucc_fast_private* %9, %struct.ucc_fast_private** %3, align 8
  %10 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %11 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i32 @in_8(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @GRACEFUL_STOP_ACKNOWLEDGE_RX, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %20 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @out_8(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %52, %1
  %26 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %27 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ucc_fast_get_qe_cr_subblock(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @QE_GRACEFUL_STOP_RX, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @QE_CR_PROTOCOL_ETHERNET, align 4
  %36 = call i32 @qe_issue_cmd(i32 %33, i32 %34, i32 %35, i32 0)
  %37 = call i32 @msleep(i32 10)
  %38 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %39 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @in_8(i32* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @GRACEFUL_STOP_ACKNOWLEDGE_RX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i1 [ false, %43 ], [ %51, %48 ]
  br i1 %53, label %25, label %54

54:                                               ; preds = %52
  %55 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %3, align 8
  %56 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  ret i32 0
}

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @ucc_fast_get_qe_cr_subblock(i32) #1

declare dso_local i32 @qe_issue_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
