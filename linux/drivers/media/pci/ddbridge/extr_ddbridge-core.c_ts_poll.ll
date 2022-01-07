; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ts_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ts_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { %struct.ddb_output* }
%struct.ddb_output = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ddb_input** }
%struct.ddb_input = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @ts_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dvb_device*, align 8
  %6 = alloca %struct.ddb_output*, align 8
  %7 = alloca %struct.ddb_input*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.dvb_device*, %struct.dvb_device** %10, align 8
  store %struct.dvb_device* %11, %struct.dvb_device** %5, align 8
  %12 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %12, i32 0, i32 0
  %14 = load %struct.ddb_output*, %struct.ddb_output** %13, align 8
  store %struct.ddb_output* %14, %struct.ddb_output** %6, align 8
  %15 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %16 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.ddb_input**, %struct.ddb_input*** %18, align 8
  %20 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %19, i64 0
  %21 = load %struct.ddb_input*, %struct.ddb_input** %20, align 8
  store %struct.ddb_input* %21, %struct.ddb_input** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %24 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @poll_wait(%struct.file* %22, i32* %26, i32* %27)
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %31 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @poll_wait(%struct.file* %29, i32* %33, i32* %34)
  %36 = load %struct.ddb_input*, %struct.ddb_input** %7, align 8
  %37 = call i32 @ddb_input_avail(%struct.ddb_input* %36)
  %38 = icmp sge i32 %37, 188
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load i32, i32* @EPOLLIN, align 4
  %41 = load i32, i32* @EPOLLRDNORM, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %2
  %46 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %47 = call i32 @ddb_output_free(%struct.ddb_output* %46)
  %48 = icmp sge i32 %47, 188
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* @EPOLLOUT, align 4
  %51 = load i32, i32* @EPOLLWRNORM, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @ddb_input_avail(%struct.ddb_input*) #1

declare dso_local i32 @ddb_output_free(%struct.ddb_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
