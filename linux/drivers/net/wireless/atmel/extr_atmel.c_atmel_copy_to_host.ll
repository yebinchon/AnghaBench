; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_copy_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_copy_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*, i32, i32)* @atmel_copy_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_copy_to_host(%struct.net_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @atmel_writeAR(%struct.net_device* %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = srem i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load i32, i32* @DR, align 4
  %20 = call zeroext i8 @atmel_read8(%struct.net_device* %18, i32 %19)
  %21 = load i8*, i8** %6, align 8
  store i8 %20, i8* %21, align 1
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %17, %4
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %44, %26
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load i32, i32* @DR, align 4
  %34 = call i32 @atmel_read16(%struct.net_device* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  store i8 %36, i8* %37, align 1
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 8
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  store i8 %41, i8* %42, align 1
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %9, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load i32, i32* @DR, align 4
  %53 = call zeroext i8 @atmel_read8(%struct.net_device* %51, i32 %52)
  %54 = load i8*, i8** %6, align 8
  store i8 %53, i8* %54, align 1
  br label %55

55:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @atmel_writeAR(%struct.net_device*, i32) #1

declare dso_local zeroext i8 @atmel_read8(%struct.net_device*, i32) #1

declare dso_local i32 @atmel_read16(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
