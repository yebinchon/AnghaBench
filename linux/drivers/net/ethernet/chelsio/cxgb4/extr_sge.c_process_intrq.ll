; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_process_intrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_process_intrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__**, i64, %struct.sge_rspq }
%struct.TYPE_3__ = type { i32 }
%struct.sge_rspq = type { i32, i32*, i32, i32, i32, i64 }
%struct.rsp_ctrl = type { i32, i32 }

@RSPD_TYPE_INTR_X = common dso_local global i64 0, align 8
@SGE_PF_GTS_A = common dso_local global i32 0, align 4
@SGE_UDB_GTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @process_intrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_intrq(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsp_ctrl*, align 8
  %5 = alloca %struct.sge_rspq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store %struct.sge_rspq* %10, %struct.sge_rspq** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %66, %1
  %16 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %17 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %21 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 8
  %25 = getelementptr i8, i8* %19, i64 %24
  %26 = bitcast i8* %25 to %struct.rsp_ctrl*
  store %struct.rsp_ctrl* %26, %struct.rsp_ctrl** %4, align 8
  %27 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %4, align 8
  %28 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %29 = call i32 @is_new_response(%struct.rsp_ctrl* %27, %struct.sge_rspq* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %15
  br label %69

32:                                               ; preds = %15
  %33 = call i32 (...) @dma_rmb()
  %34 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.rsp_ctrl, %struct.rsp_ctrl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @RSPD_TYPE_G(i32 %36)
  %38 = load i64, i64* @RSPD_TYPE_INTR_X, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %32
  %41 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %4, align 8
  %42 = getelementptr inbounds %struct.rsp_ctrl, %struct.rsp_ctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohl(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @napi_schedule(i32* %61)
  br label %63

63:                                               ; preds = %40, %32
  %64 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %65 = call i32 @rspq_next(%struct.sge_rspq* %64)
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %15

69:                                               ; preds = %31
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @CIDXINC_V(i32 %70)
  %72 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %73 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @SEINTARM_V(i32 %74)
  %76 = or i32 %71, %75
  store i32 %76, i32* %6, align 4
  %77 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %78 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %69
  %85 = load %struct.adapter*, %struct.adapter** %2, align 8
  %86 = load i32, i32* @SGE_PF_GTS_A, align 4
  %87 = call i32 @MYPF_REG(i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %90 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @INGRESSQID_V(i32 %91)
  %93 = or i32 %88, %92
  %94 = call i32 @t4_write_reg(%struct.adapter* %85, i32 %87, i32 %93)
  br label %110

95:                                               ; preds = %69
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %98 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @INGRESSQID_V(i32 %99)
  %101 = or i32 %96, %100
  %102 = load %struct.sge_rspq*, %struct.sge_rspq** %5, align 8
  %103 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @SGE_UDB_GTS, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i32 @writel(i32 %101, i32* %107)
  %109 = call i32 (...) @wmb()
  br label %110

110:                                              ; preds = %95, %84
  %111 = load %struct.adapter*, %struct.adapter** %2, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = call i32 @spin_unlock(i32* %113)
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @is_new_response(%struct.rsp_ctrl*, %struct.sge_rspq*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @RSPD_TYPE_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @rspq_next(%struct.sge_rspq*) #1

declare dso_local i32 @CIDXINC_V(i32) #1

declare dso_local i32 @SEINTARM_V(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @INGRESSQID_V(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
