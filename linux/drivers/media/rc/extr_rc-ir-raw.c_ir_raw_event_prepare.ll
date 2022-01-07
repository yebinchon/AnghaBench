; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_event_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_event_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.rc_dev* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@change_protocol = common dso_local global i32 0, align 4
@ir_raw_edge_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_raw_event_prepare(%struct.rc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rc_dev*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  %4 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %5 = icmp ne %struct.rc_dev* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %49

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.TYPE_2__* @kzalloc(i32 24, i32 %10)
  %12 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 1
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  %14 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %15 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %9
  %22 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %23 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store %struct.rc_dev* %22, %struct.rc_dev** %26, align 8
  %27 = load i32, i32* @change_protocol, align 4
  %28 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %33 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* @ir_raw_edge_handle, align 4
  %42 = call i32 @timer_setup(i32* %40, i32 %41, i32 0)
  %43 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @INIT_KFIFO(i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %21, %18, %6
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_2__* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_KFIFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
