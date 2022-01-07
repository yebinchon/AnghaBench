; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.go7007 = type { i64, %struct.go7007_usb* }
%struct.go7007_usb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@STATUS_SHUTDOWN = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"i2c lock failed\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_reg(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.go7007*, align 8
  %9 = alloca %struct.go7007_usb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.go7007* @i2c_get_adapdata(i32 %15)
  store %struct.go7007* %16, %struct.go7007** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load %struct.go7007*, %struct.go7007** %8, align 8
  %22 = icmp eq %struct.go7007* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %74

26:                                               ; preds = %3
  %27 = load %struct.go7007*, %struct.go7007** %8, align 8
  %28 = getelementptr inbounds %struct.go7007, %struct.go7007* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @STATUS_SHUTDOWN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %26
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @kzalloc(i32 16, i32 %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %74

43:                                               ; preds = %35
  %44 = load %struct.go7007*, %struct.go7007** %8, align 8
  %45 = getelementptr inbounds %struct.go7007, %struct.go7007* %44, i32 0, i32 1
  %46 = load %struct.go7007_usb*, %struct.go7007_usb** %45, align 8
  store %struct.go7007_usb* %46, %struct.go7007_usb** %9, align 8
  %47 = load %struct.go7007_usb*, %struct.go7007_usb** %9, align 8
  %48 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %47, i32 0, i32 0
  %49 = call i64 @mutex_lock_interruptible(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 1
  %54 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load i32, i32* @EINTR, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %74

59:                                               ; preds = %43
  %60 = load %struct.go7007*, %struct.go7007** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %63, %64
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @go7007_usb_vendor_request(%struct.go7007* %60, i32 85, i32 %61, i32 %65, i32* %66, i32 16, i32 1)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.go7007_usb*, %struct.go7007_usb** %9, align 8
  %69 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %59, %51, %40, %32, %23
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.go7007* @i2c_get_adapdata(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @go7007_usb_vendor_request(%struct.go7007*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
