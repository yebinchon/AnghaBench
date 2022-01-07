; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-vbi.c_fops_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-vbi.c_fops_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64 }
%struct.saa7164_vbi_fh = type { i32, %struct.saa7164_port* }
%struct.saa7164_port = type { %struct.TYPE_2__, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @fops_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fops_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.saa7164_vbi_fh*, align 8
  %7 = alloca %struct.saa7164_port*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.saa7164_vbi_fh*
  store %struct.saa7164_vbi_fh* %12, %struct.saa7164_vbi_fh** %6, align 8
  %13 = load %struct.saa7164_vbi_fh*, %struct.saa7164_vbi_fh** %6, align 8
  %14 = getelementptr inbounds %struct.saa7164_vbi_fh, %struct.saa7164_vbi_fh* %13, i32 0, i32 1
  %15 = load %struct.saa7164_port*, %struct.saa7164_port** %14, align 8
  store %struct.saa7164_port* %15, %struct.saa7164_port** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %17 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %20 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %19, i32 0, i32 4
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @jiffies, align 4
  %22 = call i64 @jiffies_to_msecs(i32 %21)
  %23 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %24 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %23, i32 0, i32 6
  store i64 %22, i64* %24, align 8
  %25 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %26 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %29 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %33 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %35 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %34, i32 0, i32 5
  %36 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %37 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @saa7164_histogram_update(i32* %35, i64 %38)
  %40 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %41 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @video_is_registered(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @EPOLLERR, align 4
  store i32 %46, i32* %3, align 4
  br label %100

47:                                               ; preds = %2
  %48 = load %struct.saa7164_vbi_fh*, %struct.saa7164_vbi_fh** %6, align 8
  %49 = getelementptr inbounds %struct.saa7164_vbi_fh, %struct.saa7164_vbi_fh* %48, i32 0, i32 0
  %50 = call i64 @atomic_cmpxchg(i32* %49, i32 0, i32 1)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %54 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %53, i32 0, i32 2
  %55 = call i32 @atomic_inc_return(i32* %54)
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %59 = call i64 @saa7164_vbi_initialize(%struct.saa7164_port* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @EPOLLERR, align 4
  store i32 %62, i32* %3, align 4
  br label %100

63:                                               ; preds = %57
  %64 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %65 = call i32 @saa7164_vbi_start_streaming(%struct.saa7164_port* %64)
  %66 = call i32 @msleep(i32 200)
  br label %67

67:                                               ; preds = %63, %52
  br label %68

68:                                               ; preds = %67, %47
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @O_NONBLOCK, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %77 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %80 = call i32 @saa7164_vbi_next_buf(%struct.saa7164_port* %79)
  %81 = call i64 @wait_event_interruptible(i32 %78, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @EPOLLERR, align 4
  store i32 %84, i32* %3, align 4
  br label %100

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %68
  %87 = load %struct.saa7164_port*, %struct.saa7164_port** %7, align 8
  %88 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @list_empty(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @EPOLLIN, align 4
  %94 = load i32, i32* @EPOLLRDNORM, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %92, %86
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %83, %61, %45
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @saa7164_histogram_update(i32*, i64) #1

declare dso_local i32 @video_is_registered(i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @saa7164_vbi_initialize(%struct.saa7164_port*) #1

declare dso_local i32 @saa7164_vbi_start_streaming(%struct.saa7164_port*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @saa7164_vbi_next_buf(%struct.saa7164_port*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
