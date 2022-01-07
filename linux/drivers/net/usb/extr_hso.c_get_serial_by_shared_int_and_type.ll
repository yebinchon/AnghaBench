; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_get_serial_by_shared_int_and_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_get_serial_by_shared_int_and_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.hso_serial = type { %struct.hso_shared_int* }
%struct.hso_shared_int = type { i32 }

@HSO_SERIAL_TTY_MINORS = common dso_local global i32 0, align 4
@serial_table = common dso_local global %struct.TYPE_3__** null, align 8
@HSO_PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hso_serial* (%struct.hso_shared_int*, i32)* @get_serial_by_shared_int_and_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hso_serial* @get_serial_by_shared_int_and_type(%struct.hso_shared_int* %0, i32 %1) #0 {
  %3 = alloca %struct.hso_serial*, align 8
  %4 = alloca %struct.hso_shared_int*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hso_shared_int* %0, %struct.hso_shared_int** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @hso_mux_to_port(i32 %8)
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %52, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @HSO_SERIAL_TTY_MINORS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @serial_table, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %51

21:                                               ; preds = %14
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @serial_table, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call %struct.hso_serial* @dev2ser(%struct.TYPE_3__* %26)
  %28 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %27, i32 0, i32 0
  %29 = load %struct.hso_shared_int*, %struct.hso_shared_int** %28, align 8
  %30 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %31 = icmp eq %struct.hso_shared_int* %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %21
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @serial_table, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HSO_PORT_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @serial_table, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call %struct.hso_serial* @dev2ser(%struct.TYPE_3__* %49)
  store %struct.hso_serial* %50, %struct.hso_serial** %3, align 8
  br label %56

51:                                               ; preds = %32, %21, %14
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %10

55:                                               ; preds = %10
  store %struct.hso_serial* null, %struct.hso_serial** %3, align 8
  br label %56

56:                                               ; preds = %55, %44
  %57 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  ret %struct.hso_serial* %57
}

declare dso_local i32 @hso_mux_to_port(i32) #1

declare dso_local %struct.hso_serial* @dev2ser(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
