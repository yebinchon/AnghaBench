; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_3__*, %struct.qed_dev* }
%struct.TYPE_3__ = type { %struct.qed_iwarp_info }
%struct.qed_iwarp_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_dev = type { i32 }
%struct.qed_rdma_start_in_params = type { i32 }

@QED_IWARP_TS_EN = common dso_local global i32 0, align 4
@CHIP_BB = common dso_local global i32 0, align 4
@CHIP_K2 = common dso_local global i32 0, align 4
@qed_iwarp_rcv_wnd_size = common dso_local global %struct.TYPE_4__* null, align 8
@QED_IWARP_RCV_WND_SIZE_MIN = common dso_local global i32 0, align 4
@QED_IWARP_PARAM_CRC_NEEDED = common dso_local global i32 0, align 4
@MPA_NEGOTIATION_TYPE_ENHANCED = common dso_local global i32 0, align 4
@QED_IWARP_PARAM_P2P = common dso_local global i32 0, align 4
@MPA_RTR_TYPE_ZERO_SEND = common dso_local global i32 0, align 4
@MPA_RTR_TYPE_ZERO_WRITE = common dso_local global i32 0, align 4
@MPA_RTR_TYPE_ZERO_READ = common dso_local global i32 0, align 4
@PROTOCOLID_IWARP = common dso_local global i32 0, align 4
@qed_iwarp_async_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iwarp_setup(%struct.qed_hwfn* %0, %struct.qed_rdma_start_in_params* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_rdma_start_in_params*, align 8
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca %struct.qed_iwarp_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_rdma_start_in_params* %1, %struct.qed_rdma_start_in_params** %4, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 1
  %11 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  store %struct.qed_dev* %11, %struct.qed_dev** %5, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.qed_iwarp_info* %15, %struct.qed_iwarp_info** %6, align 8
  %16 = load i32, i32* @QED_IWARP_TS_EN, align 4
  %17 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %6, align 8
  %18 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %20 = call i64 @QED_IS_BB(%struct.qed_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @CHIP_BB, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @CHIP_K2, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  %28 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %29 = call i32 @qed_device_num_ports(%struct.qed_dev* %28)
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qed_iwarp_rcv_wnd_size, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %45

38:                                               ; preds = %26
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qed_iwarp_rcv_wnd_size, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi i32 [ %37, %31 ], [ %44, %38 ]
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ilog2(i32 %47)
  %49 = load i32, i32* @QED_IWARP_RCV_WND_SIZE_MIN, align 4
  %50 = call i32 @ilog2(i32 %49)
  %51 = sub nsw i32 %48, %50
  %52 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %6, align 8
  %53 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %6, align 8
  %56 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %54, %57
  %59 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %6, align 8
  %60 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @QED_IWARP_PARAM_CRC_NEEDED, align 4
  %62 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %6, align 8
  %63 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @MPA_NEGOTIATION_TYPE_ENHANCED, align 4
  %65 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %6, align 8
  %66 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @QED_IWARP_PARAM_P2P, align 4
  %68 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %6, align 8
  %69 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @MPA_RTR_TYPE_ZERO_SEND, align 4
  %71 = load i32, i32* @MPA_RTR_TYPE_ZERO_WRITE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MPA_RTR_TYPE_ZERO_READ, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %6, align 8
  %76 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %78 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %80, i32 0, i32 5
  %82 = call i32 @spin_lock_init(i32* %81)
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %84 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %86, i32 0, i32 4
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %90 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %92, i32 0, i32 3
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %96 = load i32, i32* @PROTOCOLID_IWARP, align 4
  %97 = load i32, i32* @qed_iwarp_async_event, align 4
  %98 = call i32 @qed_spq_register_async_cb(%struct.qed_hwfn* %95, i32 %96, i32 %97)
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %100 = call i32 @qed_ooo_setup(%struct.qed_hwfn* %99)
  %101 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %102 = load %struct.qed_rdma_start_in_params*, %struct.qed_rdma_start_in_params** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @qed_iwarp_ll2_start(%struct.qed_hwfn* %101, %struct.qed_rdma_start_in_params* %102, i32 %103)
  ret i32 %104
}

declare dso_local i64 @QED_IS_BB(%struct.qed_dev*) #1

declare dso_local i32 @qed_device_num_ports(%struct.qed_dev*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qed_spq_register_async_cb(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_ooo_setup(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iwarp_ll2_start(%struct.qed_hwfn*, %struct.qed_rdma_start_in_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
