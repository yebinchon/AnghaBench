; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_first.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_reglist = type { i32 }
%struct.et8ek8_meta_reglist = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.et8ek8_reglist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.et8ek8_reglist** (%struct.et8ek8_meta_reglist*)* @et8ek8_reglist_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.et8ek8_reglist** @et8ek8_reglist_first(%struct.et8ek8_meta_reglist* %0) #0 {
  %2 = alloca %struct.et8ek8_meta_reglist*, align 8
  store %struct.et8ek8_meta_reglist* %0, %struct.et8ek8_meta_reglist** %2, align 8
  %3 = load %struct.et8ek8_meta_reglist*, %struct.et8ek8_meta_reglist** %2, align 8
  %4 = getelementptr inbounds %struct.et8ek8_meta_reglist, %struct.et8ek8_meta_reglist* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  ret %struct.et8ek8_reglist** %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
