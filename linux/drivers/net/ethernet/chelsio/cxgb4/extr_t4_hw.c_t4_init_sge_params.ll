; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_init_sge_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_init_sge_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sge_params }
%struct.sge_params = type { i32, i32, i32 }

@SGE_HOST_PAGE_SIZE_A = common dso_local global i32 0, align 4
@HOSTPAGESIZEPF0_S = common dso_local global i32 0, align 4
@HOSTPAGESIZEPF1_S = common dso_local global i32 0, align 4
@HOSTPAGESIZEPF0_M = common dso_local global i32 0, align 4
@QUEUESPERPAGEPF0_S = common dso_local global i32 0, align 4
@QUEUESPERPAGEPF1_S = common dso_local global i32 0, align 4
@SGE_EGRESS_QUEUES_PER_PAGE_PF_A = common dso_local global i32 0, align 4
@QUEUESPERPAGEPF0_M = common dso_local global i32 0, align 4
@SGE_INGRESS_QUEUES_PER_PAGE_PF_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_init_sge_params(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.sge_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.sge_params* %10, %struct.sge_params** %3, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load i32, i32* @SGE_HOST_PAGE_SIZE_A, align 4
  %13 = call i32 @t4_read_reg(%struct.adapter* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @HOSTPAGESIZEPF0_S, align 4
  %15 = load i32, i32* @HOSTPAGESIZEPF1_S, align 4
  %16 = load i32, i32* @HOSTPAGESIZEPF0_S, align 4
  %17 = sub i32 %15, %16
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul i32 %17, %20
  %22 = add i32 %14, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = lshr i32 %23, %24
  %26 = load i32, i32* @HOSTPAGESIZEPF0_M, align 4
  %27 = and i32 %25, %26
  %28 = load %struct.sge_params*, %struct.sge_params** %3, align 8
  %29 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @QUEUESPERPAGEPF0_S, align 4
  %31 = load i32, i32* @QUEUESPERPAGEPF1_S, align 4
  %32 = load i32, i32* @QUEUESPERPAGEPF0_S, align 4
  %33 = sub i32 %31, %32
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul i32 %33, %36
  %38 = add i32 %30, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = load i32, i32* @SGE_EGRESS_QUEUES_PER_PAGE_PF_A, align 4
  %41 = call i32 @t4_read_reg(%struct.adapter* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = lshr i32 %42, %43
  %45 = load i32, i32* @QUEUESPERPAGEPF0_M, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.sge_params*, %struct.sge_params** %3, align 8
  %48 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = load i32, i32* @SGE_INGRESS_QUEUES_PER_PAGE_PF_A, align 4
  %51 = call i32 @t4_read_reg(%struct.adapter* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = lshr i32 %52, %53
  %55 = load i32, i32* @QUEUESPERPAGEPF0_M, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.sge_params*, %struct.sge_params** %3, align 8
  %58 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  ret i32 0
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
