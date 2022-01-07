; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"No ACK after %d msec -GPIO I2C failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_read_ack(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i32 10, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %9 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %19 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %4, align 8
  %33 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %34 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %33, i32 %36, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %66, %1
  %42 = call i32 @msleep(i32 2)
  %43 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %44 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 1
  %49 = call i32 @cx231xx_get_gpio_bit(%struct.cx231xx* %43, i32 %46, i32* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %41
  %53 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %54 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %55, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = icmp sgt i32 %64, 0
  br label %66

66:                                               ; preds = %63, %52
  %67 = phi i1 [ false, %52 ], [ %65, %63 ]
  br i1 %67, label %41, label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %75, 10
  %77 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %71, %68
  %79 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %80 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %84 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %83, i32 0, i32 1
  %85 = call i32 @cx231xx_get_gpio_bit(%struct.cx231xx* %79, i32 %82, i32* %84)
  store i32 %85, i32* %3, align 4
  %86 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %90 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 1, %92
  %94 = and i32 %88, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %78
  %97 = load i8*, i8** %4, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %100 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %102 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 1, %104
  %106 = xor i32 %105, -1
  %107 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %108 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 4
  store i32 0, i32* %3, align 4
  br label %125

111:                                              ; preds = %78
  %112 = load i8*, i8** %4, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %115 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %117 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 1, %119
  %121 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %122 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %111, %96
  %126 = load i8*, i8** %4, align 8
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %129 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %131 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 1, %133
  %135 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %136 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %140 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 1, %142
  %144 = xor i32 %143, -1
  %145 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %146 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %150 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %151 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %154 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %149, i32 %152, i32 %155)
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx231xx_get_gpio_bit(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
