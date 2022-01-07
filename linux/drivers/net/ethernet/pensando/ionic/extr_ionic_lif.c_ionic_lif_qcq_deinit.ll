; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_qcq_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_qcq_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device*, %struct.ionic_dev }
%struct.device = type { i32 }
%struct.ionic_dev = type { i32 }
%struct.ionic_qcq = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IONIC_QCQ_F_INITED = common dso_local global i32 0, align 4
@IONIC_QCQ_F_INTR = common dso_local global i32 0, align 4
@IONIC_INTR_MASK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*, %struct.ionic_qcq*)* @ionic_lif_qcq_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_lif_qcq_deinit(%struct.ionic_lif* %0, %struct.ionic_qcq* %1) #0 {
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca %struct.ionic_qcq*, align 8
  %5 = alloca %struct.ionic_dev*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store %struct.ionic_qcq* %1, %struct.ionic_qcq** %4, align 8
  %7 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %8 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store %struct.ionic_dev* %10, %struct.ionic_dev** %5, align 8
  %11 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %12 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %17 = icmp ne %struct.ionic_qcq* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %21 = call i32 @ionic_debugfs_del_qcq(%struct.ionic_qcq* %20)
  %22 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %23 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IONIC_QCQ_F_INITED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %64

29:                                               ; preds = %19
  %30 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %31 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IONIC_QCQ_F_INTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %38 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %41 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IONIC_INTR_MASK_SET, align 4
  %45 = call i32 @ionic_intr_mask(i32 %39, i32 %43, i32 %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %48 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %52 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %51, i32 0, i32 1
  %53 = call i32 @devm_free_irq(%struct.device* %46, i32 %50, i32* %52)
  %54 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %55 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %54, i32 0, i32 1
  %56 = call i32 @netif_napi_del(i32* %55)
  br label %57

57:                                               ; preds = %36, %29
  %58 = load i32, i32* @IONIC_QCQ_F_INITED, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %61 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %57, %28, %18
  ret void
}

declare dso_local i32 @ionic_debugfs_del_qcq(%struct.ionic_qcq*) #1

declare dso_local i32 @ionic_intr_mask(i32, i32, i32) #1

declare dso_local i32 @devm_free_irq(%struct.device*, i32, i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
