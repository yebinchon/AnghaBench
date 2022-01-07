; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_boot_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_boot_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @go7007_boot_encoder(%struct.go7007* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.go7007*, %struct.go7007** %4, align 8
  %8 = getelementptr inbounds %struct.go7007, %struct.go7007* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.go7007*, %struct.go7007** %4, align 8
  %11 = call i32 @go7007_load_encoder(%struct.go7007* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.go7007*, %struct.go7007** %4, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 1
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %30

22:                                               ; preds = %18
  %23 = load %struct.go7007*, %struct.go7007** %4, align 8
  %24 = call i64 @go7007_i2c_init(%struct.go7007* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %30

27:                                               ; preds = %22
  %28 = load %struct.go7007*, %struct.go7007** %4, align 8
  %29 = getelementptr inbounds %struct.go7007, %struct.go7007* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %26, %21, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @go7007_load_encoder(%struct.go7007*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @go7007_i2c_init(%struct.go7007*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
