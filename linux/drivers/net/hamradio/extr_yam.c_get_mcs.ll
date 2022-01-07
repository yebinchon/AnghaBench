; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_get_mcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_get_mcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yam_mcs = type { i32, i8*, %struct.yam_mcs* }

@yam_data = common dso_local global %struct.yam_mcs* null, align 8
@YAM_1200 = common dso_local global i32 0, align 4
@YAM_9600 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_mcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_mcs(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.yam_mcs*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.yam_mcs*, %struct.yam_mcs** @yam_data, align 8
  store %struct.yam_mcs* %5, %struct.yam_mcs** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.yam_mcs*, %struct.yam_mcs** %4, align 8
  %8 = icmp ne %struct.yam_mcs* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.yam_mcs*, %struct.yam_mcs** %4, align 8
  %11 = getelementptr inbounds %struct.yam_mcs, %struct.yam_mcs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.yam_mcs*, %struct.yam_mcs** %4, align 8
  %17 = getelementptr inbounds %struct.yam_mcs, %struct.yam_mcs* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %33

19:                                               ; preds = %9
  %20 = load %struct.yam_mcs*, %struct.yam_mcs** %4, align 8
  %21 = getelementptr inbounds %struct.yam_mcs, %struct.yam_mcs* %20, i32 0, i32 2
  %22 = load %struct.yam_mcs*, %struct.yam_mcs** %21, align 8
  store %struct.yam_mcs* %22, %struct.yam_mcs** %4, align 8
  br label %6

23:                                               ; preds = %6
  %24 = load i32, i32* %3, align 4
  switch i32 %24, label %29 [
    i32 1200, label %25
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @YAM_1200, align 4
  %28 = call i8* @add_mcs(i32* null, i32 %26, i32 %27)
  store i8* %28, i8** %2, align 8
  br label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @YAM_9600, align 4
  %32 = call i8* @add_mcs(i32* null, i32 %30, i32 %31)
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %29, %25, %15
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i8* @add_mcs(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
