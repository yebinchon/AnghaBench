; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_twl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_twl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.twl_client* }
%struct.twl_client = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@twl_priv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @twl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.twl_client*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = call i64 (...) @twl_class_is_4030()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @twl4030_exit_irq()
  store i32 %11, i32* %6, align 4
  br label %14

12:                                               ; preds = %1
  %13 = call i32 (...) @twl6030_exit_irq()
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %14
  %20 = call i32 (...) @twl_get_num_slaves()
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %50, %19
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @twl_priv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.twl_client*, %struct.twl_client** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %28, i64 %30
  store %struct.twl_client* %31, %struct.twl_client** %7, align 8
  %32 = load %struct.twl_client*, %struct.twl_client** %7, align 8
  %33 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %32, i32 0, i32 0
  %34 = load %struct.i2c_client*, %struct.i2c_client** %33, align 8
  %35 = icmp ne %struct.i2c_client* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load %struct.twl_client*, %struct.twl_client** %7, align 8
  %38 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %37, i32 0, i32 0
  %39 = load %struct.i2c_client*, %struct.i2c_client** %38, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = icmp ne %struct.i2c_client* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.twl_client*, %struct.twl_client** %7, align 8
  %44 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %43, i32 0, i32 0
  %45 = load %struct.i2c_client*, %struct.i2c_client** %44, align 8
  %46 = call i32 @i2c_unregister_device(%struct.i2c_client* %45)
  br label %47

47:                                               ; preds = %42, %36, %25
  %48 = load %struct.twl_client*, %struct.twl_client** %7, align 8
  %49 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %48, i32 0, i32 0
  store %struct.i2c_client* null, %struct.i2c_client** %49, align 8
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @twl_priv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @twl_class_is_4030(...) #1

declare dso_local i32 @twl4030_exit_irq(...) #1

declare dso_local i32 @twl6030_exit_irq(...) #1

declare dso_local i32 @twl_get_num_slaves(...) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
