; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_main.c__vop_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_main.c__vop_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct._vop_vdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct._vop_vdev*)* @_vop_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @_vop_dev(%struct._vop_vdev* %0) #0 {
  %2 = alloca %struct._vop_vdev*, align 8
  store %struct._vop_vdev* %0, %struct._vop_vdev** %2, align 8
  %3 = load %struct._vop_vdev*, %struct._vop_vdev** %2, align 8
  %4 = getelementptr inbounds %struct._vop_vdev, %struct._vop_vdev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.device*, %struct.device** %6, align 8
  ret %struct.device* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
