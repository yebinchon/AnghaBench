; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_alloc_vf_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_alloc_vf_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i64, i32, i32, i32, i32, i32, i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@I40E_DEFAULT_QUEUES_PER_VF = common dso_local global i64 0, align 8
@I40E_MAX_VF_QUEUES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"VF %d: Not enough queues to allocate, disabling ADq\0A\00", align 1
@I40E_VIRTCHNL_VF_CAP_PRIVILEGE = common dso_local global i32 0, align 4
@I40E_VF_STATE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*)* @i40e_alloc_vf_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_alloc_vf_res(%struct.i40e_vf* %0) #0 {
  %2 = alloca %struct.i40e_vf*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %7 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %7, i32 0, i32 9
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  store %struct.i40e_pf* %9, %struct.i40e_pf** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %16 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %22 = add nsw i64 %20, %21
  %23 = icmp sle i64 %17, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %29 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %34

30:                                               ; preds = %14, %1
  %31 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %36 = call i32 @i40e_alloc_vsi_res(%struct.i40e_vf* %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %137

40:                                               ; preds = %34
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %42 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %45 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %56 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %100

59:                                               ; preds = %40
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %64 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %65 = sub nsw i64 %63, %64
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %71 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @i40e_alloc_vsi_res(%struct.i40e_vf* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %137

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %68

85:                                               ; preds = %68
  %86 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %99

88:                                               ; preds = %59
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %90 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %94 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_info(i32* %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %98 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %88, %85
  br label %100

100:                                              ; preds = %99, %40
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %111 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %112, %109
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %105, %100
  %115 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %116 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* @I40E_VIRTCHNL_VF_CAP_PRIVILEGE, align 4
  %121 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %122 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %121, i32 0, i32 6
  %123 = call i32 @set_bit(i32 %120, i32* %122)
  br label %129

124:                                              ; preds = %114
  %125 = load i32, i32* @I40E_VIRTCHNL_VF_CAP_PRIVILEGE, align 4
  %126 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %127 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %126, i32 0, i32 6
  %128 = call i32 @clear_bit(i32 %125, i32* %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %132 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %134 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %135 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %134, i32 0, i32 5
  %136 = call i32 @set_bit(i32 %133, i32* %135)
  br label %137

137:                                              ; preds = %129, %80, %39
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %142 = call i32 @i40e_free_vf_res(%struct.i40e_vf* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @i40e_alloc_vsi_res(%struct.i40e_vf*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @i40e_free_vf_res(%struct.i40e_vf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
