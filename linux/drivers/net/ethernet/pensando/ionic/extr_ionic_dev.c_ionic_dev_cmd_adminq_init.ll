; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_dev_cmd_adminq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_dev_cmd_adminq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_dev = type { i32 }
%struct.ionic_qcq = type { %struct.ionic_cq, %struct.ionic_queue }
%struct.ionic_cq = type { i32 }
%struct.ionic_queue = type { i32, i32, i32, i32, i32 }
%union.ionic_dev_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IONIC_QINIT_F_IRQ = common dso_local global i32 0, align 4
@IONIC_QINIT_F_ENA = common dso_local global i32 0, align 4
@IONIC_CMD_Q_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_dev_cmd_adminq_init(%struct.ionic_dev* %0, %struct.ionic_qcq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ionic_dev*, align 8
  %6 = alloca %struct.ionic_qcq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ionic_queue*, align 8
  %10 = alloca %struct.ionic_cq*, align 8
  %11 = alloca %union.ionic_dev_cmd, align 4
  store %struct.ionic_dev* %0, %struct.ionic_dev** %5, align 8
  store %struct.ionic_qcq* %1, %struct.ionic_qcq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ionic_qcq*, %struct.ionic_qcq** %6, align 8
  %13 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %12, i32 0, i32 1
  store %struct.ionic_queue* %13, %struct.ionic_queue** %9, align 8
  %14 = load %struct.ionic_qcq*, %struct.ionic_qcq** %6, align 8
  %15 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %14, i32 0, i32 0
  store %struct.ionic_cq* %15, %struct.ionic_cq** %10, align 8
  %16 = bitcast %union.ionic_dev_cmd* %11 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ionic_cq*, %struct.ionic_cq** %10, align 8
  %19 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_le64(i32 %20)
  store i32 %21, i32* %17, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %23 = load %struct.ionic_queue*, %struct.ionic_queue** %9, align 8
  %24 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_to_le64(i32 %25)
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %28 = load %struct.ionic_queue*, %struct.ionic_queue** %9, align 8
  %29 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ilog2(i32 %30)
  store i32 %31, i32* %27, align 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @cpu_to_le16(i32 %33)
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %36 = load %struct.ionic_queue*, %struct.ionic_queue** %9, align 8
  %37 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cpu_to_le16(i32 %38)
  store i32 %39, i32* %35, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %41 = load i32, i32* @IONIC_QINIT_F_IRQ, align 4
  %42 = load i32, i32* @IONIC_QINIT_F_ENA, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @cpu_to_le16(i32 %43)
  store i32 %44, i32* %40, align 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %46 = load %struct.ionic_queue*, %struct.ionic_queue** %9, align 8
  %47 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cpu_to_le32(i32 %48)
  store i32 %49, i32* %45, align 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 7
  %51 = load %struct.ionic_queue*, %struct.ionic_queue** %9, align 8
  %52 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %50, align 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @cpu_to_le16(i32 %55)
  store i32 %56, i32* %54, align 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 9
  %58 = load i32, i32* @IONIC_CMD_Q_INIT, align 4
  store i32 %58, i32* %57, align 4
  %59 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %60 = call i32 @ionic_dev_cmd_go(%struct.ionic_dev* %59, %union.ionic_dev_cmd* %11)
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ionic_dev_cmd_go(%struct.ionic_dev*, %union.ionic_dev_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
