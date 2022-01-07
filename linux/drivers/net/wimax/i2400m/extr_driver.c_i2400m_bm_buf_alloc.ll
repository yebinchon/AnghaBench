; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_bm_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_bm_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@I2400M_BM_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2400M_BM_ACK_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*)* @i2400m_bm_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_bm_buf_alloc(%struct.i2400m* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @I2400M_BM_CMD_BUF_SIZE, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 %7, i32 %8)
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* @I2400M_BM_ACK_BUF_SIZE, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 %19, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %24 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %26 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %31

30:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

31:                                               ; preds = %29
  %32 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %33 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kfree(i32* %34)
  br label %36

36:                                               ; preds = %31, %17
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
