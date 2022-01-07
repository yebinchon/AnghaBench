; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_7k_common.c_qcafrm_fsm_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_7k_common.c_qcafrm_fsm_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcafrm_handle = type { i32, i32, i32 }

@QCAFRM_GATHER = common dso_local global i64 0, align 8
@QCAFRM_NOHEAD = common dso_local global i64 0, align 8
@QCAFRM_MIN_LEN = common dso_local global i32 0, align 4
@QCAFRM_INVLEN = common dso_local global i64 0, align 8
@QCAFRM_NOTAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qcafrm_fsm_decode(%struct.qcafrm_handle* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qcafrm_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qcafrm_handle* %0, %struct.qcafrm_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @QCAFRM_GATHER, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %13 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %96 [
    i32 141, label %15
    i32 140, label %15
    i32 139, label %29
    i32 138, label %29
    i32 135, label %34
    i32 134, label %34
    i32 133, label %34
    i32 132, label %34
    i32 131, label %50
    i32 130, label %56
    i32 129, label %67
    i32 128, label %70
    i32 137, label %112
    i32 136, label %126
  ]

15:                                               ; preds = %4, %4
  %16 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %17 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %24 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %27 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %15
  br label %147

29:                                               ; preds = %4, %4
  %30 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %31 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  br label %147

34:                                               ; preds = %4, %4, %4, %4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 170
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64, i64* @QCAFRM_NOHEAD, align 8
  store i64 %38, i64* %9, align 8
  %39 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %40 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %43 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %46 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %37
  br label %147

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %53 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %55 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %54, i32 0, i32 0
  store i32 130, i32* %55, align 4
  br label %147

56:                                               ; preds = %4
  %57 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %58 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %59, %61
  %63 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %64 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %66 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %65, i32 0, i32 0
  store i32 129, i32* %66, align 4
  br label %147

67:                                               ; preds = %4
  %68 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %69 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %68, i32 0, i32 0
  store i32 128, i32* %69, align 4
  br label %147

70:                                               ; preds = %4
  %71 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %72 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @QCAFRM_MIN_LEN, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77, %70
  %82 = load i64, i64* @QCAFRM_INVLEN, align 8
  store i64 %82, i64* %9, align 8
  %83 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %84 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %87 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %95

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %92 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %94 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %93, i32 0, i32 2
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %81
  br label %147

96:                                               ; preds = %4
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %100 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %105 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %109 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 4
  br label %147

112:                                              ; preds = %4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 85
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i64, i64* @QCAFRM_NOTAIL, align 8
  store i64 %116, i64* %9, align 8
  %117 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %118 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %121 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %125

122:                                              ; preds = %112
  %123 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %124 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %123, i32 0, i32 0
  store i32 136, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %115
  br label %147

126:                                              ; preds = %4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 85
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i64, i64* @QCAFRM_NOTAIL, align 8
  store i64 %130, i64* %9, align 8
  %131 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %132 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %135 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  br label %146

136:                                              ; preds = %126
  %137 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %138 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %9, align 8
  %141 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %142 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.qcafrm_handle*, %struct.qcafrm_handle** %5, align 8
  %145 = getelementptr inbounds %struct.qcafrm_handle, %struct.qcafrm_handle* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %136, %129
  br label %147

147:                                              ; preds = %146, %125, %96, %95, %67, %56, %50, %49, %29, %28
  %148 = load i64, i64* %9, align 8
  ret i64 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
