; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_concatenate_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_concatenate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64, i64*, i64, i64, i64*, i64)* @altera_concatenate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_concatenate_data(i64* %0, i64* %1, i64 %2, i64* %3, i64 %4, i64 %5, i64* %6, i64 %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  store i64 %7, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %20

20:                                               ; preds = %57, %8
  %21 = load i64, i64* %17, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %17, align 8
  %27 = ashr i64 %26, 3
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %17, align 8
  %31 = and i64 %30, 7
  %32 = shl i64 1, %31
  %33 = and i64 %29, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load i64, i64* %17, align 8
  %37 = and i64 %36, 7
  %38 = shl i64 1, %37
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %17, align 8
  %41 = ashr i64 %40, 3
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %38
  store i64 %44, i64* %42, align 8
  br label %56

45:                                               ; preds = %24
  %46 = load i64, i64* %17, align 8
  %47 = and i64 %46, 7
  %48 = shl i64 1, %47
  %49 = xor i64 %48, -1
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %17, align 8
  %52 = ashr i64 %51, 3
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, %49
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %45, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %17, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %17, align 8
  br label %20

60:                                               ; preds = %20
  %61 = load i64, i64* %13, align 8
  store i64 %61, i64* %18, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %14, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* %19, align 8
  br label %65

65:                                               ; preds = %102, %60
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %19, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %65
  %70 = load i64*, i64** %12, align 8
  %71 = load i64, i64* %18, align 8
  %72 = ashr i64 %71, 3
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %18, align 8
  %76 = and i64 %75, 7
  %77 = shl i64 1, %76
  %78 = and i64 %74, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %69
  %81 = load i64, i64* %17, align 8
  %82 = and i64 %81, 7
  %83 = shl i64 1, %82
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %17, align 8
  %86 = ashr i64 %85, 3
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = or i64 %88, %83
  store i64 %89, i64* %87, align 8
  br label %101

90:                                               ; preds = %69
  %91 = load i64, i64* %17, align 8
  %92 = and i64 %91, 7
  %93 = shl i64 1, %92
  %94 = xor i64 %93, -1
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %17, align 8
  %97 = ashr i64 %96, 3
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, %94
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %90, %80
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %17, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %17, align 8
  %105 = load i64, i64* %18, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %18, align 8
  br label %65

107:                                              ; preds = %65
  store i64 0, i64* %18, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %14, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i64, i64* %16, align 8
  %112 = add nsw i64 %110, %111
  store i64 %112, i64* %19, align 8
  br label %113

113:                                              ; preds = %150, %107
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %19, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %155

117:                                              ; preds = %113
  %118 = load i64*, i64** %15, align 8
  %119 = load i64, i64* %18, align 8
  %120 = ashr i64 %119, 3
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %18, align 8
  %124 = and i64 %123, 7
  %125 = shl i64 1, %124
  %126 = and i64 %122, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %117
  %129 = load i64, i64* %17, align 8
  %130 = and i64 %129, 7
  %131 = shl i64 1, %130
  %132 = load i64*, i64** %9, align 8
  %133 = load i64, i64* %17, align 8
  %134 = ashr i64 %133, 3
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = or i64 %136, %131
  store i64 %137, i64* %135, align 8
  br label %149

138:                                              ; preds = %117
  %139 = load i64, i64* %17, align 8
  %140 = and i64 %139, 7
  %141 = shl i64 1, %140
  %142 = xor i64 %141, -1
  %143 = load i64*, i64** %9, align 8
  %144 = load i64, i64* %17, align 8
  %145 = ashr i64 %144, 3
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = and i64 %147, %142
  store i64 %148, i64* %146, align 8
  br label %149

149:                                              ; preds = %138, %128
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %17, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %17, align 8
  %153 = load i64, i64* %18, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %18, align 8
  br label %113

155:                                              ; preds = %113
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
