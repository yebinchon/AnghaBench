; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_alloc_tqps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_alloc_tqps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_4__*, %struct.hclgevf_tqp* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.hclgevf_tqp = type { i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ae_algovf = common dso_local global i32 0, align 4
@HCLGEVF_TQP_REG_OFFSET = common dso_local global i64 0, align 8
@HCLGEVF_TQP_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_alloc_tqps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_alloc_tqps(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.hclgevf_tqp*, align 8
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hclgevf_tqp* @devm_kcalloc(i32* %9, i32 %12, i32 48, i32 %13)
  %15 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %15, i32 0, i32 6
  store %struct.hclgevf_tqp* %14, %struct.hclgevf_tqp** %16, align 8
  %17 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %17, i32 0, i32 6
  %19 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %18, align 8
  %20 = icmp ne %struct.hclgevf_tqp* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %85

24:                                               ; preds = %1
  %25 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %25, i32 0, i32 6
  %27 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %26, align 8
  store %struct.hclgevf_tqp* %27, %struct.hclgevf_tqp** %4, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %81, %24
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %31 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %28
  %35 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %35, i32 0, i32 5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %4, align 8
  %40 = getelementptr inbounds %struct.hclgevf_tqp, %struct.hclgevf_tqp* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %4, align 8
  %43 = getelementptr inbounds %struct.hclgevf_tqp, %struct.hclgevf_tqp* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %4, align 8
  %45 = getelementptr inbounds %struct.hclgevf_tqp, %struct.hclgevf_tqp* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  store i32* @ae_algovf, i32** %46, align 8
  %47 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %4, align 8
  %51 = getelementptr inbounds %struct.hclgevf_tqp, %struct.hclgevf_tqp* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %4, align 8
  %57 = getelementptr inbounds %struct.hclgevf_tqp, %struct.hclgevf_tqp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %60 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %4, align 8
  %63 = getelementptr inbounds %struct.hclgevf_tqp, %struct.hclgevf_tqp* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %66 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HCLGEVF_TQP_REG_OFFSET, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @HCLGEVF_TQP_REG_SIZE, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  %76 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %4, align 8
  %77 = getelementptr inbounds %struct.hclgevf_tqp, %struct.hclgevf_tqp* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.hclgevf_tqp*, %struct.hclgevf_tqp** %4, align 8
  %80 = getelementptr inbounds %struct.hclgevf_tqp, %struct.hclgevf_tqp* %79, i32 1
  store %struct.hclgevf_tqp* %80, %struct.hclgevf_tqp** %4, align 8
  br label %81

81:                                               ; preds = %34
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %28

84:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %21
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.hclgevf_tqp* @devm_kcalloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
