; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lifs_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lifs_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { %struct.TYPE_6__*, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@NETREG_REGISTERED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_lifs_unregister(%struct.ionic* %0) #0 {
  %2 = alloca %struct.ionic*, align 8
  store %struct.ionic* %0, %struct.ionic** %2, align 8
  %3 = load %struct.ionic*, %struct.ionic** %2, align 8
  %4 = getelementptr inbounds %struct.ionic, %struct.ionic* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.ionic*, %struct.ionic** %2, align 8
  %10 = getelementptr inbounds %struct.ionic, %struct.ionic* %9, i32 0, i32 1
  %11 = call i32 @unregister_netdevice_notifier(%struct.TYPE_7__* %10)
  %12 = load %struct.ionic*, %struct.ionic** %2, align 8
  %13 = getelementptr inbounds %struct.ionic, %struct.ionic* %12, i32 0, i32 2
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.ionic*, %struct.ionic** %2, align 8
  %16 = getelementptr inbounds %struct.ionic, %struct.ionic* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.ionic*, %struct.ionic** %2, align 8
  %20 = getelementptr inbounds %struct.ionic, %struct.ionic* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.ionic*, %struct.ionic** %2, align 8
  %26 = getelementptr inbounds %struct.ionic, %struct.ionic* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = call i32 @cancel_work_sync(i32* %28)
  %30 = load %struct.ionic*, %struct.ionic** %2, align 8
  %31 = getelementptr inbounds %struct.ionic, %struct.ionic* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NETREG_REGISTERED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %18
  %40 = load %struct.ionic*, %struct.ionic** %2, align 8
  %41 = getelementptr inbounds %struct.ionic, %struct.ionic* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call i32 @unregister_netdev(%struct.TYPE_8__* %44)
  br label %46

46:                                               ; preds = %39, %18
  ret void
}

declare dso_local i32 @unregister_netdevice_notifier(%struct.TYPE_7__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
