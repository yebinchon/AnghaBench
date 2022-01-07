; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-comp.c_altera_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-comp.c_altera_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATCH_DATA_LENGTH = common dso_local global i64 0, align 8
@CHAR_BITS = common dso_local global i64 0, align 8
@DATA_BLOB_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @altera_shrink(i64* %0, i64 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %14, align 8
  %20 = load i64, i64* @MATCH_DATA_LENGTH, align 8
  store i64 %20, i64* %17, align 8
  %21 = load i64, i64* @CHAR_BITS, align 8
  store i64 %21, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i64, i64* %17, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %17, align 8
  br label %27

27:                                               ; preds = %24, %5
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %36, %27
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %12, align 8
  br label %28

39:                                               ; preds = %28
  store i64 0, i64* %12, align 8
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i64, i64* %12, align 8
  %42 = icmp ult i64 %41, 8
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i64, i64* %14, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* @CHAR_BITS, align 8
  %47 = call i64 @altera_read_packed(i64* %45, i64 %46, i64* %18, i64* %19)
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @CHAR_BITS, align 8
  %50 = mul i64 %48, %49
  %51 = shl i64 %47, %50
  %52 = or i64 %44, %51
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %43
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %40

56:                                               ; preds = %40
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  store i64 0, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  store i64 %61, i64* %6, align 8
  br label %139

62:                                               ; preds = %56
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %136, %62
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %137

67:                                               ; preds = %63
  %68 = load i64*, i64** %7, align 8
  %69 = call i64 @altera_read_packed(i64* %68, i64 1, i64* %18, i64* %19)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  store i64 0, i64* %13, align 8
  br label %72

72:                                               ; preds = %90, %71
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @DATA_BLOB_LENGTH, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* @CHAR_BITS, align 8
  %83 = call i64 @altera_read_packed(i64* %81, i64 %82, i64* %18, i64* %19)
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %80, %76
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %72

93:                                               ; preds = %72
  br label %136

94:                                               ; preds = %67
  %95 = load i64*, i64** %7, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %17, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i64, i64* %17, align 8
  br label %103

101:                                              ; preds = %94
  %102 = load i64, i64* %12, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i64 [ %100, %99 ], [ %102, %101 ]
  %105 = trunc i64 %104 to i32
  %106 = call i64 @altera_bits_req(i32 %105)
  %107 = call i64 @altera_read_packed(i64* %95, i64 %106, i64* %18, i64* %19)
  store i64 %107, i64* %15, align 8
  %108 = load i64*, i64** %7, align 8
  %109 = load i64, i64* @CHAR_BITS, align 8
  %110 = call i64 @altera_read_packed(i64* %108, i64 %109, i64* %18, i64* %19)
  store i64 %110, i64* %16, align 8
  store i64 0, i64* %13, align 8
  br label %111

111:                                              ; preds = %132, %103
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %16, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %111
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %14, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i64*, i64** %9, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %15, align 8
  %123 = sub i64 %121, %122
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = load i64, i64* %12, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %125, i64* %128, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %12, align 8
  br label %131

131:                                              ; preds = %119, %115
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %13, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %13, align 8
  br label %111

135:                                              ; preds = %111
  br label %136

136:                                              ; preds = %135, %93
  br label %63

137:                                              ; preds = %63
  %138 = load i64, i64* %14, align 8
  store i64 %138, i64* %6, align 8
  br label %139

139:                                              ; preds = %137, %60
  %140 = load i64, i64* %6, align 8
  ret i64 %140
}

declare dso_local i64 @altera_read_packed(i64*, i64, i64*, i64*) #1

declare dso_local i64 @altera_bits_req(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
