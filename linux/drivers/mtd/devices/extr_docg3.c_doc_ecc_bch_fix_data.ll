; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_ecc_bch_fix_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_ecc_bch_fix_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DOC_ECC_BCH_SIZE = common dso_local global i32 0, align 4
@DOC_ECC_BCH_T = common dso_local global i32 0, align 4
@DOC_ECC_BCH_COVERED_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"doc_ecc_bch_fix_data: flipped %d bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*, i8*, i32*)* @doc_ecc_bch_fix_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_ecc_bch_fix_data(%struct.docg3* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.docg3*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @DOC_ECC_BCH_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @DOC_ECC_BCH_T, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %33, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @DOC_ECC_BCH_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bitrev8(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %15, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %19

36:                                               ; preds = %19
  %37 = load %struct.docg3*, %struct.docg3** %4, align 8
  %38 = getelementptr inbounds %struct.docg3, %struct.docg3* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DOC_ECC_BCH_COVERED_BYTES, align 4
  %43 = call i32 @decode_bch(i32 %41, i32* null, i32 %42, i32* null, i32* %15, i32* null, i32* %18)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %102

53:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %74, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %18, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %18, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 7
  %69 = sub nsw i32 7, %68
  %70 = or i32 %63, %69
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %18, i64 %72
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %54

77:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %98, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %18, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DOC_ECC_BCH_COVERED_BYTES, align 4
  %88 = mul nsw i32 %87, 8
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %18, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @change_bit(i32 %94, i8* %95)
  br label %97

97:                                               ; preds = %90, %82
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %78

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101, %52
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @doc_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %106)
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bitrev8(i32) #2

declare dso_local i32 @decode_bch(i32, i32*, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @change_bit(i32, i8*) #2

declare dso_local i32 @doc_dbg(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
