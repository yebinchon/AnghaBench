; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_set_fragment_of_tx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_set_fragment_of_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_ll2_tx_packet = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, %struct.core_tx_bd* }
%struct.core_tx_bd = type { i32, i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.qed_ll2_tx_packet* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_ll2_set_fragment_of_tx_packet(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.qed_ll2_tx_packet*, align 8
  %11 = alloca %struct.qed_hwfn*, align 8
  %12 = alloca %struct.qed_ll2_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.core_tx_bd*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.qed_ll2_tx_packet* null, %struct.qed_ll2_tx_packet** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %17, %struct.qed_hwfn** %11, align 8
  store %struct.qed_ll2_info* null, %struct.qed_ll2_info** %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.qed_ll2_info* @qed_ll2_handle_sanity(%struct.qed_hwfn* %18, i32 %19)
  store %struct.qed_ll2_info* %20, %struct.qed_ll2_info** %12, align 8
  %21 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %12, align 8
  %22 = icmp ne %struct.qed_ll2_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %101

26:                                               ; preds = %4
  %27 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %12, align 8
  %28 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_packet** %29, align 8
  %31 = icmp ne %struct.qed_ll2_tx_packet* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %101

35:                                               ; preds = %26
  %36 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %12, align 8
  %37 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_packet** %38, align 8
  store %struct.qed_ll2_tx_packet* %39, %struct.qed_ll2_tx_packet** %10, align 8
  %40 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %12, align 8
  %41 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_packet** %10, align 8
  %46 = getelementptr inbounds %struct.qed_ll2_tx_packet, %struct.qed_ll2_tx_packet* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %101

52:                                               ; preds = %35
  %53 = load %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_packet** %10, align 8
  %54 = getelementptr inbounds %struct.qed_ll2_tx_packet, %struct.qed_ll2_tx_packet* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load %struct.core_tx_bd*, %struct.core_tx_bd** %58, align 8
  store %struct.core_tx_bd* %59, %struct.core_tx_bd** %14, align 8
  %60 = load %struct.core_tx_bd*, %struct.core_tx_bd** %14, align 8
  %61 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @DMA_REGPAIR_LE(i32 %62, i32 %63)
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @cpu_to_le16(i64 %65)
  %67 = load %struct.core_tx_bd*, %struct.core_tx_bd** %14, align 8
  %68 = getelementptr inbounds %struct.core_tx_bd, %struct.core_tx_bd* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_packet** %10, align 8
  %71 = getelementptr inbounds %struct.qed_ll2_tx_packet, %struct.qed_ll2_tx_packet* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %69, i32* %75, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.qed_ll2_tx_packet*, %struct.qed_ll2_tx_packet** %10, align 8
  %78 = getelementptr inbounds %struct.qed_ll2_tx_packet, %struct.qed_ll2_tx_packet* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i64 %76, i64* %82, align 8
  %83 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %12, align 8
  %84 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %12, align 8
  %89 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %94 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %12, align 8
  %95 = call i32 @qed_ll2_tx_packet_notify(%struct.qed_hwfn* %93, %struct.qed_ll2_info* %94)
  %96 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %12, align 8
  %97 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %52, %49, %32, %23
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.qed_ll2_info* @qed_ll2_handle_sanity(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qed_ll2_tx_packet_notify(%struct.qed_hwfn*, %struct.qed_ll2_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
