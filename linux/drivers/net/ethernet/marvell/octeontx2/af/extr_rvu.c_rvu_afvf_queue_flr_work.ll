; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_afvf_queue_flr_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_afvf_queue_flr_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, i32)* @rvu_afvf_queue_flr_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_afvf_queue_flr_work(%struct.rvu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 64
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %14

14:                                               ; preds = %13, %3
  %15 = load %struct.rvu*, %struct.rvu** %4, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @RVU_PF_VFFLR_INTX(i32 %16)
  %18 = call i32 @rvupf_read64(%struct.rvu* %15, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %70

22:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %67, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @BIT_ULL(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %67

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.rvu*, %struct.rvu** %4, align 8
  %39 = getelementptr inbounds %struct.rvu, %struct.rvu* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %37, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.rvu*, %struct.rvu** %4, align 8
  %45 = getelementptr inbounds %struct.rvu, %struct.rvu* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.rvu*, %struct.rvu** %4, align 8
  %48 = getelementptr inbounds %struct.rvu, %struct.rvu* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @queue_work(i32 %46, i32* %53)
  %55 = load %struct.rvu*, %struct.rvu** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @RVU_PF_VFFLR_INTX(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @BIT_ULL(i32 %58)
  %60 = call i32 @rvupf_write64(%struct.rvu* %55, i32 %57, i32 %59)
  %61 = load %struct.rvu*, %struct.rvu** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @RVU_PF_VFFLR_INT_ENA_W1CX(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @BIT_ULL(i32 %64)
  %66 = call i32 @rvupf_write64(%struct.rvu* %61, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %34, %33
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %23

70:                                               ; preds = %21, %23
  ret void
}

declare dso_local i32 @rvupf_read64(%struct.rvu*, i32) #1

declare dso_local i32 @RVU_PF_VFFLR_INTX(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rvupf_write64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @RVU_PF_VFFLR_INT_ENA_W1CX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
