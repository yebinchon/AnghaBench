; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_ring_fl_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_ring_fl_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sge_fl = type { i32, i32*, i32, i32 }

@FL_PER_EQ_UNIT = common dso_local global i32 0, align 4
@T4VF_SGE_BASE_ADDR = common dso_local global i64 0, align 8
@SGE_VF_KDOORBELL = common dso_local global i64 0, align 8
@SGE_UDB_KDOORBELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @ring_fl_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_fl_db(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %12 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FL_PER_EQ_UNIT, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %2
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_t4(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %25 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FL_PER_EQ_UNIT, align 4
  %28 = sdiv i32 %26, %27
  %29 = call i32 @PIDX_V(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %41

32:                                               ; preds = %16
  %33 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %34 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FL_PER_EQ_UNIT, align 4
  %37 = sdiv i32 %35, %36
  %38 = call i32 @PIDX_T5_V(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %32, %23
  %42 = call i32 (...) @wmb()
  %43 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %44 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %41
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = load i64, i64* @T4VF_SGE_BASE_ADDR, align 8
  %53 = load i64, i64* @SGE_VF_KDOORBELL, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %56 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @QID_V(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @t4_write_reg(%struct.adapter* %51, i64 %54, i32 %60)
  br label %77

62:                                               ; preds = %41
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %65 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @QID_V(i32 %66)
  %68 = or i32 %63, %67
  %69 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %70 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @SGE_UDB_KDOORBELL, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @writel(i32 %68, i32* %74)
  %76 = call i32 (...) @wmb()
  br label %77

77:                                               ; preds = %62, %50
  %78 = load i32, i32* @FL_PER_EQ_UNIT, align 4
  %79 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %80 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = srem i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %2
  ret void
}

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @PIDX_V(i32) #1

declare dso_local i32 @PIDX_T5_V(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @QID_V(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
