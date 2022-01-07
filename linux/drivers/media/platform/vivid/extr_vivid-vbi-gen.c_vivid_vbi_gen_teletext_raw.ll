; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_teletext_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_teletext_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_sliced_vbi_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_sliced_vbi_data*, i32*, i32)* @vivid_vbi_gen_teletext_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_vbi_gen_teletext_raw(%struct.v4l2_sliced_vbi_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [45 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_sliced_vbi_data* %0, %struct.v4l2_sliced_vbi_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 693750, i32* %7, align 4
  %13 = bitcast [45 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 180, i1 false)
  %14 = bitcast i8* %13 to <{ i32, i32, i32, [42 x i32] }>*
  %15 = getelementptr inbounds <{ i32, i32, i32, [42 x i32] }>, <{ i32, i32, i32, [42 x i32] }>* %14, i32 0, i32 0
  store i32 85, i32* %15, align 16
  %16 = getelementptr inbounds <{ i32, i32, i32, [42 x i32] }>, <{ i32, i32, i32, [42 x i32] }>* %14, i32 0, i32 1
  store i32 85, i32* %16, align 4
  %17 = getelementptr inbounds <{ i32, i32, i32, [42 x i32] }>, <{ i32, i32, i32, [42 x i32] }>* %14, i32 0, i32 2
  store i32 39, i32* %17, align 8
  store i32 0, i32* %9, align 4
  %18 = getelementptr inbounds [45 x i32], [45 x i32]* %8, i64 0, i64 0
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32* %19, i32 %22, i32 177)
  %24 = load i32, i32* %6, align 4
  %25 = udiv i32 %24, 10
  store i32 %25, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %60, %3
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %28, 1440
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = mul i32 %32, %33
  %35 = udiv i32 %34, 693750
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = udiv i32 %36, 8
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [45 x i32], [45 x i32]* %8, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 7
  %43 = shl i32 1, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 192, i32 16
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %52, %30
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %58, align 4
  br label %48

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %26

63:                                               ; preds = %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
