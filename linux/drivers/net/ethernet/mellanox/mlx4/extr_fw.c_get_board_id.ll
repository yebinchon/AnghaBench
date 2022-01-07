; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_get_board_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_get_board_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX4_BOARD_ID_LEN = common dso_local global i32 0, align 4
@VSD_OFFSET_MLX_BOARD_ID = common dso_local global i32 0, align 4
@VSD_OFFSET_SIG1 = common dso_local global i32 0, align 4
@VSD_OFFSET_SIG2 = common dso_local global i32 0, align 4
@VSD_OFFSET_TS_BOARD_ID = common dso_local global i32 0, align 4
@VSD_SIGNATURE_TOPSPIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @get_board_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_board_id(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @MLX4_BOARD_ID_LEN, align 4
  %11 = call i32 @memset(i8* %9, i32 0, i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr i8, i8* %12, i64 0
  %14 = call i64 @be16_to_cpup(i8* %13)
  %15 = icmp eq i64 %14, 1453
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr i8, i8* %17, i64 222
  %19 = call i64 @be16_to_cpup(i8* %18)
  %20 = icmp eq i64 %19, 1453
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr i8, i8* %23, i64 32
  %25 = load i32, i32* @MLX4_BOARD_ID_LEN, align 4
  %26 = call i32 @strlcpy(i8* %22, i8* %24, i32 %25)
  br label %55

27:                                               ; preds = %16, %2
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %51, %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr i8, i8* %34, i64 208
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %35, i64 %38
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @get_unaligned(i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @swab32(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @put_unaligned(i32 %45, i32* %49)
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %30

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54, %21
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @be16_to_cpup(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
