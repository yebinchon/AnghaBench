; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_ports.c_scif_put_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_ports.c_scif_put_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.scif_port = type { i32 }

@scif_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@scif_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_put_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scif_port*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 0))
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.scif_port* @idr_find(i32* @scif_ports, i32 %9)
  store %struct.scif_port* %10, %struct.scif_port** %3, align 8
  %11 = load %struct.scif_port*, %struct.scif_port** %3, align 8
  %12 = icmp ne %struct.scif_port* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load %struct.scif_port*, %struct.scif_port** %3, align 8
  %15 = getelementptr inbounds %struct.scif_port, %struct.scif_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.scif_port*, %struct.scif_port** %3, align 8
  %19 = getelementptr inbounds %struct.scif_port, %struct.scif_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @idr_remove(i32* @scif_ports, i32 %23)
  %25 = load %struct.scif_port*, %struct.scif_port** %3, align 8
  %26 = call i32 @kfree(%struct.scif_port* %25)
  br label %27

27:                                               ; preds = %22, %13
  br label %28

28:                                               ; preds = %27, %7
  %29 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 0))
  br label %30

30:                                               ; preds = %28, %6
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.scif_port* @idr_find(i32*, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.scif_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
