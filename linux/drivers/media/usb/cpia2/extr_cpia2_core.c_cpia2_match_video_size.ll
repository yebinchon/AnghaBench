; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_match_video_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_match_video_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STV_IMAGE_VGA_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_VGA_ROWS = common dso_local global i32 0, align 4
@VIDEOSIZE_VGA = common dso_local global i32 0, align 4
@STV_IMAGE_CIF_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_CIF_ROWS = common dso_local global i32 0, align 4
@VIDEOSIZE_CIF = common dso_local global i32 0, align 4
@STV_IMAGE_QVGA_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_QVGA_ROWS = common dso_local global i32 0, align 4
@VIDEOSIZE_QVGA = common dso_local global i32 0, align 4
@VIDEOSIZE_288_216 = common dso_local global i32 0, align 4
@VIDEOSIZE_256_192 = common dso_local global i32 0, align 4
@VIDEOSIZE_224_168 = common dso_local global i32 0, align 4
@VIDEOSIZE_192_144 = common dso_local global i32 0, align 4
@STV_IMAGE_QCIF_COLS = common dso_local global i32 0, align 4
@STV_IMAGE_QCIF_ROWS = common dso_local global i32 0, align 4
@VIDEOSIZE_QCIF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_match_video_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @STV_IMAGE_VGA_COLS, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @STV_IMAGE_VGA_ROWS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @VIDEOSIZE_VGA, align 4
  store i32 %14, i32* %3, align 4
  br label %78

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @STV_IMAGE_CIF_COLS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @STV_IMAGE_CIF_ROWS, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @VIDEOSIZE_CIF, align 4
  store i32 %24, i32* %3, align 4
  br label %78

25:                                               ; preds = %19, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @STV_IMAGE_QVGA_COLS, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @STV_IMAGE_QVGA_ROWS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @VIDEOSIZE_QVGA, align 4
  store i32 %34, i32* %3, align 4
  br label %78

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %4, align 4
  %37 = icmp sge i32 %36, 288
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp sge i32 %39, 216
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @VIDEOSIZE_288_216, align 4
  store i32 %42, i32* %3, align 4
  br label %78

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 256
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 192
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @VIDEOSIZE_256_192, align 4
  store i32 %50, i32* %3, align 4
  br label %78

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %52, 224
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 168
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @VIDEOSIZE_224_168, align 4
  store i32 %58, i32* %3, align 4
  br label %78

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 192
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp sge i32 %63, 144
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @VIDEOSIZE_192_144, align 4
  store i32 %66, i32* %3, align 4
  br label %78

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @STV_IMAGE_QCIF_COLS, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @STV_IMAGE_QCIF_ROWS, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @VIDEOSIZE_QCIF, align 4
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %71, %67
  store i32 -1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %75, %65, %57, %49, %41, %33, %23, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
