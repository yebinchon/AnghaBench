; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_reg.c_rvu_check_valid_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_reg.c_rvu_check_valid_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_reg_map = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@TXSCHQ_HWREGMAP = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_CNT = common dso_local global i32 0, align 4
@txsch_reg_map = common dso_local global %struct.hw_reg_map* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_check_valid_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hw_reg_map*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 7
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TXSCHQ_HWREGMAP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NIX_TXSCH_LVL_CNT, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %76

23:                                               ; preds = %18
  %24 = load %struct.hw_reg_map*, %struct.hw_reg_map** @txsch_reg_map, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hw_reg_map, %struct.hw_reg_map* %24, i64 %26
  store %struct.hw_reg_map* %27, %struct.hw_reg_map** %9, align 8
  br label %29

28:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %76

29:                                               ; preds = %23
  %30 = load %struct.hw_reg_map*, %struct.hw_reg_map** %9, align 8
  %31 = getelementptr inbounds %struct.hw_reg_map, %struct.hw_reg_map* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %76

36:                                               ; preds = %29
  %37 = load %struct.hw_reg_map*, %struct.hw_reg_map** %9, align 8
  %38 = getelementptr inbounds %struct.hw_reg_map, %struct.hw_reg_map* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %72, %36
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.hw_reg_map*, %struct.hw_reg_map** %9, align 8
  %45 = getelementptr inbounds %struct.hw_reg_map, %struct.hw_reg_map* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.hw_reg_map*, %struct.hw_reg_map** %9, align 8
  %51 = getelementptr inbounds %struct.hw_reg_map, %struct.hw_reg_map* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %49, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.hw_reg_map*, %struct.hw_reg_map** %9, align 8
  %62 = getelementptr inbounds %struct.hw_reg_map, %struct.hw_reg_map* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %60, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %76

71:                                               ; preds = %59, %48
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %42

75:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %70, %35, %28, %22, %13
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
