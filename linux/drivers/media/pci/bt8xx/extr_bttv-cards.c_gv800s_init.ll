; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_gv800s_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_gv800s_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BTTV_MAX = common dso_local global i32 0, align 4
@master = common dso_local global %struct.bttv** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @gv800s_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv800s_init(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %4 = call i32 @gpio_inout(i32 987263, i32 987263)
  %5 = call i32 @gpio_write(i32 524288)
  %6 = call i32 @gpio_write(i32 0)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.bttv*, %struct.bttv** %2, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %11, i32* %17, align 4
  %18 = load %struct.bttv*, %struct.bttv** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @gv800s_write(%struct.bttv* %18, i32 %19, i32 %20, i32 1)
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.bttv*, %struct.bttv** %2, align 8
  %27 = call i32 @bttv_I2CWrite(%struct.bttv* %26, i32 24, i32 5, i32 144, i32 1)
  %28 = load %struct.bttv*, %struct.bttv** %2, align 8
  %29 = getelementptr inbounds %struct.bttv, %struct.bttv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BTTV_MAX, align 4
  %33 = sub nsw i32 %32, 4
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %72

36:                                               ; preds = %25
  %37 = load %struct.bttv*, %struct.bttv** %2, align 8
  %38 = load %struct.bttv**, %struct.bttv*** @master, align 8
  %39 = load %struct.bttv*, %struct.bttv** %2, align 8
  %40 = getelementptr inbounds %struct.bttv, %struct.bttv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.bttv*, %struct.bttv** %38, i64 %43
  store %struct.bttv* %37, %struct.bttv** %44, align 8
  %45 = load %struct.bttv*, %struct.bttv** %2, align 8
  %46 = load %struct.bttv**, %struct.bttv*** @master, align 8
  %47 = load %struct.bttv*, %struct.bttv** %2, align 8
  %48 = getelementptr inbounds %struct.bttv, %struct.bttv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.bttv*, %struct.bttv** %46, i64 %52
  store %struct.bttv* %45, %struct.bttv** %53, align 8
  %54 = load %struct.bttv*, %struct.bttv** %2, align 8
  %55 = load %struct.bttv**, %struct.bttv*** @master, align 8
  %56 = load %struct.bttv*, %struct.bttv** %2, align 8
  %57 = getelementptr inbounds %struct.bttv, %struct.bttv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.bttv*, %struct.bttv** %55, i64 %61
  store %struct.bttv* %54, %struct.bttv** %62, align 8
  %63 = load %struct.bttv*, %struct.bttv** %2, align 8
  %64 = load %struct.bttv**, %struct.bttv*** @master, align 8
  %65 = load %struct.bttv*, %struct.bttv** %2, align 8
  %66 = getelementptr inbounds %struct.bttv, %struct.bttv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.bttv*, %struct.bttv** %64, i64 %70
  store %struct.bttv* %63, %struct.bttv** %71, align 8
  br label %72

72:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @gpio_inout(i32, i32) #1

declare dso_local i32 @gpio_write(i32) #1

declare dso_local i32 @gv800s_write(%struct.bttv*, i32, i32, i32) #1

declare dso_local i32 @bttv_I2CWrite(%struct.bttv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
