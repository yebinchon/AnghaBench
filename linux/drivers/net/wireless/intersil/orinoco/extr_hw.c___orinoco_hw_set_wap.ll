; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hw.c___orinoco_hw_set_wap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hw.c___orinoco_hw_set_wap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32, i32, i32, %struct.hermes }
%struct.hermes = type { i32 }

@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_CNFROAMINGMODE = common dso_local global i32 0, align 4
@HERMES_RID_CNFMANDATORYBSSID_SYMBOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__orinoco_hw_set_wap(%struct.orinoco_private* %0) #0 {
  %2 = alloca %struct.orinoco_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hermes*, align 8
  store %struct.orinoco_private* %0, %struct.orinoco_private** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %7 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %6, i32 0, i32 3
  store %struct.hermes* %7, %struct.hermes** %5, align 8
  %8 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %9 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %32 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %25
  ]

11:                                               ; preds = %1
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %14 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 2, i32* %3, align 4
  br label %19

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.hermes*, %struct.hermes** %5, align 8
  %21 = load i32, i32* @USER_BAP, align 4
  %22 = load i32, i32* @HERMES_RID_CNFROAMINGMODE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @hermes_write_wordrec(%struct.hermes* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.hermes*, %struct.hermes** %5, align 8
  %27 = load i32, i32* @USER_BAP, align 4
  %28 = load i32, i32* @HERMES_RID_CNFMANDATORYBSSID_SYMBOL, align 4
  %29 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %30 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %29, i32 0, i32 1
  %31 = call i32 @HERMES_WRITE_RECORD(%struct.hermes* %26, i32 %27, i32 %28, i32* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %1, %25, %19, %11
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @hermes_write_wordrec(%struct.hermes*, i32, i32, i32) #1

declare dso_local i32 @HERMES_WRITE_RECORD(%struct.hermes*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
