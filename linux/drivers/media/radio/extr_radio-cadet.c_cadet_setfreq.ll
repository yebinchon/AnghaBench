; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_setfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cadet = type { i64, i32, i32, i64, i64 }

@bands = common dso_local global %struct.TYPE_2__* null, align 8
@sigtable = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cadet*, i32)* @cadet_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadet_setfreq(%struct.cadet* %0, i32 %1) #0 {
  %3 = alloca %struct.cadet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cadet* %0, %struct.cadet** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %12 = load %struct.cadet*, %struct.cadet** %3, align 8
  %13 = getelementptr inbounds %struct.cadet, %struct.cadet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bands, align 8
  %19 = load %struct.cadet*, %struct.cadet** %3, align 8
  %20 = getelementptr inbounds %struct.cadet, %struct.cadet* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clamp(i32 %10, i32 %17, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.cadet*, %struct.cadet** %3, align 8
  %28 = getelementptr inbounds %struct.cadet, %struct.cadet* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %5, align 4
  %29 = load %struct.cadet*, %struct.cadet** %3, align 8
  %30 = getelementptr inbounds %struct.cadet, %struct.cadet* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %2
  store i32 102400, i32* %8, align 4
  %34 = load i32, i32* %4, align 4
  %35 = udiv i32 %34, 16
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 10700
  store i32 %37, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %56, %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 14
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %38

59:                                               ; preds = %38
  br label %66

60:                                               ; preds = %2
  %61 = load i32, i32* %4, align 4
  %62 = udiv i32 %61, 16
  %63 = add i32 %62, 450
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, 1048576
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %59
  %67 = load %struct.cadet*, %struct.cadet** %3, align 8
  %68 = getelementptr inbounds %struct.cadet, %struct.cadet* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @outb(i32 7, i64 %69)
  %71 = load %struct.cadet*, %struct.cadet** %3, align 8
  %72 = getelementptr inbounds %struct.cadet, %struct.cadet* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = call i32 @inb(i64 %74)
  store i32 %75, i32* %9, align 4
  store i32 3, i32* %7, align 4
  br label %76

76:                                               ; preds = %118, %66
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %121

79:                                               ; preds = %76
  %80 = load %struct.cadet*, %struct.cadet** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %7, align 4
  %83 = shl i32 %82, 16
  %84 = or i32 %81, %83
  %85 = call i32 @cadet_settune(%struct.cadet* %80, i32 %84)
  %86 = load %struct.cadet*, %struct.cadet** %3, align 8
  %87 = getelementptr inbounds %struct.cadet, %struct.cadet* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @outb(i32 7, i64 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.cadet*, %struct.cadet** %3, align 8
  %92 = getelementptr inbounds %struct.cadet, %struct.cadet* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  %95 = call i32 @outb(i32 %90, i64 %94)
  %96 = call i32 @msleep(i32 100)
  %97 = load %struct.cadet*, %struct.cadet** %3, align 8
  %98 = call i32 @cadet_gettune(%struct.cadet* %97)
  %99 = load %struct.cadet*, %struct.cadet** %3, align 8
  %100 = getelementptr inbounds %struct.cadet, %struct.cadet* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 64
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %79
  %105 = load i64**, i64*** @sigtable, align 8
  %106 = load %struct.cadet*, %struct.cadet** %3, align 8
  %107 = getelementptr inbounds %struct.cadet, %struct.cadet* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i64*, i64** %105, i64 %108
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.cadet*, %struct.cadet** %3, align 8
  %116 = getelementptr inbounds %struct.cadet, %struct.cadet* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  br label %124

117:                                              ; preds = %79
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %7, align 4
  br label %76

121:                                              ; preds = %76
  %122 = load %struct.cadet*, %struct.cadet** %3, align 8
  %123 = getelementptr inbounds %struct.cadet, %struct.cadet* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %104
  %125 = load %struct.cadet*, %struct.cadet** %3, align 8
  %126 = getelementptr inbounds %struct.cadet, %struct.cadet* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @outb(i32 3, i64 %127)
  %129 = load %struct.cadet*, %struct.cadet** %3, align 8
  %130 = getelementptr inbounds %struct.cadet, %struct.cadet* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  %133 = call i32 @inb(i64 %132)
  %134 = and i32 %133, 127
  %135 = load %struct.cadet*, %struct.cadet** %3, align 8
  %136 = getelementptr inbounds %struct.cadet, %struct.cadet* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  %139 = call i32 @outb(i32 %134, i64 %138)
  ret void
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @cadet_settune(%struct.cadet*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cadet_gettune(%struct.cadet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
