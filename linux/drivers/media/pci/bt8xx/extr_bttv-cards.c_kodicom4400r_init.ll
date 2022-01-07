; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_kodicom4400r_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_kodicom4400r_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BTTV_MAX = common dso_local global i32 0, align 4
@master = common dso_local global %struct.bttv** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @kodicom4400r_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kodicom4400r_init(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %4 = call i32 @gpio_inout(i32 1023, i32 1023)
  %5 = call i32 @gpio_write(i32 512)
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
  %21 = call i32 @kodicom4400r_write(%struct.bttv* %18, i32 %19, i32 %20, i32 1)
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.bttv*, %struct.bttv** %2, align 8
  %27 = getelementptr inbounds %struct.bttv, %struct.bttv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load %struct.bttv*, %struct.bttv** %2, align 8
  %33 = getelementptr inbounds %struct.bttv, %struct.bttv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BTTV_MAX, align 4
  %37 = sub nsw i32 %36, 3
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %25
  br label %76

40:                                               ; preds = %31
  %41 = load %struct.bttv*, %struct.bttv** %2, align 8
  %42 = load %struct.bttv**, %struct.bttv*** @master, align 8
  %43 = load %struct.bttv*, %struct.bttv** %2, align 8
  %44 = getelementptr inbounds %struct.bttv, %struct.bttv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.bttv*, %struct.bttv** %42, i64 %48
  store %struct.bttv* %41, %struct.bttv** %49, align 8
  %50 = load %struct.bttv*, %struct.bttv** %2, align 8
  %51 = load %struct.bttv**, %struct.bttv*** @master, align 8
  %52 = load %struct.bttv*, %struct.bttv** %2, align 8
  %53 = getelementptr inbounds %struct.bttv, %struct.bttv* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.bttv*, %struct.bttv** %51, i64 %56
  store %struct.bttv* %50, %struct.bttv** %57, align 8
  %58 = load %struct.bttv*, %struct.bttv** %2, align 8
  %59 = load %struct.bttv**, %struct.bttv*** @master, align 8
  %60 = load %struct.bttv*, %struct.bttv** %2, align 8
  %61 = getelementptr inbounds %struct.bttv, %struct.bttv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.bttv*, %struct.bttv** %59, i64 %65
  store %struct.bttv* %58, %struct.bttv** %66, align 8
  %67 = load %struct.bttv*, %struct.bttv** %2, align 8
  %68 = load %struct.bttv**, %struct.bttv*** @master, align 8
  %69 = load %struct.bttv*, %struct.bttv** %2, align 8
  %70 = getelementptr inbounds %struct.bttv, %struct.bttv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.bttv*, %struct.bttv** %68, i64 %74
  store %struct.bttv* %67, %struct.bttv** %75, align 8
  br label %76

76:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @gpio_inout(i32, i32) #1

declare dso_local i32 @gpio_write(i32) #1

declare dso_local i32 @kodicom4400r_write(%struct.bttv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
