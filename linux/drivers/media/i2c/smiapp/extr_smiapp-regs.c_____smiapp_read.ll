; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-regs.c_____smiapp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-regs.c_____smiapp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i8*, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"read from offset 0x%x error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*, i32, i32, i8*)* @____smiapp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @____smiapp_read(%struct.smiapp_sensor* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smiapp_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %16 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 2, i32* %26, align 8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %13, align 4
  %30 = ashr i32 %29, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* %13, align 4
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  store i8 %34, i8* %35, align 1
  %36 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @i2c_transfer(i32 %38, %struct.i2c_msg* %11, i32 1)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %4
  %43 = load i32, i32* %14, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %109

49:                                               ; preds = %4
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load i64, i64* @I2C_M_RD, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @i2c_transfer(i32 %56, %struct.i2c_msg* %11, i32 1)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load i32, i32* %14, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %109

67:                                               ; preds = %49
  %68 = load i8*, i8** %9, align 8
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %8, align 4
  switch i32 %69, label %106 [
    i32 129, label %70
    i32 130, label %91
    i32 128, label %102
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 24
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 16
  %79 = add nsw i32 %74, %78
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 8
  %84 = add nsw i32 %79, %83
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = add nsw i32 %84, %87
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %9, align 8
  store i8 %89, i8* %90, align 1
  br label %108

91:                                               ; preds = %67
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 8
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %95, %98
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %9, align 8
  store i8 %100, i8* %101, align 1
  br label %108

102:                                              ; preds = %67
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = load i8*, i8** %9, align 8
  store i8 %104, i8* %105, align 1
  br label %108

106:                                              ; preds = %67
  %107 = call i32 (...) @BUG()
  br label %108

108:                                              ; preds = %106, %102, %91, %70
  store i32 0, i32* %5, align 4
  br label %116

109:                                              ; preds = %66, %48
  %110 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %109, %108
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
