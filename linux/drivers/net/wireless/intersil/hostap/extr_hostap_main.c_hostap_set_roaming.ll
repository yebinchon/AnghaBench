; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_hostap_set_roaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_hostap_set_roaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@HFA384X_ROAMING_HOST = common dso_local global i32 0, align 4
@HFA384X_ROAMING_DISABLED = common dso_local global i32 0, align 4
@HFA384X_ROAMING_FIRMWARE = common dso_local global i32 0, align 4
@HFA384X_RID_CNFROAMINGMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_set_roaming(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %12 [
    i32 1, label %7
    i32 2, label %9
    i32 0, label %11
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @HFA384X_ROAMING_HOST, align 4
  store i32 %8, i32* %3, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @HFA384X_ROAMING_DISABLED, align 4
  store i32 %10, i32* %3, align 4
  br label %14

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = load i32, i32* @HFA384X_ROAMING_FIRMWARE, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %9, %7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HFA384X_RID_CNFROAMINGMODE, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @hostap_set_word(i32 %17, i32 %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @hostap_set_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
