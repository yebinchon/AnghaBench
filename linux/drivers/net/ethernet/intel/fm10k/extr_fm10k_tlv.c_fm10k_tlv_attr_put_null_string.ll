; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_attr_put_null_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_attr_put_null_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_TLV_LEN_SHIFT = common dso_local global i32 0, align 4
@FM10K_TLV_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @fm10k_tlv_attr_put_null_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_tlv_attr_put_null_string(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %17, i32* %4, align 4
  br label %83

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @FM10K_TLV_DWORD_LEN(i32 %21)
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32* %23, i32** %10, align 8
  br label %24

24:                                               ; preds = %50, %18
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = srem i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sdiv i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32 %32, i32* %37, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %31, %27, %24
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = srem i32 %42, 4
  %44 = mul nsw i32 8, %43
  %45 = shl i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  %53 = load i8, i8* %51, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %24, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 3
  %60 = sdiv i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* @FM10K_TLV_LEN_SHIFT, align 4
  %64 = load i32, i32* %9, align 4
  %65 = shl i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %66, %67
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @FM10K_TLV_HDR_LEN, align 4
  %72 = load i32, i32* @FM10K_TLV_LEN_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @FM10K_TLV_LEN_ALIGN(i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %77
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %55, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @FM10K_TLV_DWORD_LEN(i32) #1

declare dso_local i64 @FM10K_TLV_LEN_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
