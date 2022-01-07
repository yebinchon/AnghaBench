; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_lirc_dev.c_ir_lirc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_lirc_dev.c_ir_lirc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.lirc_fh* }
%struct.lirc_fh = type { i64, i32, i32, i32, %struct.rc_dev* }
%struct.rc_dev = type { i64, i32 }
%struct.poll_table_struct = type { i32 }

@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW_TX = common dso_local global i64 0, align 8
@LIRC_MODE_SCANCODE = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@LIRC_MODE_MODE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @ir_lirc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_lirc_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.lirc_fh*, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.lirc_fh*, %struct.lirc_fh** %9, align 8
  store %struct.lirc_fh* %10, %struct.lirc_fh** %5, align 8
  %11 = load %struct.lirc_fh*, %struct.lirc_fh** %5, align 8
  %12 = getelementptr inbounds %struct.lirc_fh, %struct.lirc_fh* %11, i32 0, i32 4
  %13 = load %struct.rc_dev*, %struct.rc_dev** %12, align 8
  store %struct.rc_dev* %13, %struct.rc_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = load %struct.lirc_fh*, %struct.lirc_fh** %5, align 8
  %16 = getelementptr inbounds %struct.lirc_fh, %struct.lirc_fh* %15, i32 0, i32 3
  %17 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %18 = call i32 @poll_wait(%struct.file* %14, i32* %16, %struct.poll_table_struct* %17)
  %19 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %20 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EPOLLHUP, align 4
  %25 = load i32, i32* @EPOLLERR, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  br label %65

27:                                               ; preds = %2
  %28 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %29 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RC_DRIVER_IR_RAW_TX, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %27
  %34 = load %struct.lirc_fh*, %struct.lirc_fh** %5, align 8
  %35 = getelementptr inbounds %struct.lirc_fh, %struct.lirc_fh* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LIRC_MODE_SCANCODE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.lirc_fh*, %struct.lirc_fh** %5, align 8
  %41 = getelementptr inbounds %struct.lirc_fh, %struct.lirc_fh* %40, i32 0, i32 2
  %42 = call i32 @kfifo_is_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EPOLLIN, align 4
  %46 = load i32, i32* @EPOLLRDNORM, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %39, %33
  %49 = load %struct.lirc_fh*, %struct.lirc_fh** %5, align 8
  %50 = getelementptr inbounds %struct.lirc_fh, %struct.lirc_fh* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LIRC_MODE_MODE2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.lirc_fh*, %struct.lirc_fh** %5, align 8
  %56 = getelementptr inbounds %struct.lirc_fh, %struct.lirc_fh* %55, i32 0, i32 1
  %57 = call i32 @kfifo_is_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EPOLLIN, align 4
  %61 = load i32, i32* @EPOLLRDNORM, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %54, %48
  br label %64

64:                                               ; preds = %63, %27
  br label %65

65:                                               ; preds = %64, %23
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @kfifo_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
