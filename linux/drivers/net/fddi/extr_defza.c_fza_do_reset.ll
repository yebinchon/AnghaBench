; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fza_private = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FZA_RESET_INIT = common dso_local global i32 0, align 4
@FZA_RESET_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fza_private*)* @fza_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fza_do_reset(%struct.fza_private* %0) #0 {
  %2 = alloca %struct.fza_private*, align 8
  store %struct.fza_private* %0, %struct.fza_private** %2, align 8
  %3 = load i32, i32* @FZA_RESET_INIT, align 4
  %4 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %5 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i32 @writew_o(i32 %3, i32* %7)
  %9 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %10 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @readw_o(i32* %12)
  %14 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %15 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @readw_o(i32* %17)
  %19 = load i32, i32* @FZA_RESET_CLR, align 4
  %20 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %21 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @writew_o(i32 %19, i32* %23)
  %25 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %26 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %29 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @writew_o(i32 %27, i32* %31)
  %33 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %34 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @readw_o(i32* %36)
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
