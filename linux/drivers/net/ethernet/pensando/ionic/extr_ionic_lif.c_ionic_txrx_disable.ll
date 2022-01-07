; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_txrx_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_txrx_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*)* @ionic_txrx_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_txrx_disable(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %7 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %12 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ionic_qcq_disable(i32 %18)
  %20 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %21 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ionic_qcq_disable(i32 %27)
  br label %29

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ionic_qcq_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
