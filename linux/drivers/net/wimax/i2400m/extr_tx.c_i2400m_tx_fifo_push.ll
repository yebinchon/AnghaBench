; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_fifo_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_fifo_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i64, i8* }
%struct.device = type { i32 }

@I2400M_TX_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fifo push %zu/%zu: no space\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"fifo push %zu/%zu: tail full\0A\00", align 1
@TAIL_FULL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"fifo push %zu/%zu: no head space\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"fifo push %zu/%zu: at @%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.i2400m*, i64, i64, i32)* @i2400m_tx_fifo_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @i2400m_tx_fifo_push(%struct.i2400m* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2400m*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %16 = call %struct.device* @i2400m_dev(%struct.i2400m* %15)
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %13, align 8
  %20 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %23 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %27 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %25, %28
  %30 = sub i64 %21, %29
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 (i32, %struct.device*, i8*, i64, i64, ...) @d_printf(i32 2, %struct.device* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  store i8* null, i8** %5, align 8
  br label %93

39:                                               ; preds = %4
  %40 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %41 = call i64 @__i2400m_tx_tail_room(%struct.i2400m* %40)
  store i64 %41, i64* %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = sub i64 %49, %50
  %52 = load i64, i64* %13, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.device*, %struct.device** %10, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 (i32, %struct.device*, i8*, i64, i64, ...) @d_printf(i32 2, %struct.device* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load i8*, i8** @TAIL_FULL, align 8
  store i8* %59, i8** %5, align 8
  br label %93

60:                                               ; preds = %48
  %61 = load %struct.device*, %struct.device** %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 (i32, %struct.device*, i8*, i64, i64, ...) @d_printf(i32 2, %struct.device* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %62, i64 %63)
  store i8* null, i8** %5, align 8
  br label %93

65:                                               ; preds = %44, %39
  %66 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %67 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %70 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %73 = srem i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %68, i64 %74
  store i8* %75, i8** %14, align 8
  %76 = load %struct.device*, %struct.device** %10, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %80 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %83 = srem i32 %81, %82
  %84 = call i32 (i32, %struct.device*, i8*, i64, i64, ...) @d_printf(i32 2, %struct.device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %77, i64 %78, i32 %83)
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.i2400m*, %struct.i2400m** %6, align 8
  %87 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 8
  %92 = load i8*, i8** %14, align 8
  store i8* %92, i8** %5, align 8
  br label %93

93:                                               ; preds = %65, %60, %54, %34
  %94 = load i8*, i8** %5, align 8
  ret i8* %94
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i64, i64, ...) #1

declare dso_local i64 @__i2400m_tx_tail_room(%struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
