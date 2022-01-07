; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_sm_ma_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_sm_ma_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm_ma_control(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %19 [
    i32 130, label %6
    i32 129, label %9
    i32 132, label %12
    i32 131, label %15
    i32 128, label %18
  ]

6:                                                ; preds = %2
  %7 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %8 = call i32 @formac_offline(%struct.s_smc* %7)
  br label %19

9:                                                ; preds = %2
  %10 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %11 = call i32 @init_mac(%struct.s_smc* %10, i32 0)
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %14 = call i32 @formac_online(%struct.s_smc* %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %17 = call i32 @directed_beacon(%struct.s_smc* %16)
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %2, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @formac_offline(%struct.s_smc*) #1

declare dso_local i32 @init_mac(%struct.s_smc*, i32) #1

declare dso_local i32 @formac_online(%struct.s_smc*) #1

declare dso_local i32 @directed_beacon(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
