; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_do_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_do_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fza_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@FZA_CONTROL_B_IDLE = common dso_local global i32 0, align 4
@FZA_RESET_INIT = common dso_local global i32 0, align 4
@FZA_RESET_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fza_private*)* @fza_do_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fza_do_shutdown(%struct.fza_private* %0) #0 {
  %2 = alloca %struct.fza_private*, align 8
  store %struct.fza_private* %0, %struct.fza_private** %2, align 8
  %3 = load i32, i32* @FZA_CONTROL_B_IDLE, align 4
  %4 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %5 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i32 @writew_o(i32 %3, i32* %7)
  %9 = load i32, i32* @FZA_RESET_INIT, align 4
  %10 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %11 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @writew_o(i32 %9, i32* %13)
  %15 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %16 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @readw_o(i32* %18)
  %20 = load i32, i32* @FZA_RESET_CLR, align 4
  %21 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %22 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @writew_o(i32 %20, i32* %24)
  %26 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %27 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @readw_o(i32* %29)
  ret void
}

declare dso_local i32 @writew_o(i32, i32*) #1

declare dso_local i32 @readw_o(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
