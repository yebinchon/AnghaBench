; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ca.c_ci_ll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ca.c_ci_ll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ringbuffer*, %struct.dvb_ringbuffer*, i32)* @ci_ll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_ll_init(%struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ringbuffer*, align 8
  %6 = alloca %struct.dvb_ringbuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct.dvb_ringbuffer*], align 16
  %9 = alloca %struct.dvb_ringbuffer**, align 8
  %10 = alloca i8*, align 8
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %5, align 8
  store %struct.dvb_ringbuffer* %1, %struct.dvb_ringbuffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [3 x %struct.dvb_ringbuffer*], [3 x %struct.dvb_ringbuffer*]* %8, i64 0, i64 0
  %12 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %5, align 8
  store %struct.dvb_ringbuffer* %12, %struct.dvb_ringbuffer** %11, align 8
  %13 = getelementptr inbounds %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %11, i64 1
  %14 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %6, align 8
  store %struct.dvb_ringbuffer* %14, %struct.dvb_ringbuffer** %13, align 8
  %15 = getelementptr inbounds %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %13, i64 1
  store %struct.dvb_ringbuffer* null, %struct.dvb_ringbuffer** %15, align 8
  %16 = getelementptr inbounds [3 x %struct.dvb_ringbuffer*], [3 x %struct.dvb_ringbuffer*]* %8, i64 0, i64 0
  store %struct.dvb_ringbuffer** %16, %struct.dvb_ringbuffer*** %9, align 8
  br label %17

17:                                               ; preds = %52, %3
  %18 = load %struct.dvb_ringbuffer**, %struct.dvb_ringbuffer*** %9, align 8
  %19 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %18, align 8
  %20 = icmp ne %struct.dvb_ringbuffer* %19, null
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @vmalloc(i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %32, %26
  %28 = load %struct.dvb_ringbuffer**, %struct.dvb_ringbuffer*** %9, align 8
  %29 = getelementptr inbounds %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %28, i32 -1
  store %struct.dvb_ringbuffer** %29, %struct.dvb_ringbuffer*** %9, align 8
  %30 = getelementptr inbounds [3 x %struct.dvb_ringbuffer*], [3 x %struct.dvb_ringbuffer*]* %8, i64 0, i64 0
  %31 = icmp ne %struct.dvb_ringbuffer** %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.dvb_ringbuffer**, %struct.dvb_ringbuffer*** %9, align 8
  %34 = getelementptr inbounds %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %33, i64 0
  %35 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %34, align 8
  %36 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @vfree(i32* %37)
  %39 = load %struct.dvb_ringbuffer**, %struct.dvb_ringbuffer*** %9, align 8
  %40 = getelementptr inbounds %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %39, i64 0
  %41 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %40, align 8
  %42 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %27

43:                                               ; preds = %27
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %21
  %47 = load %struct.dvb_ringbuffer**, %struct.dvb_ringbuffer*** %9, align 8
  %48 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %47, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dvb_ringbuffer_init(%struct.dvb_ringbuffer* %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %46
  %53 = load %struct.dvb_ringbuffer**, %struct.dvb_ringbuffer*** %9, align 8
  %54 = getelementptr inbounds %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %53, i32 1
  store %struct.dvb_ringbuffer** %54, %struct.dvb_ringbuffer*** %9, align 8
  br label %17

55:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dvb_ringbuffer_init(%struct.dvb_ringbuffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
