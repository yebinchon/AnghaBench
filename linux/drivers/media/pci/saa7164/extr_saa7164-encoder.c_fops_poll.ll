; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-encoder.c_fops_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-encoder.c_fops_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.saa7164_encoder_fh = type { i32, %struct.saa7164_port* }
%struct.saa7164_port = type { %struct.TYPE_2__, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @fops_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fops_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.saa7164_encoder_fh*, align 8
  %8 = alloca %struct.saa7164_port*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @poll_requested_events(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.saa7164_encoder_fh*
  store %struct.saa7164_encoder_fh* %15, %struct.saa7164_encoder_fh** %7, align 8
  %16 = load %struct.saa7164_encoder_fh*, %struct.saa7164_encoder_fh** %7, align 8
  %17 = getelementptr inbounds %struct.saa7164_encoder_fh, %struct.saa7164_encoder_fh* %16, i32 0, i32 1
  %18 = load %struct.saa7164_port*, %struct.saa7164_port** %17, align 8
  store %struct.saa7164_port* %18, %struct.saa7164_port** %8, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @v4l2_ctrl_poll(%struct.file* %19, i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %23 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %26 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @jiffies, align 4
  %28 = call i64 @jiffies_to_msecs(i32 %27)
  %29 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %30 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %32 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %35 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %39 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %41 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %40, i32 0, i32 3
  %42 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %43 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @saa7164_histogram_update(i32* %41, i64 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @EPOLLIN, align 4
  %48 = load i32, i32* @EPOLLRDNORM, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %2
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %91

54:                                               ; preds = %2
  %55 = load %struct.saa7164_encoder_fh*, %struct.saa7164_encoder_fh** %7, align 8
  %56 = getelementptr inbounds %struct.saa7164_encoder_fh, %struct.saa7164_encoder_fh* %55, i32 0, i32 0
  %57 = call i64 @atomic_cmpxchg(i32* %56, i32 0, i32 1)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %61 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %60, i32 0, i32 1
  %62 = call i32 @atomic_inc_return(i32* %61)
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %66 = call i64 @saa7164_encoder_initialize(%struct.saa7164_port* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EPOLLERR, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %3, align 4
  br label %91

72:                                               ; preds = %64
  %73 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %74 = call i32 @saa7164_encoder_start_streaming(%struct.saa7164_port* %73)
  %75 = call i32 @msleep(i32 200)
  br label %76

76:                                               ; preds = %72, %59
  br label %77

77:                                               ; preds = %76, %54
  %78 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %79 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @list_empty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @EPOLLIN, align 4
  %85 = load i32, i32* @EPOLLRDNORM, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %83, %77
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %68, %52
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local i32 @v4l2_ctrl_poll(%struct.file*, i32*) #1

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @saa7164_histogram_update(i32*, i64) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @saa7164_encoder_initialize(%struct.saa7164_port*) #1

declare dso_local i32 @saa7164_encoder_start_streaming(%struct.saa7164_port*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
