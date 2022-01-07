; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_audio_mux_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_audio_mux_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.bttv = type { %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@BT848_DSTATUS = common dso_local global i32 0, align 4
@BT848_DSTATUS_HLOC = common dso_local global i32 0, align 4
@bttv_gpio = common dso_local global i64 0, align 8
@audio_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, i32, i32)* @audio_mux_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_mux_gpio(%struct.bttv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %11 = load %struct.bttv*, %struct.bttv** %4, align 8
  %12 = getelementptr inbounds %struct.bttv, %struct.bttv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %19 = load %struct.bttv*, %struct.bttv** %4, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @gpio_inout(i32 %17, i32 %25)
  %27 = load i32, i32* @BT848_DSTATUS, align 4
  %28 = call i32 @btread(i32 %27)
  %29 = load i32, i32* @BT848_DSTATUS_HLOC, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %3
  %34 = load %struct.bttv*, %struct.bttv** %4, align 8
  %35 = getelementptr inbounds %struct.bttv, %struct.bttv* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.bttv*, %struct.bttv** %4, align 8
  %43 = getelementptr inbounds %struct.bttv, %struct.bttv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.bttv*, %struct.bttv** %4, align 8
  %48 = getelementptr inbounds %struct.bttv, %struct.bttv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %41, %33
  %53 = phi i1 [ false, %41 ], [ false, %33 ], [ %51, %46 ]
  br label %54

54:                                               ; preds = %52, %3
  %55 = phi i1 [ true, %3 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %61 = load %struct.bttv*, %struct.bttv** %4, align 8
  %62 = getelementptr inbounds %struct.bttv, %struct.bttv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %7, align 4
  br label %81

68:                                               ; preds = %54
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %70 = load %struct.bttv*, %struct.bttv** %4, align 8
  %71 = getelementptr inbounds %struct.bttv, %struct.bttv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %68, %59
  %82 = load %struct.bttv*, %struct.bttv** %4, align 8
  %83 = getelementptr inbounds %struct.bttv, %struct.bttv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  switch i64 %85, label %90 [
    i64 128, label %86
    i64 129, label %86
  ]

86:                                               ; preds = %81, %81
  %87 = load %struct.bttv*, %struct.bttv** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @bttv_tda9880_setnorm(%struct.bttv* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  br label %101

90:                                               ; preds = %81
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %92 = load %struct.bttv*, %struct.bttv** %4, align 8
  %93 = getelementptr inbounds %struct.bttv, %struct.bttv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @gpio_bits(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %90, %86
  %102 = load i64, i64* @bttv_gpio, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load %struct.bttv*, %struct.bttv** %4, align 8
  %106 = load i32*, i32** @audio_modes, align 8
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %109
  %113 = phi i32 [ 4, %109 ], [ %111, %110 ]
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %106, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bttv_gpio_tracking(%struct.bttv* %105, i32 %116)
  br label %118

118:                                              ; preds = %112, %101
  ret void
}

declare dso_local i32 @gpio_inout(i32, i32) #1

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @bttv_tda9880_setnorm(%struct.bttv*, i32) #1

declare dso_local i32 @gpio_bits(i32, i32) #1

declare dso_local i32 @bttv_gpio_tracking(%struct.bttv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
