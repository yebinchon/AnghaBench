; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-platform.c_vsc73xx_platform_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-platform.c_vsc73xx_platform_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc73xx = type { %struct.vsc73xx_platform* }
%struct.vsc73xx_platform = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc73xx*, i32, i32, i32, i64)* @vsc73xx_platform_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_platform_write(%struct.vsc73xx* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vsc73xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.vsc73xx_platform*, align 8
  %13 = alloca i64, align 8
  store %struct.vsc73xx* %0, %struct.vsc73xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %15 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %14, i32 0, i32 0
  %16 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %15, align 8
  store %struct.vsc73xx_platform* %16, %struct.vsc73xx_platform** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @vsc73xx_is_addr_valid(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %36

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @vsc73xx_make_addr(i32 %25, i32 %26, i32 %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.vsc73xx_platform*, %struct.vsc73xx_platform** %12, align 8
  %31 = getelementptr inbounds %struct.vsc73xx_platform, %struct.vsc73xx_platform* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %13, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32be(i64 %29, i64 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %24, %21
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @vsc73xx_is_addr_valid(i32, i32) #1

declare dso_local i64 @vsc73xx_make_addr(i32, i32, i32) #1

declare dso_local i32 @iowrite32be(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
