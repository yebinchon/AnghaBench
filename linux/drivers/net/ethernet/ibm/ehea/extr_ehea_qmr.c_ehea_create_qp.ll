; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_qp = type { i32, i32, i32, i32, %struct.ehea_qp_init_attr, i32, i32, %struct.ehea_adapter* }
%struct.ehea_qp_init_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ehea_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ehea_h_alloc_resource_qp failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"can't register for sq ret=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"can't register for rq1 ret=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"can't register for rq2 ret=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"can't register for rq3 ret=%x\0A\00", align 1
@FORCE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ehea_qp* @ehea_create_qp(%struct.ehea_adapter* %0, i32 %1, %struct.ehea_qp_init_attr* %2) #0 {
  %4 = alloca %struct.ehea_qp*, align 8
  %5 = alloca %struct.ehea_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehea_qp_init_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ehea_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ehea_qp_init_attr* %2, %struct.ehea_qp_init_attr** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ehea_qp* @kzalloc(i32 72, i32 %15)
  store %struct.ehea_qp* %16, %struct.ehea_qp** %10, align 8
  %17 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %18 = icmp ne %struct.ehea_qp* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.ehea_qp* null, %struct.ehea_qp** %4, align 8
  br label %177

20:                                               ; preds = %3
  %21 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %22 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %23 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %22, i32 0, i32 7
  store %struct.ehea_adapter* %21, %struct.ehea_adapter** %23, align 8
  %24 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %30 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %29, i32 0, i32 0
  %31 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %32 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %31, i32 0, i32 6
  %33 = call i64 @ehea_h_alloc_resource_qp(i32 %26, %struct.ehea_qp_init_attr* %27, i32 %28, i32* %30, i32* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @H_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %174

39:                                               ; preds = %20
  %40 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %41 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @map_wqe_size(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %45 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @map_wqe_size(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %49 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @map_wqe_size(i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %53 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @map_wqe_size(i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %57 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %58 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %57, i32 0, i32 1
  %59 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %60 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %64 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %67 = call i32 @ehea_qp_alloc_register(%struct.ehea_qp* %56, i32* %58, i32 %61, i32 %62, i32 %65, %struct.ehea_adapter* %66, i32 0)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %39
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %158

73:                                               ; preds = %39
  %74 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %75 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %76 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %75, i32 0, i32 2
  %77 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %78 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %82 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %85 = call i32 @ehea_qp_alloc_register(%struct.ehea_qp* %74, i32* %76, i32 %79, i32 %80, i32 %83, %struct.ehea_adapter* %84, i32 1)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %154

91:                                               ; preds = %73
  %92 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %93 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  %97 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %98 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %99 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %98, i32 0, i32 3
  %100 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %101 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %105 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %108 = call i32 @ehea_qp_alloc_register(%struct.ehea_qp* %97, i32* %99, i32 %102, i32 %103, i32 %106, %struct.ehea_adapter* %107, i32 2)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %96
  %112 = load i32, i32* %8, align 4
  %113 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %150

114:                                              ; preds = %96
  br label %115

115:                                              ; preds = %114, %91
  %116 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %117 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 2
  br i1 %119, label %120, label %139

120:                                              ; preds = %115
  %121 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %122 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %123 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %122, i32 0, i32 5
  %124 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %125 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %129 = getelementptr inbounds %struct.ehea_qp_init_attr, %struct.ehea_qp_init_attr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %132 = call i32 @ehea_qp_alloc_register(%struct.ehea_qp* %121, i32* %123, i32 %126, i32 %127, i32 %130, %struct.ehea_adapter* %131, i32 3)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %120
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %146

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %138, %115
  %140 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %141 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %140, i32 0, i32 4
  %142 = load %struct.ehea_qp_init_attr*, %struct.ehea_qp_init_attr** %7, align 8
  %143 = bitcast %struct.ehea_qp_init_attr* %141 to i8*
  %144 = bitcast %struct.ehea_qp_init_attr* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 4 %144, i64 36, i1 false)
  %145 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  store %struct.ehea_qp* %145, %struct.ehea_qp** %4, align 8
  br label %177

146:                                              ; preds = %135
  %147 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %148 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %147, i32 0, i32 3
  %149 = call i32 @hw_queue_dtor(i32* %148)
  br label %150

150:                                              ; preds = %146, %111
  %151 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %152 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %151, i32 0, i32 2
  %153 = call i32 @hw_queue_dtor(i32* %152)
  br label %154

154:                                              ; preds = %150, %88
  %155 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %156 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %155, i32 0, i32 1
  %157 = call i32 @hw_queue_dtor(i32* %156)
  br label %158

158:                                              ; preds = %154, %70
  %159 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %160 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %163 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @ehea_h_disable_and_get_hea(i32 %161, i32 %164)
  %166 = load %struct.ehea_adapter*, %struct.ehea_adapter** %5, align 8
  %167 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %170 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @FORCE_FREE, align 4
  %173 = call i32 @ehea_h_free_resource(i32 %168, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %158, %37
  %175 = load %struct.ehea_qp*, %struct.ehea_qp** %10, align 8
  %176 = call i32 @kfree(%struct.ehea_qp* %175)
  store %struct.ehea_qp* null, %struct.ehea_qp** %4, align 8
  br label %177

177:                                              ; preds = %174, %139, %19
  %178 = load %struct.ehea_qp*, %struct.ehea_qp** %4, align 8
  ret %struct.ehea_qp* %178
}

declare dso_local %struct.ehea_qp* @kzalloc(i32, i32) #1

declare dso_local i64 @ehea_h_alloc_resource_qp(i32, %struct.ehea_qp_init_attr*, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @map_wqe_size(i32) #1

declare dso_local i32 @ehea_qp_alloc_register(%struct.ehea_qp*, i32*, i32, i32, i32, %struct.ehea_adapter*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hw_queue_dtor(i32*) #1

declare dso_local i32 @ehea_h_disable_and_get_hea(i32, i32) #1

declare dso_local i32 @ehea_h_free_resource(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ehea_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
