; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lifs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_lifs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32, i32 }
%struct.ionic_lif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_lifs_alloc(%struct.ionic* %0) #0 {
  %2 = alloca %struct.ionic*, align 8
  %3 = alloca %struct.ionic_lif*, align 8
  store %struct.ionic* %0, %struct.ionic** %2, align 8
  %4 = load %struct.ionic*, %struct.ionic** %2, align 8
  %5 = getelementptr inbounds %struct.ionic, %struct.ionic* %4, i32 0, i32 1
  %6 = call i32 @INIT_LIST_HEAD(i32* %5)
  %7 = load %struct.ionic*, %struct.ionic** %2, align 8
  %8 = getelementptr inbounds %struct.ionic, %struct.ionic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @set_bit(i32 0, i32 %9)
  %11 = load %struct.ionic*, %struct.ionic** %2, align 8
  %12 = call %struct.ionic_lif* @ionic_lif_alloc(%struct.ionic* %11, i32 0)
  store %struct.ionic_lif* %12, %struct.ionic_lif** %3, align 8
  %13 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %14 = call i32 @PTR_ERR_OR_ZERO(%struct.ionic_lif* %13)
  ret i32 %14
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local %struct.ionic_lif* @ionic_lif_alloc(%struct.ionic*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.ionic_lif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
