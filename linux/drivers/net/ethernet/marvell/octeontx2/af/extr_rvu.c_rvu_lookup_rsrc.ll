; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_lookup_rsrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_lookup_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.rvu_block*, i32, i32)* @rvu_lookup_rsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_lookup_rsrc(%struct.rvu* %0, %struct.rvu_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvu*, align 8
  %7 = alloca %struct.rvu_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %6, align 8
  store %struct.rvu_block* %1, %struct.rvu_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = shl i32 %11, 24
  %13 = load i32, i32* %9, align 4
  %14 = shl i32 %13, 16
  %15 = or i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = or i64 %16, 8192
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load %struct.rvu*, %struct.rvu** %6, align 8
  %20 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %21 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %24 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @rvu_write64(%struct.rvu* %19, i32 %22, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %39, %4
  %29 = load %struct.rvu*, %struct.rvu** %6, align 8
  %30 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %31 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %34 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @rvu_read64(%struct.rvu* %29, i32 %32, i32 %35)
  %37 = and i64 %36, 8192
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %28

40:                                               ; preds = %28
  %41 = load %struct.rvu*, %struct.rvu** %6, align 8
  %42 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %43 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %46 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @rvu_read64(%struct.rvu* %41, i32 %44, i32 %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = and i64 %51, 4096
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %58

55:                                               ; preds = %40
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 4095
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i64 @rvu_read64(%struct.rvu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
