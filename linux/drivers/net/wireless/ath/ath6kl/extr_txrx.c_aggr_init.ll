; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggr_info = type { i32, i8* }
%struct.ath6kl_vif = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to alloc memory for aggr_node\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"failed to alloc memory for connection specific aggr info\0A\00", align 1
@AGGR_NUM_OF_FREE_NETBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aggr_info* @aggr_init(%struct.ath6kl_vif* %0) #0 {
  %2 = alloca %struct.aggr_info*, align 8
  %3 = alloca %struct.ath6kl_vif*, align 8
  %4 = alloca %struct.aggr_info*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %3, align 8
  store %struct.aggr_info* null, %struct.aggr_info** %4, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 16, i32 %5)
  %7 = bitcast i8* %6 to %struct.aggr_info*
  store %struct.aggr_info* %7, %struct.aggr_info** %4, align 8
  %8 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  %9 = icmp ne %struct.aggr_info* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @ath6kl_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.aggr_info* null, %struct.aggr_info** %2, align 8
  br label %40

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 4, i32 %13)
  %15 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  %16 = getelementptr inbounds %struct.aggr_info, %struct.aggr_info* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  %18 = getelementptr inbounds %struct.aggr_info, %struct.aggr_info* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = call i32 @ath6kl_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  %24 = call i32 @kfree(%struct.aggr_info* %23)
  store %struct.aggr_info* null, %struct.aggr_info** %2, align 8
  br label %40

25:                                               ; preds = %12
  %26 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %27 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  %28 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  %29 = getelementptr inbounds %struct.aggr_info, %struct.aggr_info* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @aggr_conn_init(%struct.ath6kl_vif* %26, %struct.aggr_info* %27, i8* %30)
  %32 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  %33 = getelementptr inbounds %struct.aggr_info, %struct.aggr_info* %32, i32 0, i32 0
  %34 = call i32 @skb_queue_head_init(i32* %33)
  %35 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  %36 = getelementptr inbounds %struct.aggr_info, %struct.aggr_info* %35, i32 0, i32 0
  %37 = load i32, i32* @AGGR_NUM_OF_FREE_NETBUFS, align 4
  %38 = call i32 @ath6kl_alloc_netbufs(i32* %36, i32 %37)
  %39 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  store %struct.aggr_info* %39, %struct.aggr_info** %2, align 8
  br label %40

40:                                               ; preds = %25, %21, %10
  %41 = load %struct.aggr_info*, %struct.aggr_info** %2, align 8
  ret %struct.aggr_info* %41
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @kfree(%struct.aggr_info*) #1

declare dso_local i32 @aggr_conn_init(%struct.ath6kl_vif*, %struct.aggr_info*, i8*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @ath6kl_alloc_netbufs(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
