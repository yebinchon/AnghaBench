; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_bar2_sge_qregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_bar2_sge_qregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@T4_BAR2_QTYPE_EGRESS = common dso_local global i32 0, align 4
@SGE_UDB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_bar2_sge_qregs(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %6
  %26 = load %struct.adapter*, %struct.adapter** %8, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @is_t4(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %91

35:                                               ; preds = %25, %6
  %36 = load %struct.adapter*, %struct.adapter** %8, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 10
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = shl i32 1, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @T4_BAR2_QTYPE_EGRESS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load %struct.adapter*, %struct.adapter** %8, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %59

53:                                               ; preds = %35
  %54 = load %struct.adapter*, %struct.adapter** %8, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i32 [ %52, %47 ], [ %58, %53 ]
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %16, align 4
  %66 = lshr i32 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %17, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* @SGE_UDB_SIZE, align 4
  %74 = mul i32 %72, %73
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ult i32 %76, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* %22, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %59
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %19, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %86

86:                                               ; preds = %82, %59
  %87 = load i32, i32* %19, align 4
  %88 = load i32*, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %86, %32
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i64 @is_t4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
