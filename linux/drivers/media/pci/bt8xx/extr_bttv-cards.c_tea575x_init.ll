; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_tea575x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_tea575x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32*, %struct.bttv* }
%struct.TYPE_3__ = type { i32 }

@bttv_tea_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%d: detected TEA575x radio\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*)* @tea575x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tea575x_init(%struct.bttv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bttv*, align 8
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  %4 = load %struct.bttv*, %struct.bttv** %3, align 8
  %5 = load %struct.bttv*, %struct.bttv** %3, align 8
  %6 = getelementptr inbounds %struct.bttv, %struct.bttv* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store %struct.bttv* %4, %struct.bttv** %7, align 8
  %8 = load %struct.bttv*, %struct.bttv** %3, align 8
  %9 = getelementptr inbounds %struct.bttv, %struct.bttv* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32* @bttv_tea_ops, i32** %10, align 8
  %11 = load %struct.bttv*, %struct.bttv** %3, align 8
  %12 = getelementptr inbounds %struct.bttv, %struct.bttv* %11, i32 0, i32 2
  %13 = call i32 @snd_tea575x_hw_init(%struct.TYPE_4__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.bttv*, %struct.bttv** %3, align 8
  %17 = getelementptr inbounds %struct.bttv, %struct.bttv* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.bttv*, %struct.bttv** %3, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  store i32 0, i32* %2, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.bttv*, %struct.bttv** %3, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.bttv*, %struct.bttv** %3, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @snd_tea575x_hw_init(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
