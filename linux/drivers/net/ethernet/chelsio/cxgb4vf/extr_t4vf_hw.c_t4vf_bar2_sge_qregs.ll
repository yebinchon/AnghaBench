; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_bar2_sge_qregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_bar2_sge_qregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@T4_BAR2_QTYPE_EGRESS = common dso_local global i32 0, align 4
@SGE_UDB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_bar2_sge_qregs(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.adapter*, %struct.adapter** %7, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_t4(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %86

30:                                               ; preds = %5
  %31 = load %struct.adapter*, %struct.adapter** %7, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 10
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = shl i32 1, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @T4_BAR2_QTYPE_EGRESS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.adapter*, %struct.adapter** %7, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  br label %54

48:                                               ; preds = %30
  %49 = load %struct.adapter*, %struct.adapter** %7, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi i32 [ %47, %42 ], [ %53, %48 ]
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = shl i32 1, %56
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %14, align 4
  %61 = lshr i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* @SGE_UDB_SIZE, align 4
  %69 = mul i32 %67, %68
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ult i32 %71, %72
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %54
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %17, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %81

81:                                               ; preds = %77, %54
  %82 = load i32, i32* %17, align 4
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %81, %27
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @is_t4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
