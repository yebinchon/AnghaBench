; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_mpeg_ops_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_mpeg_ops_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.saa7134_mpeg_ops = type { i64, i32 (%struct.saa7134_dev*)* }
%struct.saa7134_dev = type opaque
%struct.saa7134_dev.0 = type { i64, %struct.saa7134_mpeg_ops* }

@saa7134_boards = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_mpeg_ops*, %struct.saa7134_dev.0*)* @mpeg_ops_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg_ops_attach(%struct.saa7134_mpeg_ops* %0, %struct.saa7134_dev.0* %1) #0 {
  %3 = alloca %struct.saa7134_mpeg_ops*, align 8
  %4 = alloca %struct.saa7134_dev.0*, align 8
  %5 = alloca i32, align 4
  store %struct.saa7134_mpeg_ops* %0, %struct.saa7134_mpeg_ops** %3, align 8
  store %struct.saa7134_dev.0* %1, %struct.saa7134_dev.0** %4, align 8
  %6 = load %struct.saa7134_dev.0*, %struct.saa7134_dev.0** %4, align 8
  %7 = getelementptr inbounds %struct.saa7134_dev.0, %struct.saa7134_dev.0* %6, i32 0, i32 1
  %8 = load %struct.saa7134_mpeg_ops*, %struct.saa7134_mpeg_ops** %7, align 8
  %9 = icmp ne %struct.saa7134_mpeg_ops* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %38

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saa7134_boards, align 8
  %13 = load %struct.saa7134_dev.0*, %struct.saa7134_dev.0** %4, align 8
  %14 = getelementptr inbounds %struct.saa7134_dev.0, %struct.saa7134_dev.0* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.saa7134_mpeg_ops*, %struct.saa7134_mpeg_ops** %3, align 8
  %20 = getelementptr inbounds %struct.saa7134_mpeg_ops, %struct.saa7134_mpeg_ops* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %38

24:                                               ; preds = %11
  %25 = load %struct.saa7134_mpeg_ops*, %struct.saa7134_mpeg_ops** %3, align 8
  %26 = getelementptr inbounds %struct.saa7134_mpeg_ops, %struct.saa7134_mpeg_ops* %25, i32 0, i32 1
  %27 = load i32 (%struct.saa7134_dev*)*, i32 (%struct.saa7134_dev*)** %26, align 8
  %28 = load %struct.saa7134_dev.0*, %struct.saa7134_dev.0** %4, align 8
  %29 = bitcast %struct.saa7134_dev.0* %28 to %struct.saa7134_dev*
  %30 = call i32 %27(%struct.saa7134_dev* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 0, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.saa7134_mpeg_ops*, %struct.saa7134_mpeg_ops** %3, align 8
  %36 = load %struct.saa7134_dev.0*, %struct.saa7134_dev.0** %4, align 8
  %37 = getelementptr inbounds %struct.saa7134_dev.0, %struct.saa7134_dev.0* %36, i32 0, i32 1
  store %struct.saa7134_mpeg_ops* %35, %struct.saa7134_mpeg_ops** %37, align 8
  br label %38

38:                                               ; preds = %34, %33, %23, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
