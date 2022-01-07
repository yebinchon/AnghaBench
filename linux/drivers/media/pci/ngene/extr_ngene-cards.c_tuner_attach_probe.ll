; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*)* @tuner_attach_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_probe(%struct.ngene_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene_channel*, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %3, align 8
  %4 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %5 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %22 [
    i32 129, label %7
    i32 135, label %10
    i32 130, label %13
    i32 132, label %13
    i32 131, label %13
    i32 134, label %13
    i32 133, label %13
    i32 128, label %19
  ]

7:                                                ; preds = %1
  %8 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %9 = call i32 @tuner_attach_stv6110(%struct.ngene_channel* %8)
  store i32 %9, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %12 = call i32 @tuner_attach_tda18271(%struct.ngene_channel* %11)
  store i32 %12, i32* %2, align 4
  br label %25

13:                                               ; preds = %1, %1, %1, %1, %1
  %14 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %15 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %16 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tuner_attach_tda18212(%struct.ngene_channel* %14, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %21 = call i32 @tuner_attach_stv6111(%struct.ngene_channel* %20)
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %19, %13, %10, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @tuner_attach_stv6110(%struct.ngene_channel*) #1

declare dso_local i32 @tuner_attach_tda18271(%struct.ngene_channel*) #1

declare dso_local i32 @tuner_attach_tda18212(%struct.ngene_channel*, i32) #1

declare dso_local i32 @tuner_attach_stv6111(%struct.ngene_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
