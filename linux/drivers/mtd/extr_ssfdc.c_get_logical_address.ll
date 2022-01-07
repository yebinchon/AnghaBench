; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_get_logical_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_get_logical_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.get_logical_address.offset = private unnamed_addr constant [2 x i32] [i32 6, i32 11], align 4
@.str = private unnamed_addr constant [55 x i8] c"SSFDC_RO: logical address field%dparity error(0x%04X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"SSFDC_RO: get_logical_address() %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_logical_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_logical_address(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([2 x i32]* @__const.get_logical_address.offset to i8*), i64 8, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %56, %1
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %9
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %24, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %23, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, -2048
  %36 = icmp eq i32 %35, 4096
  br i1 %36, label %37, label %55

37:                                               ; preds = %14
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 1
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 2047
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @get_parity(i32 %44, i32 10)
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %54

53:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %59

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %14
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %9

59:                                               ; preds = %53, %9
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 -2, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @get_parity(i32, i32) #2

declare dso_local i32 @pr_debug(i8*, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
