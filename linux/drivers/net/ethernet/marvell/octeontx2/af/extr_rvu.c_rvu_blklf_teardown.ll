; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_blklf_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_blklf_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rvu_block* }
%struct.rvu_block = type { i64, i32 }

@BLKADDR_NIX0 = common dso_local global i64 0, align 8
@BLKADDR_NPA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to reset blkaddr %d LF%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, i64)* @rvu_blklf_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_blklf_teardown(%struct.rvu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rvu_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.rvu*, %struct.rvu** %4, align 8
  %13 = getelementptr inbounds %struct.rvu, %struct.rvu* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.rvu_block*, %struct.rvu_block** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %16, i64 %17
  store %struct.rvu_block* %18, %struct.rvu_block** %7, align 8
  %19 = load %struct.rvu*, %struct.rvu** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @rvu_get_pfvf(%struct.rvu* %19, i32 %20)
  %22 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %23 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @rvu_get_rsrc_mapcount(i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %89

29:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %86, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %89

34:                                               ; preds = %30
  %35 = load %struct.rvu*, %struct.rvu** %4, align 8
  %36 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @rvu_get_lf(%struct.rvu* %35, %struct.rvu_block* %36, i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %86

43:                                               ; preds = %34
  %44 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %45 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BLKADDR_NIX0, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.rvu*, %struct.rvu** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %53 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @rvu_nix_lf_teardown(%struct.rvu* %50, i32 %51, i64 %54, i32 %55)
  br label %69

57:                                               ; preds = %43
  %58 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %59 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BLKADDR_NPA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.rvu*, %struct.rvu** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @rvu_npa_lf_teardown(%struct.rvu* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %57
  br label %69

69:                                               ; preds = %68, %49
  %70 = load %struct.rvu*, %struct.rvu** %4, align 8
  %71 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @rvu_lf_reset(%struct.rvu* %70, %struct.rvu_block* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.rvu*, %struct.rvu** %4, align 8
  %78 = getelementptr inbounds %struct.rvu, %struct.rvu* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %81 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %69
  br label %86

86:                                               ; preds = %85, %42
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %30

89:                                               ; preds = %28, %30
  ret void
}

declare dso_local i32 @rvu_get_rsrc_mapcount(i32, i32) #1

declare dso_local i32 @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, %struct.rvu_block*, i32, i32) #1

declare dso_local i32 @rvu_nix_lf_teardown(%struct.rvu*, i32, i64, i32) #1

declare dso_local i32 @rvu_npa_lf_teardown(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_lf_reset(%struct.rvu*, %struct.rvu_block*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
