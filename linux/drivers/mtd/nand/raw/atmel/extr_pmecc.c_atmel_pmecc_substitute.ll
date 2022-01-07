; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_substitute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_substitute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_user = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_pmecc_user*)* @atmel_pmecc_substitute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pmecc_substitute(%struct.atmel_pmecc_user* %0) #0 {
  %2 = alloca %struct.atmel_pmecc_user*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atmel_pmecc_user* %0, %struct.atmel_pmecc_user** %2, align 8
  %13 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %14 = call i32 @get_sectorsize(%struct.atmel_pmecc_user* %13)
  %15 = icmp eq i32 %14, 512
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 13, i32 14
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %22 = call i32 @get_strength(%struct.atmel_pmecc_user* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %24 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %29 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  %33 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %34 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  %36 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %2, align 8
  %37 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 2, %41
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(i32* %40, i32 0, i32 %46)
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %91, %1
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 2, %50
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %87, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @BIT(i32 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %58
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %75, %80
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %68, %58
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %54

90:                                               ; preds = %54
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %10, align 4
  br label %48

94:                                               ; preds = %48
  store i32 2, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %95

95:                                               ; preds = %135, %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %139

99:                                               ; preds = %95
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 0, i32* %110, align 4
  br label %134

111:                                              ; preds = %99
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = mul nsw i32 %121, 2
  %123 = load i32, i32* %4, align 4
  %124 = srem i32 %122, %123
  store i32 %124, i32* %12, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %111, %106
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  %138 = shl i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %95

139:                                              ; preds = %95
  ret void
}

declare dso_local i32 @get_sectorsize(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @get_strength(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
