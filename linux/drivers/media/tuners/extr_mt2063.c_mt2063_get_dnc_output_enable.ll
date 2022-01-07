; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_mt2063_get_dnc_output_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_mt2063_get_dnc_output_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt2063_state = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MT2063_REG_DNC_GAIN = common dso_local global i64 0, align 8
@MT2063_REG_VGA_GAIN = common dso_local global i64 0, align 8
@MT2063_DNC_NONE = common dso_local global i32 0, align 4
@MT2063_DNC_2 = common dso_local global i32 0, align 4
@MT2063_DNC_1 = common dso_local global i32 0, align 4
@MT2063_DNC_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt2063_state*, i32*)* @mt2063_get_dnc_output_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2063_get_dnc_output_enable(%struct.mt2063_state* %0, i32* %1) #0 {
  %3 = alloca %struct.mt2063_state*, align 8
  %4 = alloca i32*, align 8
  store %struct.mt2063_state* %0, %struct.mt2063_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %7 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @MT2063_REG_DNC_GAIN, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %16 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @MT2063_DNC_NONE, align 4
  %25 = load i32*, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  br label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @MT2063_DNC_2, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %46

30:                                               ; preds = %2
  %31 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %32 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @MT2063_REG_VGA_GAIN, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @MT2063_DNC_1, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @MT2063_DNC_BOTH, align 4
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %29
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
