; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_acquire_connection_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_acquire_connection_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.qed_ll2_rx_packet*, i32 }
%struct.qed_ll2_rx_packet = type { i32 }

@QED_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@QED_CHAIN_MODE_NEXT_PTR = common dso_local global i32 0, align 4
@QED_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate ll2 rxq chain\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate ll2 Rx desc\0A\00", align 1
@QED_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate ll2 rcq chain\0A\00", align 1
@QED_MSG_LL2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Allocated LL2 Rxq [Type %08x] with 0x%08x buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ll2_info*)* @qed_ll2_acquire_connection_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_acquire_connection_rx(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ll2_info*, align 8
  %5 = alloca %struct.qed_ll2_rx_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %9 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %85

14:                                               ; preds = %2
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QED_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %19 = load i32, i32* @QED_CHAIN_MODE_NEXT_PTR, align 4
  %20 = load i32, i32* @QED_CHAIN_CNT_TYPE_U16, align 4
  %21 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %22 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %26 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = call i32 @qed_chain_alloc(i32 %17, i32 %18, i32 %19, i32 %20, i32 %24, i32 4, i32* %27, i32* null)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %14
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %33 = call i32 @DP_NOTICE(%struct.qed_hwfn* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %85

34:                                               ; preds = %14
  %35 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %36 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = call i32 @qed_chain_get_capacity(i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.qed_ll2_rx_packet* @kcalloc(i32 %39, i32 4, i32 %40)
  store %struct.qed_ll2_rx_packet* %41, %struct.qed_ll2_rx_packet** %5, align 8
  %42 = load %struct.qed_ll2_rx_packet*, %struct.qed_ll2_rx_packet** %5, align 8
  %43 = icmp ne %struct.qed_ll2_rx_packet* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %48 = call i32 @DP_NOTICE(%struct.qed_hwfn* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %85

49:                                               ; preds = %34
  %50 = load %struct.qed_ll2_rx_packet*, %struct.qed_ll2_rx_packet** %5, align 8
  %51 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %52 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store %struct.qed_ll2_rx_packet* %50, %struct.qed_ll2_rx_packet** %53, align 8
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %55 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @QED_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %58 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %59 = load i32, i32* @QED_CHAIN_CNT_TYPE_U16, align 4
  %60 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %61 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %65 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @qed_chain_alloc(i32 %56, i32 %57, i32 %58, i32 %59, i32 %63, i32 4, i32* %66, i32* null)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %49
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %72 = call i32 @DP_NOTICE(%struct.qed_hwfn* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %85

73:                                               ; preds = %49
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %75 = load i32, i32* @QED_MSG_LL2, align 4
  %76 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %77 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %81 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %74, i32 %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %73, %70, %44, %31, %13
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @qed_chain_alloc(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_chain_get_capacity(i32*) #1

declare dso_local %struct.qed_ll2_rx_packet* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
