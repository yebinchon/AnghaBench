; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_test_int_driver_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_test_int_driver_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ca8210_priv = type { %struct.ca8210_test, %struct.TYPE_2__* }
%struct.ca8210_test = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"test_interface: Buffering upstream message:\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%#03x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @ca8210_test_int_driver_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_test_int_driver_write(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ca8210_priv*, align 8
  %9 = alloca %struct.ca8210_test*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.ca8210_priv* @spi_get_drvdata(i8* %12)
  store %struct.ca8210_priv* %13, %struct.ca8210_priv** %8, align 8
  %14 = load %struct.ca8210_priv*, %struct.ca8210_priv** %8, align 8
  %15 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %14, i32 0, i32 0
  store %struct.ca8210_test* %15, %struct.ca8210_test** %9, align 8
  %16 = load %struct.ca8210_priv*, %struct.ca8210_priv** %8, align 8
  %17 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %37, %3
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.ca8210_priv*, %struct.ca8210_priv** %8, align 8
  %28 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kmemdup(i32* %41, i64 %42, i32 %43)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %58

50:                                               ; preds = %40
  %51 = load %struct.ca8210_test*, %struct.ca8210_test** %9, align 8
  %52 = getelementptr inbounds %struct.ca8210_test, %struct.ca8210_test* %51, i32 0, i32 1
  %53 = call i32 @kfifo_in(i32* %52, i8** %10, i32 4)
  %54 = load %struct.ca8210_priv*, %struct.ca8210_priv** %8, align 8
  %55 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.ca8210_test, %struct.ca8210_test* %55, i32 0, i32 0
  %57 = call i32 @wake_up_interruptible(i32* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %47
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.ca8210_priv* @spi_get_drvdata(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i8* @kmemdup(i32*, i64, i32) #1

declare dso_local i32 @kfifo_in(i32*, i8**, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
