; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_get_fx2fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_get_fx2fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_dev = type { i32 }

@S2255_VR_FW = common dso_local global i32 0, align 4
@S2255_VR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"get fw error: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Get FW %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2255_dev*)* @s2255_get_fx2fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2255_get_fx2fw(%struct.s2255_dev* %0) #0 {
  %2 = alloca %struct.s2255_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store %struct.s2255_dev* %0, %struct.s2255_dev** %2, align 8
  %6 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %7 = load i32, i32* @S2255_VR_FW, align 4
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %9 = load i32, i32* @S2255_VR_IN, align 4
  %10 = call i32 @s2255_vendor_req(%struct.s2255_dev* %6, i32 %7, i32 0, i32 0, i8* %8, i32 2, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = trunc i32 %15 to i8
  %17 = call i32 (%struct.s2255_dev*, i32, i8*, i8, ...) @dprintk(%struct.s2255_dev* %14, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8 zeroext %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl i32 %24, 8
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %3, align 4
  %27 = load %struct.s2255_dev*, %struct.s2255_dev** %2, align 8
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (%struct.s2255_dev*, i32, i8*, i8, ...) @dprintk(%struct.s2255_dev* %27, i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %29, i32 %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @s2255_vendor_req(%struct.s2255_dev*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dprintk(%struct.s2255_dev*, i32, i8*, i8 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
