; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32 }
%struct.ngene_command = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CMD_MEM_WRITE = common dso_local global i32 0, align 4
@NGENE_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*)* @ngene_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngene_unlink(%struct.ngene* %0) #0 {
  %2 = alloca %struct.ngene*, align 8
  %3 = alloca %struct.ngene_command, align 4
  store %struct.ngene* %0, %struct.ngene** %2, align 8
  %4 = load i32, i32* @CMD_MEM_WRITE, align 4
  %5 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %3, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %4, i32* %7, align 4
  %8 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 3, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 37132, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 255, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %3, i32 0, i32 0
  store i32 3, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %3, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.ngene*, %struct.ngene** %2, align 8
  %20 = getelementptr inbounds %struct.ngene, %struct.ngene* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* @NGENE_INT_ENABLE, align 4
  %23 = call i32 @ngwritel(i32 0, i32 %22)
  %24 = load %struct.ngene*, %struct.ngene** %2, align 8
  %25 = call i32 @ngene_command_mutex(%struct.ngene* %24, %struct.ngene_command* %3)
  %26 = load %struct.ngene*, %struct.ngene** %2, align 8
  %27 = getelementptr inbounds %struct.ngene, %struct.ngene* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ngwritel(i32, i32) #1

declare dso_local i32 @ngene_command_mutex(%struct.ngene*, %struct.ngene_command*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
