; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_wss_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_wss_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_sliced_vbi_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_sliced_vbi_data*, i32*, i32)* @vivid_vbi_gen_wss_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_vbi_gen_wss_raw(%struct.v4l2_sliced_vbi_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [137 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_sliced_vbi_data* %0, %struct.v4l2_sliced_vbi_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 5000000, i32* %7, align 4
  %15 = bitcast [137 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 548, i1 false)
  store i32 7, i32* %9, align 4
  store i32 56, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = getelementptr inbounds [137 x i32], [137 x i32]* %8, i64 0, i64 0
  %17 = load i32, i32* %11, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @wss_insert(i32* %19, i32 521957831, i32 29)
  %21 = load i32, i32* %11, align 4
  %22 = add i32 %21, 29
  store i32 %22, i32* %11, align 4
  %23 = getelementptr inbounds [137 x i32], [137 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @wss_insert(i32* %26, i32 1981471, i32 24)
  %28 = load i32, i32* %11, align 4
  %29 = add i32 %28, 24
  store i32 %29, i32* %11, align 4
  %30 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %35, %40
  store i32 %41, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %58, %3
  %43 = load i32, i32* %13, align 4
  %44 = icmp sle i32 %43, 13
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = getelementptr inbounds [137 x i32], [137 x i32]* %8, i64 0, i64 0
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 56, i32 7
  %57 = call i32 @wss_insert(i32* %49, i32 %56, i32 6)
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, 6
  store i32 %62, i32* %11, align 4
  br label %42

63:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %89, %63
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp ult i64 %66, 548
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  %71 = load i32, i32* %6, align 4
  %72 = mul i32 %70, %71
  %73 = udiv i32 %72, 5000000
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %78, %68
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [137 x i32], [137 x i32]* %8, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  br label %74

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %64

92:                                               ; preds = %64
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wss_insert(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
