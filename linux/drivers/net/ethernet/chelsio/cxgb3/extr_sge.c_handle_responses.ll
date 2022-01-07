; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_handle_responses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_handle_responses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_rspq = type { i64, i32, i32, %struct.rsp_desc* }
%struct.rsp_desc = type { i32 }
%struct.sge_qset = type { i32 }

@A_SG_GTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_rspq*)* @handle_responses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_responses(%struct.adapter* %0, %struct.sge_rspq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sge_rspq*, align 8
  %6 = alloca %struct.sge_qset*, align 8
  %7 = alloca %struct.rsp_desc*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %5, align 8
  %8 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %9 = call %struct.sge_qset* @rspq_to_qset(%struct.sge_rspq* %8)
  store %struct.sge_qset* %9, %struct.sge_qset** %6, align 8
  %10 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %11 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %10, i32 0, i32 3
  %12 = load %struct.rsp_desc*, %struct.rsp_desc** %11, align 8
  %13 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %14 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.rsp_desc, %struct.rsp_desc* %12, i64 %15
  store %struct.rsp_desc* %16, %struct.rsp_desc** %7, align 8
  %17 = load %struct.rsp_desc*, %struct.rsp_desc** %7, align 8
  %18 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %19 = call i32 @is_new_response(%struct.rsp_desc* %17, %struct.sge_rspq* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = call i32 (...) @dma_rmb()
  %24 = load %struct.rsp_desc*, %struct.rsp_desc** %7, align 8
  %25 = call i64 @is_pure_response(%struct.rsp_desc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %22
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %30 = load %struct.rsp_desc*, %struct.rsp_desc** %7, align 8
  %31 = call i64 @process_pure_responses(%struct.adapter* %28, %struct.sge_qset* %29, %struct.rsp_desc* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = load i32, i32* @A_SG_GTS, align 4
  %36 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %37 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @V_RSPQ(i32 %38)
  %40 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %41 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @V_NEWTIMER(i32 %42)
  %44 = or i32 %39, %43
  %45 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %46 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @V_NEWINDEX(i64 %47)
  %49 = or i32 %44, %48
  %50 = call i32 @t3_write_reg(%struct.adapter* %34, i32 %35, i32 %49)
  store i32 0, i32* %3, align 4
  br label %55

51:                                               ; preds = %27, %22
  %52 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %53 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %52, i32 0, i32 0
  %54 = call i32 @napi_schedule(i32* %53)
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %33, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.sge_qset* @rspq_to_qset(%struct.sge_rspq*) #1

declare dso_local i32 @is_new_response(%struct.rsp_desc*, %struct.sge_rspq*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @is_pure_response(%struct.rsp_desc*) #1

declare dso_local i64 @process_pure_responses(%struct.adapter*, %struct.sge_qset*, %struct.rsp_desc*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_RSPQ(i32) #1

declare dso_local i32 @V_NEWTIMER(i32) #1

declare dso_local i32 @V_NEWINDEX(i64) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
