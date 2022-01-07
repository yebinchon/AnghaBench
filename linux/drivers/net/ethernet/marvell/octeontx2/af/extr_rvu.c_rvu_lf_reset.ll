; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_lf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_lf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_block = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_lf_reset(%struct.rvu* %0, %struct.rvu_block* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.rvu_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.rvu_block* %1, %struct.rvu_block** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rvu_block*, %struct.rvu_block** %6, align 8
  %10 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.rvu*, %struct.rvu** %5, align 8
  %16 = load %struct.rvu_block*, %struct.rvu_block** %6, align 8
  %17 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rvu_block*, %struct.rvu_block** %6, align 8
  %20 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BIT_ULL(i32 12)
  %24 = or i32 %22, %23
  %25 = call i32 @rvu_write64(%struct.rvu* %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.rvu*, %struct.rvu** %5, align 8
  %27 = load %struct.rvu_block*, %struct.rvu_block** %6, align 8
  %28 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rvu_block*, %struct.rvu_block** %6, align 8
  %31 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BIT_ULL(i32 12)
  %34 = call i32 @rvu_poll_reg(%struct.rvu* %26, i32 %29, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %14, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @rvu_poll_reg(%struct.rvu*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
