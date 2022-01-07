; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_write_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ctx_ele = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.ice_ctx_ele*)* @ice_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_write_word(i32* %0, i32* %1, %struct.ice_ctx_ele* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ice_ctx_ele*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ice_ctx_ele* %2, %struct.ice_ctx_ele** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.ice_ctx_ele*, %struct.ice_ctx_ele** %6, align 8
  %15 = getelementptr inbounds %struct.ice_ctx_ele, %struct.ice_ctx_ele* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  store i32* %18, i32** %10, align 8
  %19 = load %struct.ice_ctx_ele*, %struct.ice_ctx_ele** %6, align 8
  %20 = getelementptr inbounds %struct.ice_ctx_ele, %struct.ice_ctx_ele* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %21, 8
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ice_ctx_ele*, %struct.ice_ctx_ele** %6, align 8
  %24 = getelementptr inbounds %struct.ice_ctx_ele, %struct.ice_ctx_ele* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.ice_ctx_ele*, %struct.ice_ctx_ele** %6, align 8
  %41 = getelementptr inbounds %struct.ice_ctx_ele, %struct.ice_ctx_ele* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @memcpy(i32* %9, i32* %46, i32 4)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @memcpy(i32* %57, i32* %9, i32 4)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
