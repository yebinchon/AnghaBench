; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_copy_to_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_copy_to_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i8*, i32)* @atmel_copy_to_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_copy_to_card(%struct.net_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @atmel_writeAR(%struct.net_device* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = srem i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load i32, i32* @DR, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @atmel_write8(%struct.net_device* %19, i32 %20, i8 zeroext %22)
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %18, %4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %49, %28
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* @DR, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 %44, %46
  %48 = call i32 @atmel_write16(%struct.net_device* %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %9, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load i32, i32* @DR, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @atmel_write8(%struct.net_device* %56, i32 %57, i8 zeroext %59)
  br label %61

61:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @atmel_writeAR(%struct.net_device*, i32) #1

declare dso_local i32 @atmel_write8(%struct.net_device*, i32, i8 zeroext) #1

declare dso_local i32 @atmel_write16(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
