; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_verify_copy_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_verify_copy_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mic_copy_desc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_vdev*, %struct.mic_copy_desc*)* @vop_verify_copy_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_verify_copy_args(%struct.vop_vdev* %0, %struct.mic_copy_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vop_vdev*, align 8
  %5 = alloca %struct.mic_copy_desc*, align 8
  store %struct.vop_vdev* %0, %struct.vop_vdev** %4, align 8
  store %struct.mic_copy_desc* %1, %struct.mic_copy_desc** %5, align 8
  %6 = load %struct.vop_vdev*, %struct.vop_vdev** %4, align 8
  %7 = icmp ne %struct.vop_vdev* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.mic_copy_desc*, %struct.mic_copy_desc** %5, align 8
  %10 = getelementptr inbounds %struct.mic_copy_desc, %struct.mic_copy_desc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vop_vdev*, %struct.vop_vdev** %4, align 8
  %13 = getelementptr inbounds %struct.vop_vdev, %struct.vop_vdev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %11, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %8, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
