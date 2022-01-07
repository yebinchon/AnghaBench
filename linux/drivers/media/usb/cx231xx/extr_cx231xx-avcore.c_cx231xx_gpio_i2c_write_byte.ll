; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_write_byte(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %162, %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %165

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %29, %30
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %98

34:                                               ; preds = %28
  %35 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %36 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %56 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %55, i32 %58, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %73 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %74 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %77 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %72, i32 %75, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 1, %83
  %85 = xor i32 %84, -1
  %86 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %91 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %92 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %90, i32 %93, i32 %96)
  store i32 %97, i32* %5, align 4
  br label %161

98:                                               ; preds = %28
  %99 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %100 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 1, %102
  %104 = xor i32 %103, -1
  %105 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %106 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %110 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 1, %112
  %114 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %115 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %119 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %120 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %123 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %118, i32 %121, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %127 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 1, %129
  %131 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %132 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %136 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %137 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %140 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %135, i32 %138, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %144 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 1, %146
  %148 = xor i32 %147, -1
  %149 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %150 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %154 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %155 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %158 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %153, i32 %156, i32 %159)
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %98, %34
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %25

165:                                              ; preds = %25
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
