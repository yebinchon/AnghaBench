; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_mcu.c_mt76x02u_multiple_mcu_reads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_mcu.c_mt76x02u_multiple_mcu_reads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, i32*, i32)* @mt76x02u_multiple_mcu_reads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02u_multiple_mcu_reads(%struct.mt76_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76_usb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %11, i32 0, i32 0
  store %struct.mt76_usb* %12, %struct.mt76_usb** %7, align 8
  %13 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %14 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 %19, 4
  %21 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %22 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %20, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %29 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %36 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  store i64 %39, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %73, %18
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %43 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 4, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = call i64 @get_unaligned_le32(i32* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %8, align 8
  %56 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %57 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %54, i64* %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %66 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i64 %64, i64* %72, align 8
  br label %73

73:                                               ; preds = %47
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %40

76:                                               ; preds = %40
  br label %139

77:                                               ; preds = %3
  %78 = load i32, i32* %6, align 4
  %79 = sdiv i32 %78, 8
  %80 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %81 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %79, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @WARN_ON_ONCE(i32 %85)
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %135, %77
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %90 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %138

94:                                               ; preds = %87
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 8, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = call i64 @get_unaligned_le32(i32* %99)
  %101 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %102 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %100, %104
  store i64 %105, i64* %8, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 8, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = call i64 @get_unaligned_le32(i32* %111)
  store i64 %112, i64* %9, align 8
  %113 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %114 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @WARN_ON_ONCE(i32 %124)
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %128 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i64 %126, i64* %134, align 8
  br label %135

135:                                              ; preds = %94
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %87

138:                                              ; preds = %87
  br label %139

139:                                              ; preds = %138, %76
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
