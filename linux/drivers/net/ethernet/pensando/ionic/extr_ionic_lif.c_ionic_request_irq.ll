; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ionic_qcq = type { i32, %struct.ionic_queue, %struct.ionic_intr_info }
%struct.ionic_queue = type { i8* }
%struct.ionic_intr_info = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-%s-%s\00", align 1
@IONIC_DRV_NAME = common dso_local global i8* null, align 8
@ionic_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_lif*, %struct.ionic_qcq*)* @ionic_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_request_irq(%struct.ionic_lif* %0, %struct.ionic_qcq* %1) #0 {
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca %struct.ionic_qcq*, align 8
  %5 = alloca %struct.ionic_intr_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ionic_queue*, align 8
  %8 = alloca i8*, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store %struct.ionic_qcq* %1, %struct.ionic_qcq** %4, align 8
  %9 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %10 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %9, i32 0, i32 2
  store %struct.ionic_intr_info* %10, %struct.ionic_intr_info** %5, align 8
  %11 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %12 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %17 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %16, i32 0, i32 1
  store %struct.ionic_queue* %17, %struct.ionic_queue** %7, align 8
  %18 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %19 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %24 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i8* @dev_name(%struct.device* %29)
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.ionic_intr_info*, %struct.ionic_intr_info** %5, align 8
  %33 = getelementptr inbounds %struct.ionic_intr_info, %struct.ionic_intr_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** @IONIC_DRV_NAME, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.ionic_queue*, %struct.ionic_queue** %7, align 8
  %38 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i8* %39)
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.ionic_intr_info*, %struct.ionic_intr_info** %5, align 8
  %43 = getelementptr inbounds %struct.ionic_intr_info, %struct.ionic_intr_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ionic_isr, align 4
  %46 = load %struct.ionic_intr_info*, %struct.ionic_intr_info** %5, align 8
  %47 = getelementptr inbounds %struct.ionic_intr_info, %struct.ionic_intr_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %50 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %49, i32 0, i32 0
  %51 = call i32 @devm_request_irq(%struct.device* %41, i32 %44, i32 %45, i32 0, i32 %48, i32* %50)
  ret i32 %51
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
