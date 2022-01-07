; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_long_regmap_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_long_regmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @mrf24j40_long_regmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_long_regmap_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca [3 x i32], align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.spi_device*
  store %struct.spi_device* %11, %struct.spi_device** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @memcpy(i32* %18, i8* %19, i64 %20)
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 16
  store i32 %24, i32* %22, align 4
  %25 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spi_write(%struct.spi_device* %25, i32* %26, i64 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
