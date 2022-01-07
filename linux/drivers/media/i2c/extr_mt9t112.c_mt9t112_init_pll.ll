; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_init_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_init_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9t112_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9t112_init_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_init_pll(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.mt9t112_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call %struct.mt9t112_priv* @to_mt9t112(%struct.i2c_client* %7)
  store %struct.mt9t112_priv* %8, %struct.mt9t112_priv** %3, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = call i32 @mt9t112_reg_mask_set(i32 %9, %struct.i2c_client* %10, i32 20, i32 3, i32 1)
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = call i32 @mt9t112_reg_write(i32 %12, %struct.i2c_client* %13, i32 20, i32 8517)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %3, align 8
  %35 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %3, align 8
  %41 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %3, align 8
  %47 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %3, align 8
  %53 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %3, align 8
  %65 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mt9t112_set_pll_dividers(%struct.i2c_client* %15, i32 %21, i32 %27, i32 %33, i32 %39, i32 %45, i32 %51, i32 %57, i32 %63, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %73 = call i32 @mt9t112_reg_write(i32 %71, %struct.i2c_client* %72, i32 20, i32 9509)
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %76 = call i32 @mt9t112_reg_write(i32 %74, %struct.i2c_client* %75, i32 20, i32 9511)
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %79 = call i32 @mt9t112_reg_write(i32 %77, %struct.i2c_client* %78, i32 20, i32 13351)
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %82 = call i32 @mt9t112_reg_write(i32 %80, %struct.i2c_client* %81, i32 20, i32 12327)
  %83 = call i32 @mdelay(i32 10)
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %86 = call i32 @mt9t112_reg_write(i32 %84, %struct.i2c_client* %85, i32 20, i32 12358)
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %89 = call i32 @mt9t112_reg_write(i32 %87, %struct.i2c_client* %88, i32 22, i32 1024)
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %92 = call i32 @mt9t112_reg_write(i32 %90, %struct.i2c_client* %91, i32 34, i32 400)
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %95 = call i32 @mt9t112_reg_write(i32 %93, %struct.i2c_client* %94, i32 15236, i32 530)
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %98 = call i32 @mt9t112_reg_write(i32 %96, %struct.i2c_client* %97, i32 46, i32 1280)
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %101 = call i32 @mt9t112_reg_mask_set(i32 %99, %struct.i2c_client* %100, i32 24, i32 2, i32 2)
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %104 = call i32 @mt9t112_reg_mask_set(i32 %102, %struct.i2c_client* %103, i32 15234, i32 4, i32 4)
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %107 = call i32 @mt9t112_reg_mask_set(i32 %105, %struct.i2c_client* %106, i32 24, i32 4, i32 4)
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %110 = call i32 @mt9t112_reg_mask_set(i32 %108, %struct.i2c_client* %109, i32 24, i32 1, i32 0)
  %111 = call i32 @mdelay(i32 50)
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %114 = call i32 @mt9t112_reg_write(i32 %112, %struct.i2c_client* %113, i32 1556, i32 1)
  %115 = call i32 @mdelay(i32 1)
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %118 = call i32 @mt9t112_reg_write(i32 %116, %struct.i2c_client* %117, i32 1556, i32 1)
  %119 = call i32 @mdelay(i32 1)
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %122 = call i32 @mt9t112_reg_write(i32 %120, %struct.i2c_client* %121, i32 1556, i32 1)
  %123 = call i32 @mdelay(i32 1)
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %126 = call i32 @mt9t112_reg_write(i32 %124, %struct.i2c_client* %125, i32 1556, i32 1)
  %127 = call i32 @mdelay(i32 1)
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %130 = call i32 @mt9t112_reg_write(i32 %128, %struct.i2c_client* %129, i32 1556, i32 1)
  %131 = call i32 @mdelay(i32 1)
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %134 = call i32 @mt9t112_reg_write(i32 %132, %struct.i2c_client* %133, i32 1556, i32 1)
  %135 = call i32 @mdelay(i32 1)
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %149, %1
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 100
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %142 = call i32 @mt9t112_reg_read(i32 %140, %struct.i2c_client* %141, i32 24)
  %143 = load i32, i32* %4, align 4
  %144 = and i32 %143, 16384
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  br label %152

147:                                              ; preds = %139
  %148 = call i32 @mdelay(i32 10)
  br label %149

149:                                              ; preds = %147
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %136

152:                                              ; preds = %146, %136
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local %struct.mt9t112_priv* @to_mt9t112(%struct.i2c_client*) #1

declare dso_local i32 @mt9t112_reg_mask_set(i32, %struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @mt9t112_reg_write(i32, %struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mt9t112_set_pll_dividers(%struct.i2c_client*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mt9t112_reg_read(i32, %struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
