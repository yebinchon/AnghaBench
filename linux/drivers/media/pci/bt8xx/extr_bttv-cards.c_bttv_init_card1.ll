; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_init_card1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_init_card1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bttv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bttv_init_card1(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %3 = load %struct.bttv*, %struct.bttv** %2, align 8
  %4 = getelementptr inbounds %struct.bttv, %struct.bttv* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %28 [
    i32 135, label %7
    i32 134, label %7
    i32 129, label %10
    i32 128, label %10
    i32 136, label %13
    i32 133, label %16
    i32 130, label %19
    i32 137, label %19
    i32 131, label %19
    i32 138, label %22
    i32 132, label %25
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.bttv*, %struct.bttv** %2, align 8
  %9 = call i32 @boot_msp34xx(%struct.bttv* %8, i32 5)
  br label %28

10:                                               ; preds = %1, %1
  %11 = load %struct.bttv*, %struct.bttv** %2, align 8
  %12 = call i32 @boot_msp34xx(%struct.bttv* %11, i32 20)
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.bttv*, %struct.bttv** %2, align 8
  %15 = call i32 @boot_msp34xx(%struct.bttv* %14, i32 11)
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.bttv*, %struct.bttv** %2, align 8
  %18 = call i32 @pvr_boot(%struct.bttv* %17)
  br label %28

19:                                               ; preds = %1, %1, %1
  %20 = load %struct.bttv*, %struct.bttv** %2, align 8
  %21 = getelementptr inbounds %struct.bttv, %struct.bttv* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.bttv*, %struct.bttv** %2, align 8
  %24 = call i32 @init_RTV24(%struct.bttv* %23)
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.bttv*, %struct.bttv** %2, align 8
  %27 = call i32 @init_PCI8604PW(%struct.bttv* %26)
  br label %28

28:                                               ; preds = %1, %25, %22, %19, %16, %13, %10, %7
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %30 = load %struct.bttv*, %struct.bttv** %2, align 8
  %31 = getelementptr inbounds %struct.bttv, %struct.bttv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load %struct.bttv*, %struct.bttv** %2, align 8
  %41 = call i32 @bttv_reset_audio(%struct.bttv* %40)
  br label %42

42:                                               ; preds = %39, %28
  ret void
}

declare dso_local i32 @boot_msp34xx(%struct.bttv*, i32) #1

declare dso_local i32 @pvr_boot(%struct.bttv*) #1

declare dso_local i32 @init_RTV24(%struct.bttv*) #1

declare dso_local i32 @init_PCI8604PW(%struct.bttv*) #1

declare dso_local i32 @bttv_reset_audio(%struct.bttv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
