; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_init_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_init_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GO7007_AUDIO_I2S_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*)* @go7007_init_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_init_encoder(%struct.go7007* %0) #0 {
  %2 = alloca %struct.go7007*, align 8
  store %struct.go7007* %0, %struct.go7007** %2, align 8
  %3 = load %struct.go7007*, %struct.go7007** %2, align 8
  %4 = getelementptr inbounds %struct.go7007, %struct.go7007* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GO7007_AUDIO_I2S_MASTER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.go7007*, %struct.go7007** %2, align 8
  %13 = call i32 @go7007_write_addr(%struct.go7007* %12, i32 4096, i32 2065)
  %14 = load %struct.go7007*, %struct.go7007** %2, align 8
  %15 = call i32 @go7007_write_addr(%struct.go7007* %14, i32 4096, i32 3089)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.go7007*, %struct.go7007** %2, align 8
  %18 = getelementptr inbounds %struct.go7007, %struct.go7007* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %35 [
    i32 128, label %20
    i32 130, label %25
    i32 129, label %30
  ]

20:                                               ; preds = %16
  %21 = load %struct.go7007*, %struct.go7007** %2, align 8
  %22 = call i32 @go7007_write_addr(%struct.go7007* %21, i32 15490, i32 1)
  %23 = load %struct.go7007*, %struct.go7007** %2, align 8
  %24 = call i32 @go7007_write_addr(%struct.go7007* %23, i32 15488, i32 254)
  br label %35

25:                                               ; preds = %16
  %26 = load %struct.go7007*, %struct.go7007** %2, align 8
  %27 = call i32 @go7007_write_addr(%struct.go7007* %26, i32 15490, i32 0)
  %28 = load %struct.go7007*, %struct.go7007** %2, align 8
  %29 = call i32 @go7007_write_addr(%struct.go7007* %28, i32 15488, i32 223)
  br label %35

30:                                               ; preds = %16
  %31 = load %struct.go7007*, %struct.go7007** %2, align 8
  %32 = call i32 @go7007_write_addr(%struct.go7007* %31, i32 15490, i32 13)
  %33 = load %struct.go7007*, %struct.go7007** %2, align 8
  %34 = call i32 @go7007_write_addr(%struct.go7007* %33, i32 15488, i32 242)
  br label %35

35:                                               ; preds = %16, %30, %25, %20
  ret i32 0
}

declare dso_local i32 @go7007_write_addr(%struct.go7007*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
