; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis302dl_interrupt_handle_click.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis302dl_interrupt_handle_click.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32, i32*, i32 (%struct.lis3lv02d*, i32, i32*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@CLICK_SRC = common dso_local global i32 0, align 4
@CLICK_SINGLE_X = common dso_local global i32 0, align 4
@CLICK_SINGLE_Y = common dso_local global i32 0, align 4
@CLICK_SINGLE_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lis3lv02d*)* @lis302dl_interrupt_handle_click to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lis302dl_interrupt_handle_click(%struct.lis3lv02d* %0) #0 {
  %2 = alloca %struct.lis3lv02d*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %2, align 8
  %5 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %6 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %3, align 8
  %10 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %11 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %14 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %13, i32 0, i32 2
  %15 = load i32 (%struct.lis3lv02d*, i32, i32*)*, i32 (%struct.lis3lv02d*, i32, i32*)** %14, align 8
  %16 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %17 = load i32, i32* @CLICK_SRC, align 4
  %18 = call i32 %15(%struct.lis3lv02d* %16, i32 %17, i32* %4)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CLICK_SINGLE_X, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %26 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @input_report_key(%struct.input_dev* %24, i32 %29, i32 1)
  %31 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %32 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %33 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @input_report_key(%struct.input_dev* %31, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %23, %1
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CLICK_SINGLE_Y, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %45 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %46 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @input_report_key(%struct.input_dev* %44, i32 %49, i32 1)
  %51 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %52 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %53 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @input_report_key(%struct.input_dev* %51, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %43, %38
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @CLICK_SINGLE_Z, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %65 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %66 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @input_report_key(%struct.input_dev* %64, i32 %69, i32 1)
  %71 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %72 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %73 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @input_report_key(%struct.input_dev* %71, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %63, %58
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = call i32 @input_sync(%struct.input_dev* %79)
  %81 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %82 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
