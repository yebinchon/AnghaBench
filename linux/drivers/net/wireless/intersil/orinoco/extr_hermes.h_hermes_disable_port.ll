; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.h_hermes_disable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.h_hermes_disable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, i32*)* }

@HERMES_CMD_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32)* @hermes_disable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hermes_disable_port(%struct.hermes* %0, i32 %1) #0 {
  %3 = alloca %struct.hermes*, align 8
  %4 = alloca i32, align 4
  store %struct.hermes* %0, %struct.hermes** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hermes*, %struct.hermes** %3, align 8
  %6 = getelementptr inbounds %struct.hermes, %struct.hermes* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.hermes*, i32, i32, i32*)*, i32 (%struct.hermes*, i32, i32, i32*)** %8, align 8
  %10 = load %struct.hermes*, %struct.hermes** %3, align 8
  %11 = load i32, i32* @HERMES_CMD_DISABLE, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 8
  %14 = or i32 %11, %13
  %15 = call i32 %9(%struct.hermes* %10, i32 %14, i32 0, i32* null)
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
