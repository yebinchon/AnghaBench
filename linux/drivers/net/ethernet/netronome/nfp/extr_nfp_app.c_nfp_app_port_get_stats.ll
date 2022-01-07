; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_port_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_port_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* (%struct.TYPE_4__*, %struct.nfp_port*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nfp_app_port_get_stats(%struct.nfp_port* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nfp_port*, align 8
  %5 = alloca i32*, align 8
  store %struct.nfp_port* %0, %struct.nfp_port** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.nfp_port*, %struct.nfp_port** %4, align 8
  %7 = icmp ne %struct.nfp_port* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.nfp_port*, %struct.nfp_port** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.nfp_port*, %struct.nfp_port** %4, align 8
  %15 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32* (%struct.TYPE_4__*, %struct.nfp_port*, i32*)*, i32* (%struct.TYPE_4__*, %struct.nfp_port*, i32*)** %19, align 8
  %21 = icmp ne i32* (%struct.TYPE_4__*, %struct.nfp_port*, i32*)* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %13, %8, %2
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %3, align 8
  br label %38

24:                                               ; preds = %13
  %25 = load %struct.nfp_port*, %struct.nfp_port** %4, align 8
  %26 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32* (%struct.TYPE_4__*, %struct.nfp_port*, i32*)*, i32* (%struct.TYPE_4__*, %struct.nfp_port*, i32*)** %30, align 8
  %32 = load %struct.nfp_port*, %struct.nfp_port** %4, align 8
  %33 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.nfp_port*, %struct.nfp_port** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* %31(%struct.TYPE_4__* %34, %struct.nfp_port* %35, i32* %36)
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %24, %22
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
