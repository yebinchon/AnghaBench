; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_get_pfvf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_get_pfvf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu_pfvf = type { i32 }
%struct.rvu = type { %struct.rvu_pfvf*, %struct.rvu_pfvf* }

@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca %struct.rvu_pfvf*, align 8
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.rvu*, %struct.rvu** %4, align 8
  %12 = getelementptr inbounds %struct.rvu, %struct.rvu* %11, i32 0, i32 1
  %13 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %12, align 8
  %14 = load %struct.rvu*, %struct.rvu** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @rvu_get_hwvf(%struct.rvu* %14, i32 %15)
  %17 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %13, i64 %16
  store %struct.rvu_pfvf* %17, %struct.rvu_pfvf** %3, align 8
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.rvu*, %struct.rvu** %4, align 8
  %20 = getelementptr inbounds %struct.rvu, %struct.rvu* %19, i32 0, i32 0
  %21 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @rvu_get_pf(i32 %22)
  %24 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %21, i64 %23
  store %struct.rvu_pfvf* %24, %struct.rvu_pfvf** %3, align 8
  br label %25

25:                                               ; preds = %18, %10
  %26 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %3, align 8
  ret %struct.rvu_pfvf* %26
}

declare dso_local i64 @rvu_get_hwvf(%struct.rvu*, i32) #1

declare dso_local i64 @rvu_get_pf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
