; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_rdma_qp = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"QP(0x%x) %s --> %s%s\0A\00", align 1
@iwarp_state_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iwarp_modify_qp(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_rdma_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %20 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  store i32 0, i32* %5, align 4
  br label %119

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %81 [
    i32 130, label %34
    i32 129, label %48
    i32 131, label %66
    i32 128, label %77
    i32 132, label %77
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %46 [
    i32 129, label %36
    i32 131, label %39
  ]

36:                                               ; preds = %34
  %37 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %38 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %37, i32 0, i32 0
  store i32 129, i32* %38, align 4
  br label %47

39:                                               ; preds = %34
  %40 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %41 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %40, i32 0, i32 0
  store i32 131, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %39
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %45, %36
  br label %82

48:                                               ; preds = %32
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %64 [
    i32 132, label %50
    i32 131, label %57
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %56 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %55, i32 0, i32 0
  store i32 132, i32* %56, align 4
  br label %65

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %63 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %62, i32 0, i32 0
  store i32 131, i32* %63, align 4
  br label %65

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %61, %54
  br label %82

66:                                               ; preds = %32
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %73 [
    i32 130, label %68
    i32 132, label %72
  ]

68:                                               ; preds = %66
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %71 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %76

72:                                               ; preds = %66
  br label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %73, %72, %68
  br label %82

77:                                               ; preds = %32, %32
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %80 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %82

81:                                               ; preds = %32
  br label %82

82:                                               ; preds = %81, %77, %76, %65, %47
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %84 = load i32, i32* @QED_MSG_RDMA, align 4
  %85 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %86 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @iwarp_state_names, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** @iwarp_state_names, align 8
  %94 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %95 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %104 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %83, i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %92, i32 %99, i8* %103)
  %105 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %106 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock_bh(i32* %109)
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %82
  %114 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %115 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %7, align 8
  %116 = call i32 @qed_iwarp_modify_fw(%struct.qed_hwfn* %114, %struct.qed_rdma_qp* %115)
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %113, %82
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %25
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @qed_iwarp_modify_fw(%struct.qed_hwfn*, %struct.qed_rdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
