; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_hash_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_hash_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hash_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_function(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memcpy(i8* %13, i8* %14, i32 %15)
  %17 = call i32 @nibble_swap_every_byte(i8* %13)
  %18 = call i32 @inverse_every_nibble(i8* %13)
  %19 = getelementptr inbounds i8, i8* %13, i64 5
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = ashr i32 %21, 2
  %23 = and i32 %22, 63
  store i32 %23, i32* %4, align 4
  %24 = getelementptr inbounds i8, i8* %13, i64 5
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 3
  %28 = getelementptr inbounds i8, i8* %13, i64 4
  %29 = load i8, i8* %28, align 4
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 127
  %32 = shl i32 %31, 2
  %33 = or i32 %27, %32
  store i32 %33, i32* %5, align 4
  %34 = getelementptr inbounds i8, i8* %13, i64 4
  %35 = load i8, i8* %34, align 4
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 128
  %38 = ashr i32 %37, 7
  %39 = getelementptr inbounds i8, i8* %13, i64 3
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 1
  %43 = or i32 %38, %42
  store i32 %43, i32* %6, align 4
  %44 = getelementptr inbounds i8, i8* %13, i64 2
  %45 = load i8, i8* %44, align 2
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds i8, i8* %13, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 1
  %52 = shl i32 %51, 8
  %53 = or i32 %47, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 %54, 9
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = xor i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = xor i32 %58, %59
  %61 = or i32 %55, %60
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 2047
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %65)
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @nibble_swap_every_byte(i8*) #2

declare dso_local i32 @inverse_every_nibble(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
