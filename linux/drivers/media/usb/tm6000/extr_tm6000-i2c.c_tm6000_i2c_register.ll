; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-i2c.c_tm6000_i2c_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-i2c.c_tm6000_i2c_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i8*, %struct.TYPE_8__, %struct.TYPE_9__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.tm6000_core*, i32, %struct.TYPE_6__, i32*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@tm6000_algo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tm6000 internal\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm6000_i2c_register(%struct.tm6000_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  %5 = load i32, i32* @THIS_MODULE, align 4
  %6 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %7 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  store i32 %5, i32* %8, align 8
  %9 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %10 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i32* @tm6000_algo, i32** %11, align 8
  %12 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %13 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %12, i32 0, i32 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %17 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32* %15, i32** %19, align 8
  %20 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %21 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %25 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strscpy(i32 %23, i8* %26, i32 4)
  %28 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %29 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %30 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store %struct.tm6000_core* %28, %struct.tm6000_core** %31, align 8
  %32 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %33 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %32, i32 0, i32 2
  %34 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %35 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %34, i32 0, i32 3
  %36 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %33, i32* %35)
  %37 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %38 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %37, i32 0, i32 2
  %39 = call i32 @i2c_add_adapter(%struct.TYPE_9__* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %1
  %45 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %46 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %45, i32 0, i32 2
  %47 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %48 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %49, align 8
  %50 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %51 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @I2C_NAME_SIZE, align 4
  %55 = call i32 @strscpy(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %57 = call i32 @tm6000_i2c_eeprom(%struct.tm6000_core* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %44, %42
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @tm6000_i2c_eeprom(%struct.tm6000_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
