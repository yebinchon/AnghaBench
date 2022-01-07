; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_meyeioc_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_meyeioc_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.file = type { i32 }

@gbuffers = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @meyeioc_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meyeioc_sync(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @gbuffers, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %85

20:                                               ; preds = %12
  %21 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %75 [
    i32 129, label %29
    i32 128, label %33
    i32 130, label %62
  ]

29:                                               ; preds = %20
  %30 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %85

33:                                               ; preds = %20
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @O_NONBLOCK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %85

44:                                               ; preds = %33
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 4), align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 128
  %54 = zext i1 %53 to i32
  %55 = call i32 @wait_event_interruptible(i32 %45, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  %59 = load i32, i32* @EINTR, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %85

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %20, %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 129, i32* %68, align 4
  %69 = bitcast i32* %8 to i8*
  %70 = call i32 @kfifo_out_locked(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), i8* %69, i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2))
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %75

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %20, %73
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  %84 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %75, %57, %40, %29, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @kfifo_out_locked(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
