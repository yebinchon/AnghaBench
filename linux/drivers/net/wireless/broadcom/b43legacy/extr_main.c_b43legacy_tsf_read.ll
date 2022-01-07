; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_tsf_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_tsf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@B43legacy_MMIO_REV3PLUS_TSF_HIGH = common dso_local global i32 0, align 4
@B43legacy_MMIO_REV3PLUS_TSF_LOW = common dso_local global i32 0, align 4
@B43legacy_MMIO_TSF_3 = common dso_local global i32 0, align 4
@B43legacy_MMIO_TSF_2 = common dso_local global i32 0, align 4
@B43legacy_MMIO_TSF_1 = common dso_local global i32 0, align 4
@B43legacy_MMIO_TSF_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_tsf_read(%struct.b43legacy_wldev* %0, i32* %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %17 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 3
  br i1 %22, label %23, label %54

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %34, %23
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %26 = load i32, i32* @B43legacy_MMIO_REV3PLUS_TSF_HIGH, align 4
  %27 = call i64 @b43legacy_read32(%struct.b43legacy_wldev* %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %29 = load i32, i32* @B43legacy_MMIO_REV3PLUS_TSF_LOW, align 4
  %30 = call i64 @b43legacy_read32(%struct.b43legacy_wldev* %28, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %32 = load i32, i32* @B43legacy_MMIO_REV3PLUS_TSF_HIGH, align 4
  %33 = call i64 @b43legacy_read32(%struct.b43legacy_wldev* %31, i32 %32)
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %24
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %24, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 32
  store i32 %47, i32* %45, align 4
  %48 = load i64, i64* %5, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = or i64 %51, %48
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  br label %120

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %89, %54
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %57 = load i32, i32* @B43legacy_MMIO_TSF_3, align 4
  %58 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %56, i32 %57)
  store i64 %58, i64* %12, align 8
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %60 = load i32, i32* @B43legacy_MMIO_TSF_2, align 4
  %61 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %59, i32 %60)
  store i64 %61, i64* %11, align 8
  %62 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %63 = load i32, i32* @B43legacy_MMIO_TSF_1, align 4
  %64 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %62, i32 %63)
  store i64 %64, i64* %10, align 8
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %66 = load i32, i32* @B43legacy_MMIO_TSF_0, align 4
  %67 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %65, i32 %66)
  store i64 %67, i64* %9, align 8
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %69 = load i32, i32* @B43legacy_MMIO_TSF_3, align 4
  %70 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %68, i32 %69)
  store i64 %70, i64* %15, align 8
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %72 = load i32, i32* @B43legacy_MMIO_TSF_2, align 4
  %73 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %71, i32 %72)
  store i64 %73, i64* %14, align 8
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %75 = load i32, i32* @B43legacy_MMIO_TSF_1, align 4
  %76 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %74, i32 %75)
  store i64 %76, i64* %13, align 8
  br label %77

77:                                               ; preds = %55
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %13, align 8
  %88 = icmp ne i64 %86, %87
  br label %89

89:                                               ; preds = %85, %81, %77
  %90 = phi i1 [ true, %81 ], [ true, %77 ], [ %88, %85 ]
  br i1 %90, label %55, label %91

91:                                               ; preds = %89
  %92 = load i64, i64* %12, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %4, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 48
  store i32 %97, i32* %95, align 4
  %98 = load i64, i64* %11, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = shl i32 %100, 32
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load i64, i64* %10, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 %108, 16
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 4
  %114 = load i64, i64* %9, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = or i64 %117, %114
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 4
  br label %120

120:                                              ; preds = %91, %41
  ret void
}

declare dso_local i64 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
