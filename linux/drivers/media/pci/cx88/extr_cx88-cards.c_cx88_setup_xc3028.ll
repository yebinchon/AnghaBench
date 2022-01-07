; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_setup_xc3028.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_setup_xc3028.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xc2028_ctrl = type { i32, i32, i32, i8*, i32 }

@XC2028_DEFAULT_FIRMWARE = common dso_local global i32 0, align 4
@XC3028_FE_ZARLINK456 = common dso_local global i8* null, align 8
@XC3028_FE_OREN538 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_setup_xc3028(%struct.cx88_core* %0, %struct.xc2028_ctrl* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.xc2028_ctrl*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store %struct.xc2028_ctrl* %1, %struct.xc2028_ctrl** %4, align 8
  %5 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %6 = call i32 @memset(%struct.xc2028_ctrl* %5, i32 0, i32 32)
  %7 = load i32, i32* @XC2028_DEFAULT_FIRMWARE, align 4
  %8 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %9 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %11 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %10, i32 0, i32 0
  store i32 64, i32* %11, align 8
  %12 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %13 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %44 [
    i32 133, label %15
    i32 137, label %26
    i32 129, label %26
    i32 135, label %30
    i32 138, label %30
    i32 136, label %34
    i32 128, label %37
    i32 131, label %37
    i32 132, label %37
    i32 134, label %38
    i32 130, label %38
  ]

15:                                               ; preds = %2
  %16 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %17 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %23 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 16, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %15
  br label %50

26:                                               ; preds = %2, %2
  %27 = load i8*, i8** @XC3028_FE_ZARLINK456, align 8
  %28 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %29 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  br label %50

30:                                               ; preds = %2, %2
  %31 = load i8*, i8** @XC3028_FE_OREN538, align 8
  %32 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %36 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %50

37:                                               ; preds = %2, %2, %2
  br label %50

38:                                               ; preds = %2, %2
  %39 = load i8*, i8** @XC3028_FE_ZARLINK456, align 8
  %40 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  br label %50

44:                                               ; preds = %2
  %45 = load i8*, i8** @XC3028_FE_OREN538, align 8
  %46 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %47 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %49 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %44, %38, %37, %34, %30, %26, %25
  ret void
}

declare dso_local i32 @memset(%struct.xc2028_ctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
