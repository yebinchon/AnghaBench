; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_get_ceu_fmt_from_fourcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_get_ceu_fmt_from_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceu_fmt = type { i32 }

@ceu_fmt_list = common dso_local global %struct.ceu_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceu_fmt* (i32)* @get_ceu_fmt_from_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceu_fmt* @get_ceu_fmt_from_fourcc(i32 %0) #0 {
  %2 = alloca %struct.ceu_fmt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceu_fmt*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.ceu_fmt*, %struct.ceu_fmt** @ceu_fmt_list, align 8
  %7 = getelementptr inbounds %struct.ceu_fmt, %struct.ceu_fmt* %6, i64 0
  store %struct.ceu_fmt* %7, %struct.ceu_fmt** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ceu_fmt*, %struct.ceu_fmt** @ceu_fmt_list, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.ceu_fmt* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.ceu_fmt*, %struct.ceu_fmt** %4, align 8
  %15 = getelementptr inbounds %struct.ceu_fmt, %struct.ceu_fmt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.ceu_fmt*, %struct.ceu_fmt** %4, align 8
  store %struct.ceu_fmt* %20, %struct.ceu_fmt** %2, align 8
  br label %28

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ceu_fmt*, %struct.ceu_fmt** %4, align 8
  %26 = getelementptr inbounds %struct.ceu_fmt, %struct.ceu_fmt* %25, i32 1
  store %struct.ceu_fmt* %26, %struct.ceu_fmt** %4, align 8
  br label %8

27:                                               ; preds = %8
  store %struct.ceu_fmt* null, %struct.ceu_fmt** %2, align 8
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.ceu_fmt*, %struct.ceu_fmt** %2, align 8
  ret %struct.ceu_fmt* %29
}

declare dso_local i32 @ARRAY_SIZE(%struct.ceu_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
