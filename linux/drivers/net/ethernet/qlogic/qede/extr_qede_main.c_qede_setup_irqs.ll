; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_8__, i32*, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.qed_common_ops* }
%struct.qed_common_ops = type { i32 (i32, %struct.TYPE_8__*)*, i32 (i32, i32*, i32, i32)* }
%struct.TYPE_5__ = type { i32 }

@qede_simd_fp_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*)* @qede_setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_setup_irqs(%struct.qede_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_common_ops*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %8 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %7, i32 0, i32 3
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.qed_common_ops*, %struct.qed_common_ops** %10, align 8
  %12 = getelementptr inbounds %struct.qed_common_ops, %struct.qed_common_ops* %11, i32 0, i32 0
  %13 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %12, align 8
  %14 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %15 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %18 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %17, i32 0, i32 0
  %19 = call i32 %13(i32 %16, %struct.TYPE_8__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %86

24:                                               ; preds = %1
  %25 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %26 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %32 = call i32 @qede_req_msix_irqs(%struct.qede_dev* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %86

37:                                               ; preds = %30
  %38 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %39 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %46 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %45, i32 0, i32 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  br label %85

49:                                               ; preds = %24
  %50 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %51 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %50, i32 0, i32 3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.qed_common_ops*, %struct.qed_common_ops** %53, align 8
  store %struct.qed_common_ops* %54, %struct.qed_common_ops** %6, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %76, %49
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %58 = call i32 @QEDE_QUEUE_CNT(%struct.qede_dev* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load %struct.qed_common_ops*, %struct.qed_common_ops** %6, align 8
  %62 = getelementptr inbounds %struct.qed_common_ops, %struct.qed_common_ops* %61, i32 0, i32 1
  %63 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %62, align 8
  %64 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %65 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %68 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @qede_simd_fp_handler, align 4
  %75 = call i32 %63(i32 %66, i32* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %81 = call i32 @QEDE_QUEUE_CNT(%struct.qede_dev* %80)
  %82 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %83 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  br label %85

85:                                               ; preds = %79, %37
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %35, %22
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @qede_req_msix_irqs(%struct.qede_dev*) #1

declare dso_local i32 @QEDE_QUEUE_CNT(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
