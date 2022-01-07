; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_mpeg_ops_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_mpeg_ops_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_mpeg_ops = type { i32 (%struct.saa7134_dev*)* }
%struct.saa7134_dev = type opaque
%struct.saa7134_dev.0 = type { %struct.saa7134_mpeg_ops* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_mpeg_ops*, %struct.saa7134_dev.0*)* @mpeg_ops_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg_ops_detach(%struct.saa7134_mpeg_ops* %0, %struct.saa7134_dev.0* %1) #0 {
  %3 = alloca %struct.saa7134_mpeg_ops*, align 8
  %4 = alloca %struct.saa7134_dev.0*, align 8
  store %struct.saa7134_mpeg_ops* %0, %struct.saa7134_mpeg_ops** %3, align 8
  store %struct.saa7134_dev.0* %1, %struct.saa7134_dev.0** %4, align 8
  %5 = load %struct.saa7134_dev.0*, %struct.saa7134_dev.0** %4, align 8
  %6 = getelementptr inbounds %struct.saa7134_dev.0, %struct.saa7134_dev.0* %5, i32 0, i32 0
  %7 = load %struct.saa7134_mpeg_ops*, %struct.saa7134_mpeg_ops** %6, align 8
  %8 = icmp eq %struct.saa7134_mpeg_ops* null, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.saa7134_dev.0*, %struct.saa7134_dev.0** %4, align 8
  %12 = getelementptr inbounds %struct.saa7134_dev.0, %struct.saa7134_dev.0* %11, i32 0, i32 0
  %13 = load %struct.saa7134_mpeg_ops*, %struct.saa7134_mpeg_ops** %12, align 8
  %14 = load %struct.saa7134_mpeg_ops*, %struct.saa7134_mpeg_ops** %3, align 8
  %15 = icmp ne %struct.saa7134_mpeg_ops* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %28

17:                                               ; preds = %10
  %18 = load %struct.saa7134_dev.0*, %struct.saa7134_dev.0** %4, align 8
  %19 = getelementptr inbounds %struct.saa7134_dev.0, %struct.saa7134_dev.0* %18, i32 0, i32 0
  %20 = load %struct.saa7134_mpeg_ops*, %struct.saa7134_mpeg_ops** %19, align 8
  %21 = getelementptr inbounds %struct.saa7134_mpeg_ops, %struct.saa7134_mpeg_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.saa7134_dev*)*, i32 (%struct.saa7134_dev*)** %21, align 8
  %23 = load %struct.saa7134_dev.0*, %struct.saa7134_dev.0** %4, align 8
  %24 = bitcast %struct.saa7134_dev.0* %23 to %struct.saa7134_dev*
  %25 = call i32 %22(%struct.saa7134_dev* %24)
  %26 = load %struct.saa7134_dev.0*, %struct.saa7134_dev.0** %4, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev.0, %struct.saa7134_dev.0* %26, i32 0, i32 0
  store %struct.saa7134_mpeg_ops* null, %struct.saa7134_mpeg_ops** %27, align 8
  br label %28

28:                                               ; preds = %17, %16, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
