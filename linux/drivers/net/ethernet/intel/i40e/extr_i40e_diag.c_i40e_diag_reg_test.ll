; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_diag.c_i40e_diag_reg_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_diag.c_i40e_diag_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@i40e_reg_list = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_diag_reg_test(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %142, %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i1 [ false, %8 ], [ %18, %15 ]
  br i1 %20, label %21, label %145

21:                                               ; preds = %19
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @I40E_QTX_CTL(i32 0)
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i64 %39, i64* %43, align 8
  br label %44

44:                                               ; preds = %35, %29, %21
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @I40E_PFINT_ITRN(i32 0, i32 0)
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %84, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @I40E_PFINT_ITRN(i32 1, i32 0)
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %84, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @I40E_PFINT_ITRN(i32 2, i32 0)
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %84, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @I40E_QINT_TQCTL(i32 0)
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @I40E_QINT_RQCTL(i32 0)
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %76, %68, %60, %52, %44
  %85 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %86 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %92 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i64 %95, i64* %99, align 8
  br label %100

100:                                              ; preds = %90, %84, %76
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %106

106:                                              ; preds = %138, %100
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %107, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i64, i64* %3, align 8
  %116 = icmp ne i64 %115, 0
  %117 = xor i1 %116, true
  br label %118

118:                                              ; preds = %114, %106
  %119 = phi i1 [ false, %106 ], [ %117, %114 ]
  br i1 %119, label %120, label %141

120:                                              ; preds = %118
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @i40e_reg_list, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = mul i64 %126, %131
  %133 = add i64 %125, %132
  store i64 %133, i64* %4, align 8
  %134 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* %5, align 8
  %137 = call i64 @i40e_diag_reg_pattern_test(%struct.i40e_hw* %134, i64 %135, i64 %136)
  store i64 %137, i64* %3, align 8
  br label %138

138:                                              ; preds = %120
  %139 = load i64, i64* %7, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %7, align 8
  br label %106

141:                                              ; preds = %118
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %6, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %6, align 8
  br label %8

145:                                              ; preds = %19
  %146 = load i64, i64* %3, align 8
  ret i64 %146
}

declare dso_local i64 @I40E_QTX_CTL(i32) #1

declare dso_local i64 @I40E_PFINT_ITRN(i32, i32) #1

declare dso_local i64 @I40E_QINT_TQCTL(i32) #1

declare dso_local i64 @I40E_QINT_RQCTL(i32) #1

declare dso_local i64 @i40e_diag_reg_pattern_test(%struct.i40e_hw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
