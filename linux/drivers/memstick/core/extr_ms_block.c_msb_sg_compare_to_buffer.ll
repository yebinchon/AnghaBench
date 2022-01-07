; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_sg_compare_to_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_sg_compare_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.sg_mapping_iter = type { i64, i64 }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i64, i32*, i64)* @msb_sg_compare_to_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_sg_compare_to_buffer(%struct.scatterlist* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sg_mapping_iter, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %13 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %14 = call i32 @sg_nents(%struct.scatterlist* %13)
  %15 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %16 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %11, %struct.scatterlist* %12, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %57, %32, %4
  %20 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %8, align 8
  %24 = icmp ugt i64 %23, 0
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %66

27:                                               ; preds = %25
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %19

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %39, %40
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @min(i64 %41, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %11, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %45, %46
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @memcmp(i64 %47, i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 -1, i32 0
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  br label %66

57:                                               ; preds = %37
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %19

66:                                               ; preds = %56, %25
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 -1, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %69, %66
  %74 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %11)
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i64 @memcmp(i64, i32*, i32) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
