; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_eeprom_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_eeprom_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @slic_eeprom_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_eeprom_csum(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %12, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @memcpy(i32* %7, i8* %13, i32 4)
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @le16_to_cpu(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %22, i8** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %23, 2
  store i32 %24, i32* %4, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load i32, i32* %4, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %28, %25
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 16
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 65535
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %6, align 4
  br label %37

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = xor i32 %49, -1
  ret i32 %50
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
