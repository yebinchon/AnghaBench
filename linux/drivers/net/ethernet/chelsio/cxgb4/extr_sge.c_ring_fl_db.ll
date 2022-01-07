; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_ring_fl_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_ring_fl_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sge_fl = type { i32, i32*, i32, i32 }

@SGE_PF_KDOORBELL_A = common dso_local global i32 0, align 4
@SGE_UDB_KDOORBELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @ring_fl_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_fl_db(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %6 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %7 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %8, 8
  br i1 %9, label %10, label %78

10:                                               ; preds = %2
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_t4(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %10
  %23 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %24 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 8
  %27 = call i32 @PIDX_V(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %10
  %31 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %32 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 8
  %35 = call i32 @PIDX_T5_V(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = call i32 (...) @wmb()
  %40 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %41 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = load i32, i32* @SGE_PF_KDOORBELL_A, align 4
  %50 = call i32 @MYPF_REG(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %53 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @QID_V(i32 %54)
  %56 = or i32 %51, %55
  %57 = call i32 @t4_write_reg(%struct.adapter* %48, i32 %50, i32 %56)
  br label %73

58:                                               ; preds = %38
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %61 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @QID_V(i32 %62)
  %64 = or i32 %59, %63
  %65 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %66 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @SGE_UDB_KDOORBELL, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @writel(i32 %64, i32* %70)
  %72 = call i32 (...) @wmb()
  br label %73

73:                                               ; preds = %58, %47
  %74 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %75 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 7
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %73, %2
  ret void
}

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @PIDX_V(i32) #1

declare dso_local i32 @PIDX_T5_V(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @QID_V(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
