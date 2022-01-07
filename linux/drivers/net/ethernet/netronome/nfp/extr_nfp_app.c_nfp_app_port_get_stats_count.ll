; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_port_get_stats_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_port_get_stats_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.nfp_port*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_app_port_get_stats_count(%struct.nfp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_port*, align 8
  store %struct.nfp_port* %0, %struct.nfp_port** %3, align 8
  %4 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %5 = icmp ne %struct.nfp_port* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_4__*, %struct.nfp_port*)*, i32 (%struct.TYPE_4__*, %struct.nfp_port*)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_4__*, %struct.nfp_port*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %11, %6, %1
  store i32 0, i32* %2, align 4
  br label %34

21:                                               ; preds = %11
  %22 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %23 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_4__*, %struct.nfp_port*)*, i32 (%struct.TYPE_4__*, %struct.nfp_port*)** %27, align 8
  %29 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %30 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.nfp_port*, %struct.nfp_port** %3, align 8
  %33 = call i32 %28(%struct.TYPE_4__* %31, %struct.nfp_port* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %20
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
