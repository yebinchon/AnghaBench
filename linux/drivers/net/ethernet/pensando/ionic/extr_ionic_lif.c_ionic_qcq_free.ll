; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_qcq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_qcq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ionic_qcq = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32*, i32 }
%struct.TYPE_7__ = type { %struct.ionic_qcq* }
%struct.TYPE_6__ = type { %struct.ionic_qcq* }
%struct.TYPE_5__ = type { i32 }

@IONIC_QCQ_F_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*, %struct.ionic_qcq*)* @ionic_qcq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_qcq_free(%struct.ionic_lif* %0, %struct.ionic_qcq* %1) #0 {
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca %struct.ionic_qcq*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store %struct.ionic_qcq* %1, %struct.ionic_qcq** %4, align 8
  %6 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %7 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %12 = icmp ne %struct.ionic_qcq* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %17 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %20 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %23 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_free_coherent(%struct.device* %15, i32 %18, i32* %21, i32 %24)
  %26 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %27 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %29 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %28, i32 0, i32 4
  store i32 0, i32* %29, align 4
  %30 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %31 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IONIC_QCQ_F_INTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %14
  %37 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %38 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %39 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ionic_intr_free(%struct.ionic_lif* %37, i32 %41)
  br label %43

43:                                               ; preds = %36, %14
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %46 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.ionic_qcq*, %struct.ionic_qcq** %47, align 8
  %49 = call i32 @devm_kfree(%struct.device* %44, %struct.ionic_qcq* %48)
  %50 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %51 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store %struct.ionic_qcq* null, %struct.ionic_qcq** %52, align 8
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %55 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.ionic_qcq*, %struct.ionic_qcq** %56, align 8
  %58 = call i32 @devm_kfree(%struct.device* %53, %struct.ionic_qcq* %57)
  %59 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %60 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store %struct.ionic_qcq* null, %struct.ionic_qcq** %61, align 8
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %64 = call i32 @devm_kfree(%struct.device* %62, %struct.ionic_qcq* %63)
  br label %65

65:                                               ; preds = %43, %13
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @ionic_intr_free(%struct.ionic_lif*, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.ionic_qcq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
