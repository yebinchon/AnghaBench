; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_plx.c_hfa384x_from_bap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_plx.c_hfa384x_from_bap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@HFA384X_DATA1_OFF = common dso_local global i32 0, align 4
@HFA384X_DATA0_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*, i32)* @hfa384x_from_bap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_from_bap(%struct.net_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @HFA384X_DATA1_OFF, align 4
  br label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @HFA384X_DATA0_OFF, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %27, 2
  %29 = call i32 @HFA384X_INSW(i32 %25, i8* %26, i32 %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load i32, i32* %8, align 4
  %32 = sdiv i32 %31, 2
  %33 = load i32*, i32** %10, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = call signext i8 @HFA384X_INB(i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = bitcast i32* %42 to i8*
  store i8 %41, i8* %43, align 1
  br label %44

44:                                               ; preds = %39, %30
  ret i32 0
}

declare dso_local i32 @HFA384X_INSW(i32, i8*, i32) #1

declare dso_local signext i8 @HFA384X_INB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
