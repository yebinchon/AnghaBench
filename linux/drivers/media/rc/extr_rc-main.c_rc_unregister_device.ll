; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i64, i32, i64, i32, i32, i32, i32, i32 (%struct.rc_dev*)*, i64, i32, i32 }

@RC_DRIVER_IR_RAW = common dso_local global i64 0, align 8
@RC_PROTO_BIT_CEC = common dso_local global i64 0, align 8
@rc_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc_unregister_device(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %3 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %4 = icmp ne %struct.rc_dev* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %71

6:                                                ; preds = %1
  %7 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RC_DRIVER_IR_RAW, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %14 = call i32 @ir_raw_event_unregister(%struct.rc_dev* %13)
  br label %15

15:                                               ; preds = %12, %6
  %16 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 10
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 9
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %23 = call i32 @rc_free_rx_device(%struct.rc_dev* %22)
  %24 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %25 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %24, i32 0, i32 6
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %28 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %15
  %32 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %33 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %32, i32 0, i32 7
  %34 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %33, align 8
  %35 = icmp ne i32 (%struct.rc_dev*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %38 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %37, i32 0, i32 7
  %39 = load i32 (%struct.rc_dev*)*, i32 (%struct.rc_dev*)** %38, align 8
  %40 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %41 = call i32 %39(%struct.rc_dev* %40)
  br label %42

42:                                               ; preds = %36, %31, %15
  %43 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %46 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %45, i32 0, i32 6
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %49 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RC_PROTO_BIT_CEC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %55 = call i32 @ir_lirc_unregister(%struct.rc_dev* %54)
  br label %56

56:                                               ; preds = %53, %42
  %57 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %58 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %57, i32 0, i32 5
  %59 = call i32 @device_del(i32* %58)
  %60 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %61 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ida_simple_remove(i32* @rc_ida, i32 %62)
  %64 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %65 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %70 = call i32 @rc_free_device(%struct.rc_dev* %69)
  br label %71

71:                                               ; preds = %5, %68, %56
  ret void
}

declare dso_local i32 @ir_raw_event_unregister(%struct.rc_dev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @rc_free_rx_device(%struct.rc_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ir_lirc_unregister(%struct.rc_dev*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
