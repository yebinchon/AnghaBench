; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_generate_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_generate_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JPU_JPEG_QTBL_LUM_OFFSET = common dso_local global i32 0, align 4
@qtbl_lum = common dso_local global i64* null, align 8
@JPU_JPEG_QTBL_CHR_OFFSET = common dso_local global i32 0, align 4
@qtbl_chr = common dso_local global i64* null, align 8
@JPU_JPEG_HDCTBL_LUM_OFFSET = common dso_local global i32 0, align 4
@hdctbl_lum = common dso_local global i64 0, align 8
@JPU_JPEG_HDCTBL_SIZE = common dso_local global i32 0, align 4
@JPU_JPEG_HACTBL_LUM_OFFSET = common dso_local global i32 0, align 4
@hactbl_lum = common dso_local global i64 0, align 8
@JPU_JPEG_HACTBL_SIZE = common dso_local global i32 0, align 4
@JPU_JPEG_HDCTBL_CHR_OFFSET = common dso_local global i32 0, align 4
@hdctbl_chr = common dso_local global i64 0, align 8
@JPU_JPEG_HACTBL_CHR_OFFSET = common dso_local global i32 0, align 4
@hactbl_chr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i8*)* @jpu_generate_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpu_generate_hdr(i16 zeroext %0, i8* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  store i16 %0, i16* %3, align 2
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i32, i32* @JPU_JPEG_QTBL_LUM_OFFSET, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i64*, i64** @qtbl_lum, align 8
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = call i32 @put_qtbl(i8* %8, i32* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @JPU_JPEG_QTBL_CHR_OFFSET, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i64*, i64** @qtbl_chr, align 8
  %21 = load i16, i16* %3, align 2
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @put_qtbl(i8* %19, i32* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @JPU_JPEG_HDCTBL_LUM_OFFSET, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i64, i64* @hdctbl_lum, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* @JPU_JPEG_HDCTBL_SIZE, align 4
  %34 = call i32 @put_htbl(i8* %30, i32* %32, i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @JPU_JPEG_HACTBL_LUM_OFFSET, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i64, i64* @hactbl_lum, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* @JPU_JPEG_HACTBL_SIZE, align 4
  %42 = call i32 @put_htbl(i8* %38, i32* %40, i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @JPU_JPEG_HDCTBL_CHR_OFFSET, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i64, i64* @hdctbl_chr, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32, i32* @JPU_JPEG_HDCTBL_SIZE, align 4
  %50 = call i32 @put_htbl(i8* %46, i32* %48, i32 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* @JPU_JPEG_HACTBL_CHR_OFFSET, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i64, i64* @hactbl_chr, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* @JPU_JPEG_HACTBL_SIZE, align 4
  %58 = call i32 @put_htbl(i8* %54, i32* %56, i32 %57)
  ret void
}

declare dso_local i32 @put_qtbl(i8*, i32*) #1

declare dso_local i32 @put_htbl(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
