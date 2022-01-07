; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_t1_sge_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_t1_sge_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SGE_INT_ENABLE = common dso_local global i32 0, align 4
@A_PL_ENABLE = common dso_local global i64 0, align 8
@NETIF_F_TSO = common dso_local global i32 0, align 4
@F_PACKET_TOO_BIG = common dso_local global i32 0, align 4
@A_SG_INT_ENABLE = common dso_local global i64 0, align 8
@SGE_PL_INTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t1_sge_intr_enable(%struct.sge* %0) #0 {
  %2 = alloca %struct.sge*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sge* %0, %struct.sge** %2, align 8
  %5 = load i32, i32* @SGE_INT_ENABLE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.sge*, %struct.sge** %2, align 8
  %7 = getelementptr inbounds %struct.sge, %struct.sge* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @A_PL_ENABLE, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sge*, %struct.sge** %2, align 8
  %15 = getelementptr inbounds %struct.sge, %struct.sge* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NETIF_F_TSO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @F_PACKET_TOO_BIG, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %1
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.sge*, %struct.sge** %2, align 8
  %35 = getelementptr inbounds %struct.sge, %struct.sge* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @A_SG_INT_ENABLE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %33, i64 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SGE_PL_INTR_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.sge*, %struct.sge** %2, align 8
  %46 = getelementptr inbounds %struct.sge, %struct.sge* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @A_PL_ENABLE, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %44, i64 %51)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
