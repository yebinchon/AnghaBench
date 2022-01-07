; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65010.c_tps65010_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65010.c_tps65010_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32, i32 }
%struct.tps65010 = type { i32, i32 }
%struct.tps65010_board = type { i32 (%struct.i2c_client.0*, i32)*, i32 }
%struct.i2c_client.0 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"board %s %s err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"teardown\00", align 1
@the_tps = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tps65010_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65010_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.tps65010*, align 8
  %4 = alloca %struct.tps65010_board*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.tps65010* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.tps65010* %7, %struct.tps65010** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 2
  %10 = call %struct.tps65010_board* @dev_get_platdata(i32* %9)
  store %struct.tps65010_board* %10, %struct.tps65010_board** %4, align 8
  %11 = load %struct.tps65010_board*, %struct.tps65010_board** %4, align 8
  %12 = icmp ne %struct.tps65010_board* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.tps65010_board*, %struct.tps65010_board** %4, align 8
  %15 = getelementptr inbounds %struct.tps65010_board, %struct.tps65010_board* %14, i32 0, i32 0
  %16 = load i32 (%struct.i2c_client.0*, i32)*, i32 (%struct.i2c_client.0*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.i2c_client.0*, i32)* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.tps65010_board*, %struct.tps65010_board** %4, align 8
  %20 = getelementptr inbounds %struct.tps65010_board, %struct.tps65010_board* %19, i32 0, i32 0
  %21 = load i32 (%struct.i2c_client.0*, i32)*, i32 (%struct.i2c_client.0*, i32)** %20, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = bitcast %struct.i2c_client* %22 to %struct.i2c_client.0*
  %24 = load %struct.tps65010_board*, %struct.tps65010_board** %4, align 8
  %25 = getelementptr inbounds %struct.tps65010_board, %struct.tps65010_board* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %21(%struct.i2c_client.0* %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 2
  %33 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %18
  br label %39

39:                                               ; preds = %38, %13, %1
  %40 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tps65010*, %struct.tps65010** %3, align 8
  %49 = call i32 @free_irq(i64 %47, %struct.tps65010* %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.tps65010*, %struct.tps65010** %3, align 8
  %52 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %51, i32 0, i32 1
  %53 = call i32 @cancel_delayed_work_sync(i32* %52)
  %54 = load %struct.tps65010*, %struct.tps65010** %3, align 8
  %55 = getelementptr inbounds %struct.tps65010, %struct.tps65010* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @debugfs_remove(i32 %56)
  store i32* null, i32** @the_tps, align 8
  ret i32 0
}

declare dso_local %struct.tps65010* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.tps65010_board* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.tps65010*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @debugfs_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
