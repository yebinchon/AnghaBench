; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_parse_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_parse_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32 }
%struct.b43_wldev = type { i32, %struct.b43_dma }
%struct.b43_dma = type { %struct.b43_dmaring*, %struct.b43_dmaring*, %struct.b43_dmaring*, %struct.b43_dmaring*, %struct.b43_dmaring* }

@.str = private unnamed_addr constant [43 x i8] c"TX-status contains invalid cookie: 0x%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_dmaring* (%struct.b43_wldev*, i32, i32*)* @parse_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_dmaring* @parse_cookie(%struct.b43_wldev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.b43_dmaring*, align 8
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.b43_dma*, align 8
  %9 = alloca %struct.b43_dmaring*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  store %struct.b43_dma* %11, %struct.b43_dma** %8, align 8
  store %struct.b43_dmaring* null, %struct.b43_dmaring** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 61440
  switch i32 %13, label %34 [
    i32 4096, label %14
    i32 8192, label %18
    i32 12288, label %22
    i32 16384, label %26
    i32 20480, label %30
  ]

14:                                               ; preds = %3
  %15 = load %struct.b43_dma*, %struct.b43_dma** %8, align 8
  %16 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %15, i32 0, i32 4
  %17 = load %struct.b43_dmaring*, %struct.b43_dmaring** %16, align 8
  store %struct.b43_dmaring* %17, %struct.b43_dmaring** %9, align 8
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.b43_dma*, %struct.b43_dma** %8, align 8
  %20 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %19, i32 0, i32 3
  %21 = load %struct.b43_dmaring*, %struct.b43_dmaring** %20, align 8
  store %struct.b43_dmaring* %21, %struct.b43_dmaring** %9, align 8
  br label %34

22:                                               ; preds = %3
  %23 = load %struct.b43_dma*, %struct.b43_dma** %8, align 8
  %24 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %23, i32 0, i32 2
  %25 = load %struct.b43_dmaring*, %struct.b43_dmaring** %24, align 8
  store %struct.b43_dmaring* %25, %struct.b43_dmaring** %9, align 8
  br label %34

26:                                               ; preds = %3
  %27 = load %struct.b43_dma*, %struct.b43_dma** %8, align 8
  %28 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %27, i32 0, i32 1
  %29 = load %struct.b43_dmaring*, %struct.b43_dmaring** %28, align 8
  store %struct.b43_dmaring* %29, %struct.b43_dmaring** %9, align 8
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.b43_dma*, %struct.b43_dma** %8, align 8
  %32 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %31, i32 0, i32 0
  %33 = load %struct.b43_dmaring*, %struct.b43_dmaring** %32, align 8
  store %struct.b43_dmaring* %33, %struct.b43_dmaring** %9, align 8
  br label %34

34:                                               ; preds = %3, %30, %26, %22, %18, %14
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 4095
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %39 = icmp ne %struct.b43_dmaring* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  %48 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  br label %51

51:                                               ; preds = %44, %40, %34
  %52 = phi i1 [ true, %40 ], [ true, %34 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %58 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @b43dbg(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %60)
  store %struct.b43_dmaring* null, %struct.b43_dmaring** %4, align 8
  br label %64

62:                                               ; preds = %51
  %63 = load %struct.b43_dmaring*, %struct.b43_dmaring** %9, align 8
  store %struct.b43_dmaring* %63, %struct.b43_dmaring** %4, align 8
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.b43_dmaring*, %struct.b43_dmaring** %4, align 8
  ret %struct.b43_dmaring* %65
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @b43dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
