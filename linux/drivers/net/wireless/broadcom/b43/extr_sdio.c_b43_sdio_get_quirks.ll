; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_sdio.c_b43_sdio_get_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_sdio.c_b43_sdio_get_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_sdio_quirk = type { i32, i64, i64 }

@b43_sdio_quirks = common dso_local global %struct.b43_sdio_quirk* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @b43_sdio_get_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_sdio_get_quirks(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.b43_sdio_quirk*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.b43_sdio_quirk*, %struct.b43_sdio_quirk** @b43_sdio_quirks, align 8
  store %struct.b43_sdio_quirk* %7, %struct.b43_sdio_quirk** %6, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load %struct.b43_sdio_quirk*, %struct.b43_sdio_quirk** %6, align 8
  %10 = getelementptr inbounds %struct.b43_sdio_quirk, %struct.b43_sdio_quirk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.b43_sdio_quirk*, %struct.b43_sdio_quirk** %6, align 8
  %16 = getelementptr inbounds %struct.b43_sdio_quirk, %struct.b43_sdio_quirk* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.b43_sdio_quirk*, %struct.b43_sdio_quirk** %6, align 8
  %22 = getelementptr inbounds %struct.b43_sdio_quirk, %struct.b43_sdio_quirk* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.b43_sdio_quirk*, %struct.b43_sdio_quirk** %6, align 8
  %27 = getelementptr inbounds %struct.b43_sdio_quirk, %struct.b43_sdio_quirk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %19, %13
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.b43_sdio_quirk*, %struct.b43_sdio_quirk** %6, align 8
  %32 = getelementptr inbounds %struct.b43_sdio_quirk, %struct.b43_sdio_quirk* %31, i32 1
  store %struct.b43_sdio_quirk* %32, %struct.b43_sdio_quirk** %6, align 8
  br label %8

33:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
