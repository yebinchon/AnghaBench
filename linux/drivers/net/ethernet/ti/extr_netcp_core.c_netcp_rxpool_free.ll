; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_rxpool_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_rxpool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_intf = type { i64, i32*, i32, i32* }

@KNAV_DMA_FDQ_PER_CHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Lost Rx (%d) descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netcp_intf*)* @netcp_rxpool_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_rxpool_free(%struct.netcp_intf* %0) #0 {
  %2 = alloca %struct.netcp_intf*, align 8
  %3 = alloca i32, align 4
  store %struct.netcp_intf* %0, %struct.netcp_intf** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @KNAV_DMA_FDQ_PER_CHAN, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %10 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_ERR_OR_NULL(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %8, %4
  %20 = phi i1 [ false, %4 ], [ %18, %8 ]
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @netcp_free_rx_buf(%struct.netcp_intf* %22, i32 %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %19
  %29 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %30 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @knav_pool_count(i32* %31)
  %33 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %34 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %39 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %42 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %45 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @knav_pool_count(i32* %46)
  %48 = sub nsw i64 %43, %47
  %49 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %37, %28
  %51 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %52 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @knav_pool_destroy(i32* %53)
  %55 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %56 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @netcp_free_rx_buf(%struct.netcp_intf*, i32) #1

declare dso_local i64 @knav_pool_count(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @knav_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
