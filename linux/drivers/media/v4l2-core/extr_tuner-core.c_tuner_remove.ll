; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tuner = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tuner_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.tuner*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call i32 @i2c_get_clientdata(%struct.i2c_client* %4)
  %6 = call %struct.tuner* @to_tuner(i32 %5)
  store %struct.tuner* %6, %struct.tuner** %3, align 8
  %7 = load %struct.tuner*, %struct.tuner** %3, align 8
  %8 = getelementptr inbounds %struct.tuner, %struct.tuner* %7, i32 0, i32 2
  %9 = call i32 @v4l2_device_unregister_subdev(i32* %8)
  %10 = load %struct.tuner*, %struct.tuner** %3, align 8
  %11 = getelementptr inbounds %struct.tuner, %struct.tuner* %10, i32 0, i32 1
  %12 = call i32 @tuner_detach(%struct.TYPE_2__* %11)
  %13 = load %struct.tuner*, %struct.tuner** %3, align 8
  %14 = getelementptr inbounds %struct.tuner, %struct.tuner* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.tuner*, %struct.tuner** %3, align 8
  %17 = getelementptr inbounds %struct.tuner, %struct.tuner* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.tuner*, %struct.tuner** %3, align 8
  %20 = call i32 @kfree(%struct.tuner* %19)
  ret i32 0
}

declare dso_local %struct.tuner* @to_tuner(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(i32*) #1

declare dso_local i32 @tuner_detach(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
