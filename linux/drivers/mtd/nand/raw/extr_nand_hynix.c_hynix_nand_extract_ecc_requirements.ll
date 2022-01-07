; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_extract_ecc_requirements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_extract_ecc_requirements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"Invalid ECC requirements\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @hynix_nand_extract_ecc_requirements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hynix_nand_extract_ecc_requirements(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 4
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 4
  %14 = and i32 %13, 7
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %2
  %18 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 1024, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %62 [
    i32 0, label %23
    i32 1, label %32
    i32 2, label %37
    i32 3, label %42
    i32 4, label %47
    i32 5, label %52
    i32 6, label %57
  ]

23:                                               ; preds = %17
  %24 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %64

32:                                               ; preds = %17
  %33 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 4, i32* %36, align 4
  br label %64

37:                                               ; preds = %17
  %38 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 24, i32* %41, align 4
  br label %64

42:                                               ; preds = %17
  %43 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 32, i32* %46, align 4
  br label %64

47:                                               ; preds = %17
  %48 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 40, i32* %51, align 4
  br label %64

52:                                               ; preds = %17
  %53 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 50, i32* %56, align 4
  br label %64

57:                                               ; preds = %17
  %58 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 60, i32* %61, align 4
  br label %64

62:                                               ; preds = %17
  %63 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57, %52, %47, %42, %37, %32, %23
  br label %157

65:                                               ; preds = %2
  %66 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 7
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %114

75:                                               ; preds = %65
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 5
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 512, i32* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 1, %83
  %85 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  br label %113

89:                                               ; preds = %75
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 7
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 5
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %97 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 2048, i32* %99, align 8
  br label %105

100:                                              ; preds = %92
  %101 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %102 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 1024, i32* %104, align 8
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i32 24, i32* %109, align 4
  br label %112

110:                                              ; preds = %89
  %111 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  br label %113

113:                                              ; preds = %112, %78
  br label %156

114:                                              ; preds = %65
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  %118 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %119 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  %122 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %123 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  br label %155

126:                                              ; preds = %114
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %127, 5
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %131 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i32 512, i32* %133, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sub nsw i32 %134, 1
  %136 = shl i32 1, %135
  %137 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %138 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i32 %136, i32* %140, align 4
  br label %154

141:                                              ; preds = %126
  %142 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %143 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  store i32 1024, i32* %145, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sub nsw i32 %146, 5
  %148 = mul nsw i32 8, %147
  %149 = add nsw i32 24, %148
  %150 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %151 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 4
  br label %154

154:                                              ; preds = %141, %129
  br label %155

155:                                              ; preds = %154, %117
  br label %156

156:                                              ; preds = %155, %113
  br label %157

157:                                              ; preds = %156, %64
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
