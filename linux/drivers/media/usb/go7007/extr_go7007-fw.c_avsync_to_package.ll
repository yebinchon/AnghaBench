; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_avsync_to_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_avsync_to_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32*, i32)* @avsync_to_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avsync_to_package(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [32 x i32], align 16
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.go7007*, %struct.go7007** %4, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 1001
  %20 = load %struct.go7007*, %struct.go7007** %4, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.go7007*, %struct.go7007** %4, align 8
  %26 = getelementptr inbounds %struct.go7007, %struct.go7007* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %24, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 215
  %31 = sdiv i32 %30, 100
  store i32 %31, i32* %9, align 4
  %32 = load %struct.go7007*, %struct.go7007** %4, align 8
  %33 = getelementptr inbounds %struct.go7007, %struct.go7007* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.go7007*, %struct.go7007** %4, align 8
  %37 = getelementptr inbounds %struct.go7007, %struct.go7007* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %35, %38
  %40 = call i32 @relative_prime(i32 %34, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.go7007*, %struct.go7007** %4, align 8
  %43 = getelementptr inbounds %struct.go7007, %struct.go7007* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = srem i32 %41, %44
  %46 = load i32, i32* %10, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.go7007*, %struct.go7007** %4, align 8
  %49 = getelementptr inbounds %struct.go7007, %struct.go7007* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.go7007*, %struct.go7007** %4, align 8
  %53 = getelementptr inbounds %struct.go7007, %struct.go7007* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %51, %54
  %56 = sub nsw i32 %50, %55
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  store i32 8206, i32* %59, align 4
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 49048, i32* %61, align 4
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 0, %63
  %65 = and i32 %64, 65535
  store i32 %65, i32* %62, align 4
  %66 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 49049, i32* %66, align 4
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 0, %68
  %70 = ashr i32 %69, 16
  store i32 %70, i32* %67, align 4
  %71 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 49042, i32* %71, align 4
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 49043, i32* %73, align 4
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 49140, i32* %75, align 4
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %3
  %81 = load i32, i32* %11, align 4
  br label %84

82:                                               ; preds = %3
  %83 = load i32, i32* %12, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %76, align 4
  %86 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 49141, i32* %86, align 4
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  br label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %12, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  store i32 %96, i32* %87, align 4
  %97 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 49142, i32* %97, align 4
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %8, align 4
  br label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  br label %107

107:                                              ; preds = %104, %102
  %108 = phi i32 [ %103, %102 ], [ %106, %104 ]
  store i32 %108, i32* %98, align 4
  %109 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 49143, i32* %109, align 4
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %8, align 4
  br label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi i32 [ %115, %114 ], [ %118, %116 ]
  store i32 %120, i32* %110, align 4
  %121 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 49144, i32* %121, align 4
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 49145, i32* %123, align 4
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 49146, i32* %125, align 4
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, 65535
  store i32 %128, i32* %126, align 4
  %129 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 49147, i32* %129, align 4
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %9, align 4
  %132 = ashr i32 %131, 16
  store i32 %132, i32* %130, align 4
  %133 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 49044, i32* %133, align 4
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 49045, i32* %135, align 4
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 0, i32* %136, align 4
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 0, i32* %138, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 0
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @copy_packages(i32* %139, i32* %140, i32 1, i32 %141)
  ret i32 %142
}

declare dso_local i32 @relative_prime(i32, i32) #1

declare dso_local i32 @copy_packages(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
