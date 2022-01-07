; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_write_reg_fp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_s2250-board.c_write_reg_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.go7007 = type { i64, %struct.go7007_usb* }
%struct.go7007_usb = type { i32 }
%struct.s2250 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@STATUS_SHUTDOWN = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"i2c lock failed\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid fp write %x %x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid fp write addr %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @write_reg_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_reg_fp(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.go7007*, align 8
  %9 = alloca %struct.go7007_usb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.s2250*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.go7007* @i2c_get_adapdata(i32 %17)
  store %struct.go7007* %18, %struct.go7007** %8, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = call %struct.s2250* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.s2250* %20, %struct.s2250** %12, align 8
  %21 = load %struct.go7007*, %struct.go7007** %8, align 8
  %22 = icmp eq %struct.go7007* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %139

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
  br label %139

35:                                               ; preds = %26
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64* @kzalloc(i32 16, i32 %36)
  store i64* %37, i64** %11, align 8
  %38 = load i64*, i64** %11, align 8
  %39 = icmp eq i64* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %139

43:                                               ; preds = %35
  %44 = load i64*, i64** %11, align 8
  %45 = call i32 @memset(i64* %44, i32 205, i32 6)
  %46 = load %struct.go7007*, %struct.go7007** %8, align 8
  %47 = getelementptr inbounds %struct.go7007, %struct.go7007* %46, i32 0, i32 1
  %48 = load %struct.go7007_usb*, %struct.go7007_usb** %47, align 8
  store %struct.go7007_usb* %48, %struct.go7007_usb** %9, align 8
  %49 = load %struct.go7007_usb*, %struct.go7007_usb** %9, align 8
  %50 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %49, i32 0, i32 0
  %51 = call i64 @mutex_lock_interruptible(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_info(i32* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %57 = load i64*, i64** %11, align 8
  %58 = call i32 @kfree(i64* %57)
  %59 = load i32, i32* @EINTR, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %139

61:                                               ; preds = %43
  %62 = load %struct.go7007*, %struct.go7007** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i64*, i64** %11, align 8
  %66 = call i32 @go7007_usb_vendor_request(%struct.go7007* %62, i32 87, i32 %63, i32 %64, i64* %65, i32 16, i32 1)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.go7007_usb*, %struct.go7007_usb** %9, align 8
  %68 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load i64*, i64** %11, align 8
  %74 = call i32 @kfree(i64* %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %139

76:                                               ; preds = %61
  %77 = load i64*, i64** %11, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %76
  %82 = load i64*, i64** %11, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 4
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 %84, 8
  %86 = load i64*, i64** %11, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 5
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load i64*, i64** %11, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = shl i64 %93, 8
  %95 = load i64*, i64** %11, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 3
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %14, align 4
  %100 = load i64*, i64** %11, align 8
  %101 = call i32 @kfree(i64* %100)
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %81
  %106 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (i32*, i8*, ...) @dev_info(i32* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* @EFAULT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %139

113:                                              ; preds = %81
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32*, i8*, ...) @dev_info(i32* %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* @EFAULT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %139

125:                                              ; preds = %113
  br label %131

126:                                              ; preds = %76
  %127 = load i64*, i64** %11, align 8
  %128 = call i32 @kfree(i64* %127)
  %129 = load i32, i32* @EFAULT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %139

131:                                              ; preds = %125
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 299
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.s2250*, %struct.s2250** %12, align 8
  %137 = getelementptr inbounds %struct.s2250, %struct.s2250* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %131
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %126, %117, %105, %72, %53, %40, %32, %23
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.go7007* @i2c_get_adapdata(i32) #1

declare dso_local %struct.s2250* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @go7007_usb_vendor_request(%struct.go7007*, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
