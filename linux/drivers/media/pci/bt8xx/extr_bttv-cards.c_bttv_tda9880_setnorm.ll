; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_tda9880_setnorm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_bttv_tda9880_setnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.bttv = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@TVAUDIO_INPUT_TUNER = common dso_local global i64 0, align 8
@bttv_tvnorms = common dso_local global %struct.TYPE_5__* null, align 8
@V4L2_STD_MN = common dso_local global i32 0, align 4
@bttv_tvcards = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_tda9880_setnorm(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bttv*, %struct.bttv** %3, align 8
  %6 = getelementptr inbounds %struct.bttv, %struct.bttv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TVAUDIO_INPUT_TUNER, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bttv_tvnorms, align 8
  %12 = load %struct.bttv*, %struct.bttv** %3, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_STD_MN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 65536
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %10
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, -65537
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bttv_tvcards, align 8
  %30 = load %struct.bttv*, %struct.bttv** %3, align 8
  %31 = getelementptr inbounds %struct.bttv, %struct.bttv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @gpio_bits(i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @gpio_bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
