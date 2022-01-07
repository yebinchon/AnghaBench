; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_motion_regions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_go7007_motion_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32*, i32, i64* }
%struct.go7007_buffer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.go7007*, %struct.go7007_buffer*)* @go7007_motion_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @go7007_motion_regions(%struct.go7007* %0, %struct.go7007_buffer* %1) #0 {
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.go7007_buffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  store %struct.go7007_buffer* %1, %struct.go7007_buffer** %4, align 8
  %12 = load %struct.go7007_buffer*, %struct.go7007_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.go7007_buffer, %struct.go7007_buffer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* %18, i32** %5, align 8
  %19 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  %20 = load %struct.go7007*, %struct.go7007** %3, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 7
  %24 = ashr i32 %23, 3
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %38, %2
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 216
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.go7007_buffer*, %struct.go7007_buffer** %4, align 8
  %30 = load %struct.go7007*, %struct.go7007** %3, align 8
  %31 = getelementptr inbounds %struct.go7007, %struct.go7007* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @store_byte(%struct.go7007_buffer* %29, i32 %36)
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %25

41:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %98, %41
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.go7007*, %struct.go7007** %3, align 8
  %45 = getelementptr inbounds %struct.go7007, %struct.go7007* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 16
  %48 = icmp ult i32 %43, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %94, %49
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.go7007*, %struct.go7007** %3, align 8
  %53 = getelementptr inbounds %struct.go7007, %struct.go7007* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 16
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %50
  %58 = load %struct.go7007*, %struct.go7007** %3, align 8
  %59 = getelementptr inbounds %struct.go7007, %struct.go7007* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = mul i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = lshr i32 %64, 3
  %66 = add i32 %63, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %60, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 7
  %72 = shl i32 1, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %57
  br label %94

76:                                               ; preds = %57
  %77 = load %struct.go7007*, %struct.go7007** %3, align 8
  %78 = getelementptr inbounds %struct.go7007, %struct.go7007* %77, i32 0, i32 3
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.go7007*, %struct.go7007** %3, align 8
  %82 = getelementptr inbounds %struct.go7007, %struct.go7007* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 16
  %85 = mul i32 %80, %84
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %79, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %76, %75
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %50

97:                                               ; preds = %50
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %42

101:                                              ; preds = %42
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = icmp ugt i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = shl i32 %105, 0
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ugt i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = shl i32 %110, 1
  %112 = or i32 %106, %111
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ugt i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = shl i32 %116, 2
  %118 = or i32 %112, %117
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp ugt i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = shl i32 %122, 3
  %124 = or i32 %118, %123
  store i32 %124, i32* %7, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 216
  store i32 %127, i32* %125, align 4
  %128 = load %struct.go7007*, %struct.go7007** %3, align 8
  %129 = load %struct.go7007_buffer*, %struct.go7007_buffer** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @go7007_set_motion_regions(%struct.go7007* %128, %struct.go7007_buffer* %129, i32 %130)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @store_byte(%struct.go7007_buffer*, i32) #2

declare dso_local i32 @go7007_set_motion_regions(%struct.go7007*, %struct.go7007_buffer*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
