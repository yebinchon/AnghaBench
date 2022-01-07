; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_atp.h_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_atp.h_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOC = common dso_local global i8 0, align 1
@PAR_DATA = common dso_local global i64 0, align 8
@WrAddr = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8, i8)* @write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_reg(i16 signext %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i16 %0, i16* %4, align 2
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load i8, i8* @EOC, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = trunc i32 %12 to i8
  %14 = load i16, i16* %4, align 2
  %15 = sext i16 %14 to i64
  %16 = load i64, i64* @PAR_DATA, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i8 zeroext %13, i64 %17)
  %19 = load i8, i8* @WrAddr, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %7, align 1
  %25 = load i8, i8* %7, align 1
  %26 = load i16, i16* %4, align 2
  %27 = sext i16 %26 to i64
  %28 = load i64, i64* @PAR_DATA, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i8 zeroext %25, i64 %29)
  %31 = load i8, i8* %7, align 1
  %32 = load i16, i16* %4, align 2
  %33 = sext i16 %32 to i64
  %34 = load i64, i64* @PAR_DATA, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i8 zeroext %31, i64 %35)
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 240
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %7, align 1
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %7, align 1
  %47 = load i8, i8* %7, align 1
  %48 = load i16, i16* %4, align 2
  %49 = sext i16 %48 to i64
  %50 = load i64, i64* @PAR_DATA, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i8 zeroext %47, i64 %51)
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 31
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  %57 = load i8, i8* %7, align 1
  %58 = load i16, i16* %4, align 2
  %59 = sext i16 %58 to i64
  %60 = load i64, i64* @PAR_DATA, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i8 zeroext %57, i64 %61)
  %63 = load i8, i8* %7, align 1
  %64 = load i16, i16* %4, align 2
  %65 = sext i16 %64 to i64
  %66 = load i64, i64* @PAR_DATA, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i8 zeroext %63, i64 %67)
  %69 = load i8, i8* @EOC, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %70, %72
  %74 = trunc i32 %73 to i8
  %75 = load i16, i16* %4, align 2
  %76 = sext i16 %75 to i64
  %77 = load i64, i64* @PAR_DATA, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outb(i8 zeroext %74, i64 %78)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
