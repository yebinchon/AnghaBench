; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_destroy_busmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_destroy_busmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__**, %struct.TYPE_3__** }

@ehea_busmap_mutex = common dso_local global i32 0, align 4
@ehea_bmap = common dso_local global %struct.TYPE_3__* null, align 8
@EHEA_MAP_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ehea_destroy_busmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @mutex_lock(i32* @ehea_busmap_mutex)
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehea_bmap, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %76

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %70, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @EHEA_MAP_ENTRIES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %73

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehea_bmap, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %14, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %70

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @EHEA_MAP_ENTRIES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehea_bmap, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  br label %58

43:                                               ; preds = %27
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehea_bmap, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %45, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %46, i64 %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %51, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @kfree(%struct.TYPE_3__* %56)
  br label %58

58:                                               ; preds = %43, %42
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %23

61:                                               ; preds = %23
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehea_bmap, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %63, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %64, i64 %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 @kfree(%struct.TYPE_3__* %68)
  br label %70

70:                                               ; preds = %61, %21
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %8

73:                                               ; preds = %8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehea_bmap, align 8
  %75 = call i32 @kfree(%struct.TYPE_3__* %74)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @ehea_bmap, align 8
  br label %76

76:                                               ; preds = %73, %6
  %77 = call i32 @mutex_unlock(i32* @ehea_busmap_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
