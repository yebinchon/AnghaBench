; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_enc_get_mpeg_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_enc_get_mpeg_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*, i64, i32, i32)* @enc_get_mpeg_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enc_get_mpeg_dma(%struct.solo_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.solo_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %13 = call i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev* %12)
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add i32 %19, %20
  %22 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %23 = call i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev* %22)
  %24 = icmp ule i32 %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %29 = call i64 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev* %28)
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @solo_p2m_dma_t(%struct.solo_dev* %26, i32 0, i64 %27, i64 %32, i32 %33, i32 0, i32 0)
  store i32 %34, i32* %5, align 4
  br label %71

35:                                               ; preds = %18
  %36 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %39 = call i64 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev* %38)
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %44 = call i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev* %43)
  %45 = load i32, i32* %8, align 4
  %46 = sub i32 %44, %45
  %47 = call i32 @solo_p2m_dma_t(%struct.solo_dev* %36, i32 0, i64 %37, i64 %42, i32 %46, i32 0, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %35
  %51 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %54 = call i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev* %53)
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = sub nsw i64 %56, %58
  %60 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %61 = call i64 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev* %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %62, %63
  %65 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %66 = call i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev* %65)
  %67 = sub i32 %64, %66
  %68 = call i32 @solo_p2m_dma_t(%struct.solo_dev* %51, i32 0, i64 %59, i64 %61, i32 %67, i32 0, i32 0)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %50, %35
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %25, %15
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @SOLO_MP4E_EXT_SIZE(%struct.solo_dev*) #1

declare dso_local i32 @solo_p2m_dma_t(%struct.solo_dev*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i64 @SOLO_MP4E_EXT_ADDR(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
