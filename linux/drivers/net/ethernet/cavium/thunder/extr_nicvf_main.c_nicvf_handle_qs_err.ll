; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_handle_qs_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_handle_qs_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.queue_set* }
%struct.queue_set = type { i32, i32* }

@NIC_QSET_CQ_0_7_STATUS = common dso_local global i32 0, align 4
@CQ_ERR_MASK = common dso_local global i32 0, align 4
@NICVF_INTR_CQ = common dso_local global i32 0, align 4
@NICVF_INTR_QS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nicvf_handle_qs_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_handle_qs_err(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.queue_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.nicvf*
  store %struct.nicvf* %8, %struct.nicvf** %3, align 8
  %9 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 1
  %11 = load %struct.queue_set*, %struct.queue_set** %10, align 8
  store %struct.queue_set* %11, %struct.queue_set** %4, align 8
  %12 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %13 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @netif_tx_disable(i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %73, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %19 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %16
  %23 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %24 = load i32, i32* @NIC_QSET_CQ_0_7_STATUS, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @CQ_ERR_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %73

32:                                               ; preds = %22
  %33 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %34 = load i32, i32* @NICVF_INTR_CQ, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @nicvf_disable_intr(%struct.nicvf* %33, i32 %34, i32 %35)
  %37 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @nicvf_sq_disable(%struct.nicvf* %37, i32 %38)
  %40 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %41 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @nicvf_cq_intr_handler(i32 %42, i32 %43, i32* null, i32 0)
  %45 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %46 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @nicvf_cmp_queue_config(%struct.nicvf* %45, %struct.queue_set* %46, i32 %47, i32 1)
  %49 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %50 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %53 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @nicvf_sq_free_used_descs(i32 %51, i32* %57, i32 %58)
  %60 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %61 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %62 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @nicvf_sq_enable(%struct.nicvf* %60, i32* %66, i32 %67)
  %69 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %70 = load i32, i32* @NICVF_INTR_CQ, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @nicvf_enable_intr(%struct.nicvf* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %32, %31
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %16

76:                                               ; preds = %16
  %77 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %78 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @netif_tx_start_all_queues(i32 %79)
  %81 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %82 = load i32, i32* @NICVF_INTR_QS_ERR, align 4
  %83 = call i32 @nicvf_enable_intr(%struct.nicvf* %81, i32 %82, i32 0)
  ret void
}

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @nicvf_queue_reg_read(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @nicvf_disable_intr(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @nicvf_sq_disable(%struct.nicvf*, i32) #1

declare dso_local i32 @nicvf_cq_intr_handler(i32, i32, i32*, i32) #1

declare dso_local i32 @nicvf_cmp_queue_config(%struct.nicvf*, %struct.queue_set*, i32, i32) #1

declare dso_local i32 @nicvf_sq_free_used_descs(i32, i32*, i32) #1

declare dso_local i32 @nicvf_sq_enable(%struct.nicvf*, i32*, i32) #1

declare dso_local i32 @nicvf_enable_intr(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
