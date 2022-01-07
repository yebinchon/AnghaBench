; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_port_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_port_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32, %struct.ionic_dev, %struct.ionic_identity }
%struct.ionic_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ionic_identity = type { i32 }

@DEVCMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_port_identify(%struct.ionic* %0) #0 {
  %2 = alloca %struct.ionic*, align 8
  %3 = alloca %struct.ionic_identity*, align 8
  %4 = alloca %struct.ionic_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %2, align 8
  %7 = load %struct.ionic*, %struct.ionic** %2, align 8
  %8 = getelementptr inbounds %struct.ionic, %struct.ionic* %7, i32 0, i32 2
  store %struct.ionic_identity* %8, %struct.ionic_identity** %3, align 8
  %9 = load %struct.ionic*, %struct.ionic** %2, align 8
  %10 = getelementptr inbounds %struct.ionic, %struct.ionic* %9, i32 0, i32 1
  store %struct.ionic_dev* %10, %struct.ionic_dev** %4, align 8
  %11 = load %struct.ionic*, %struct.ionic** %2, align 8
  %12 = getelementptr inbounds %struct.ionic, %struct.ionic* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %15 = call i32 @ionic_dev_cmd_port_identify(%struct.ionic_dev* %14)
  %16 = load %struct.ionic*, %struct.ionic** %2, align 8
  %17 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %18 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = call i64 @min(i32 4, i32 4)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.ionic_identity*, %struct.ionic_identity** %3, align 8
  %24 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %23, i32 0, i32 0
  %25 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %26 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @memcpy_fromio(i32* %24, i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %21, %1
  %32 = load %struct.ionic*, %struct.ionic** %2, align 8
  %33 = getelementptr inbounds %struct.ionic, %struct.ionic* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ionic_dev_cmd_port_identify(%struct.ionic_dev*) #1

declare dso_local i32 @ionic_dev_cmd_wait(%struct.ionic*, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @memcpy_fromio(i32*, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
