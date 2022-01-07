; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark.c_shark_write_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark.c_shark_write_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { %struct.shark_device* }
%struct.shark_device = type { i32, i32*, i32, i32 }

@TB_LEN = common dso_local global i32 0, align 4
@SHARK_OUT_EP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"set-freq error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_tea575x*, i32)* @shark_write_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shark_write_val(%struct.snd_tea575x* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_tea575x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.shark_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %10 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %9, i32 0, i32 0
  %11 = load %struct.shark_device*, %struct.shark_device** %10, align 8
  store %struct.shark_device* %11, %struct.shark_device** %5, align 8
  %12 = load %struct.shark_device*, %struct.shark_device** %5, align 8
  %13 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %74

18:                                               ; preds = %2
  %19 = load %struct.shark_device*, %struct.shark_device** %5, align 8
  %20 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @TB_LEN, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = load %struct.shark_device*, %struct.shark_device** %5, align 8
  %25 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 192, i32* %27, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %46, %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %33, 8
  %35 = sub nsw i32 24, %34
  %36 = ashr i32 %32, %35
  %37 = and i32 %36, 255
  %38 = load %struct.shark_device*, %struct.shark_device** %5, align 8
  %39 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %37
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.shark_device*, %struct.shark_device** %5, align 8
  %51 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.shark_device*, %struct.shark_device** %5, align 8
  %54 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SHARK_OUT_EP, align 4
  %57 = call i32 @usb_sndintpipe(i32 %55, i32 %56)
  %58 = load %struct.shark_device*, %struct.shark_device** %5, align 8
  %59 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @TB_LEN, align 4
  %62 = call i32 @usb_interrupt_msg(i32 %52, i32 %57, i32* %60, i32 %61, i32* %8, i32 1000)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %49
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.shark_device*, %struct.shark_device** %5, align 8
  %68 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %74

69:                                               ; preds = %49
  %70 = load %struct.shark_device*, %struct.shark_device** %5, align 8
  %71 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %70, i32 0, i32 2
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @v4l2_err(i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %17, %69, %65
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_interrupt_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
