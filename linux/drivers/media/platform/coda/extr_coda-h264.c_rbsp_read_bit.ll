; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-h264.c_rbsp_read_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-h264.c_rbsp_read_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbsp*)* @rbsp_read_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbsp_read_bit(%struct.rbsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rbsp* %0, %struct.rbsp** %3, align 8
  %6 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %7 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = srem i32 %8, 8
  %10 = sub nsw i32 7, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %12 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = sdiv i32 %13, 8
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %18 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %26 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %31, %32
  %34 = and i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %24, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
