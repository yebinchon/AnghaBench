; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pxa2xx-flash.c_pxa2xx_map_inval_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pxa2xx-flash.c_pxa2xx_map_inval_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }

@CACHELINESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i64, i64)* @pxa2xx_map_inval_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa2xx_map_inval_cache(%struct.map_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.map_info*, %struct.map_info** %4, align 8
  %10 = getelementptr inbounds %struct.map_info, %struct.map_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* @CACHELINESIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %27, %3
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c6, 1", "r,~{dirflag},~{fpsr},~{flags}"(i64 %28) #1, !srcloc !2
  %29 = load i32, i32* @CACHELINESIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %23

33:                                               ; preds = %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 524}
