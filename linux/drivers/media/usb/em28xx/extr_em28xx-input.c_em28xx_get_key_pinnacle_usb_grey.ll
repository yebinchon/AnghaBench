; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_get_key_pinnacle_usb_grey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_get_key_pinnacle_usb_grey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@EIO = common dso_local global i32 0, align 4
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*, i8*)* @em28xx_get_key_pinnacle_usb_grey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_get_key_pinnacle_usb_grey(%struct.i2c_client* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8], align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %11 = call i32 @i2c_master_recv(%struct.i2c_client* %9, i8* %10, i32 3)
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %31

22:                                               ; preds = %16
  %23 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 63
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %7, align 8
  store i8 %29, i8* %30, align 1
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %22, %21, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
