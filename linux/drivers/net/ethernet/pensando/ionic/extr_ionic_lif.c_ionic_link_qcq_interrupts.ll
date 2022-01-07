; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_link_qcq_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_link_qcq_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_qcq = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IONIC_QCQ_F_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_qcq*, %struct.ionic_qcq*)* @ionic_link_qcq_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_link_qcq_interrupts(%struct.ionic_qcq* %0, %struct.ionic_qcq* %1) #0 {
  %3 = alloca %struct.ionic_qcq*, align 8
  %4 = alloca %struct.ionic_qcq*, align 8
  store %struct.ionic_qcq* %0, %struct.ionic_qcq** %3, align 8
  store %struct.ionic_qcq* %1, %struct.ionic_qcq** %4, align 8
  %5 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %6 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IONIC_QCQ_F_INTR, align 4
  %9 = and i32 %7, %8
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %14 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %18 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ionic_intr_free(i32 %16, i32 %20)
  %22 = load i32, i32* @IONIC_QCQ_F_INTR, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %25 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %12, %2
  %29 = load %struct.ionic_qcq*, %struct.ionic_qcq** %3, align 8
  %30 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %34 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ionic_qcq*, %struct.ionic_qcq** %3, align 8
  %37 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ionic_qcq*, %struct.ionic_qcq** %4, align 8
  %41 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ionic_intr_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
