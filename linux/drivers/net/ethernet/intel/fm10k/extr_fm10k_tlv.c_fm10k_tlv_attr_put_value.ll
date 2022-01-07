; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_attr_put_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_tlv.c_fm10k_tlv_attr_put_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_TLV_LEN_SHIFT = common dso_local global i32 0, align 4
@FM10K_TLV_HDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_tlv_attr_put_value(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 8
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %16, %13, %4
  %26 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %26, i32* %5, align 4
  br label %77

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @FM10K_TLV_DWORD_LEN(i32 %30)
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32* %32, i32** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 8, %37
  %39 = call i32 @BIT(i32 %38)
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %36, %40
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  br label %56

44:                                               ; preds = %27
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 4
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 32
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %44
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* @FM10K_TLV_LEN_SHIFT, align 4
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %60, %61
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @FM10K_TLV_HDR_LEN, align 4
  %66 = load i32, i32* @FM10K_TLV_LEN_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @FM10K_TLV_LEN_ALIGN(i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %71
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %56, %25
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @FM10K_TLV_DWORD_LEN(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @FM10K_TLV_LEN_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
