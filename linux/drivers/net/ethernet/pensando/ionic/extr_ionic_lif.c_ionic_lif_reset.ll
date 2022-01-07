; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lif_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.ionic_dev }
%struct.ionic_dev = type { i32 }

@DEVCMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*)* @ionic_lif_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_lif_reset(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca %struct.ionic_dev*, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  %4 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %5 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store %struct.ionic_dev* %7, %struct.ionic_dev** %3, align 8
  %8 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %9 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ionic_dev*, %struct.ionic_dev** %3, align 8
  %14 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %15 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ionic_dev_cmd_lif_reset(%struct.ionic_dev* %13, i32 %16)
  %18 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %19 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %22 = call i32 @ionic_dev_cmd_wait(%struct.TYPE_2__* %20, i32 %21)
  %23 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %24 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ionic_dev_cmd_lif_reset(%struct.ionic_dev*, i32) #1

declare dso_local i32 @ionic_dev_cmd_wait(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
