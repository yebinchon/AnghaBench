; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_osc_deviation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_osc_deviation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i64, %struct.i2c_adapter, %struct.TYPE_4__* }
%struct.i2c_adapter = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"write deviation %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"read deviation %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32)* @osc_deviation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @osc_deviation(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ngene_channel*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ngene_channel*
  store %struct.ngene_channel* %12, %struct.ngene_channel** %7, align 8
  %13 = load %struct.ngene_channel*, %struct.ngene_channel** %7, align 8
  %14 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.ngene_channel*, %struct.ngene_channel** %7, align 8
  %20 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %19, i32 0, i32 1
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %9, align 8
  store i64 0, i64* %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @dev_info(%struct.device* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %29 = load %struct.ngene_channel*, %struct.ngene_channel** %7, align 8
  %30 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 4096, %31
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @eeprom_write_ushort(%struct.i2c_adapter* %28, i64 %32, i64 %33)
  br label %48

35:                                               ; preds = %3
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %37 = load %struct.ngene_channel*, %struct.ngene_channel** %7, align 8
  %38 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 4096, %39
  %41 = call i64 @eeprom_read_ushort(%struct.i2c_adapter* %36, i64 %40, i64* %10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %43, %35
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @dev_info(%struct.device* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %44, %23
  %49 = load i64, i64* %10, align 8
  ret i64 %49
}

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @eeprom_write_ushort(%struct.i2c_adapter*, i64, i64) #1

declare dso_local i64 @eeprom_read_ushort(%struct.i2c_adapter*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
