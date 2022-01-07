; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_wr_reg_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_wr_reg_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10071_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda10071_dev*, i32, i32, i32)* @tda10071_wr_reg_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_wr_reg_mask(%struct.tda10071_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda10071_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tda10071_dev* %0, %struct.tda10071_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 255
  br i1 %13, label %14, label %35

14:                                               ; preds = %4
  %15 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %16 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @regmap_bulk_read(i32 %17, i32 %18, i32* %11, i32 1)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %41

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %24, %4
  %36 = load %struct.tda10071_dev*, %struct.tda10071_dev** %6, align 8
  %37 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @regmap_bulk_write(i32 %38, i32 %39, i32* %8, i32 1)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %22
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
