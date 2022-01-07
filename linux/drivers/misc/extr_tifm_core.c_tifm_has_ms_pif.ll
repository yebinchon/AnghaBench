; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_tifm_core.c_tifm_has_ms_pif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_tifm_core.c_tifm_has_ms_pif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tifm_adapter = type { i32 (%struct.tifm_adapter*, %struct.tifm_dev*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tifm_has_ms_pif(%struct.tifm_dev* %0) #0 {
  %2 = alloca %struct.tifm_dev*, align 8
  %3 = alloca %struct.tifm_adapter*, align 8
  store %struct.tifm_dev* %0, %struct.tifm_dev** %2, align 8
  %4 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %5 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.tifm_adapter* @dev_get_drvdata(i32 %7)
  store %struct.tifm_adapter* %8, %struct.tifm_adapter** %3, align 8
  %9 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.tifm_adapter, %struct.tifm_adapter* %9, i32 0, i32 0
  %11 = load i32 (%struct.tifm_adapter*, %struct.tifm_dev*)*, i32 (%struct.tifm_adapter*, %struct.tifm_dev*)** %10, align 8
  %12 = load %struct.tifm_adapter*, %struct.tifm_adapter** %3, align 8
  %13 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %14 = call i32 %11(%struct.tifm_adapter* %12, %struct.tifm_dev* %13)
  ret i32 %14
}

declare dso_local %struct.tifm_adapter* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
