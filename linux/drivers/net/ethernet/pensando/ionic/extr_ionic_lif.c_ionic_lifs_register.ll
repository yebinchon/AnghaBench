; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lifs_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lifs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }

@ionic_lif_notify_work = common dso_local global i32 0, align 4
@ionic_lif_notify = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Cannot register net device, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_lifs_register(%struct.ionic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic*, align 8
  %4 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %3, align 8
  %5 = load %struct.ionic*, %struct.ionic** %3, align 8
  %6 = getelementptr inbounds %struct.ionic, %struct.ionic* %5, i32 0, i32 3
  %7 = load i32, i32* @ionic_lif_notify_work, align 4
  %8 = call i32 @INIT_WORK(i32* %6, i32 %7)
  %9 = load i32*, i32** @ionic_lif_notify, align 8
  %10 = load %struct.ionic*, %struct.ionic** %3, align 8
  %11 = getelementptr inbounds %struct.ionic, %struct.ionic* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* %9, i32** %12, align 8
  %13 = load %struct.ionic*, %struct.ionic** %3, align 8
  %14 = getelementptr inbounds %struct.ionic, %struct.ionic* %13, i32 0, i32 2
  %15 = call i32 @register_netdevice_notifier(%struct.TYPE_3__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ionic*, %struct.ionic** %3, align 8
  %20 = getelementptr inbounds %struct.ionic, %struct.ionic* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.ionic*, %struct.ionic** %3, align 8
  %24 = getelementptr inbounds %struct.ionic, %struct.ionic* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @register_netdev(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.ionic*, %struct.ionic** %3, align 8
  %33 = getelementptr inbounds %struct.ionic, %struct.ionic* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %22
  %38 = load %struct.ionic*, %struct.ionic** %3, align 8
  %39 = getelementptr inbounds %struct.ionic, %struct.ionic* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @ionic_link_status_check_request(%struct.TYPE_4__* %40)
  %42 = load %struct.ionic*, %struct.ionic** %3, align 8
  %43 = getelementptr inbounds %struct.ionic, %struct.ionic* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %37, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @register_netdevice_notifier(%struct.TYPE_3__*) #1

declare dso_local i32 @register_netdev(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ionic_link_status_check_request(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
