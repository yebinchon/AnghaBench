; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_setup_qvlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_setup_qvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { %struct.TYPE_4__*, %struct.i40e_pf* }
%struct.TYPE_4__ = type { i64, %struct.i40e_qv_info* }
%struct.i40e_qv_info = type { i64, i64, i64, i64 }
%struct.i40e_pf = type { i64, i64, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.i40e_client = type { i32 }
%struct.i40e_qvlist_info = type { i64, %struct.i40e_qv_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I40E_QUEUE_INVALID_IDX = common dso_local global i64 0, align 8
@I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK = common dso_local global i64 0, align 8
@I40E_QUEUE_TYPE_PE_CEQ = common dso_local global i64 0, align 8
@I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT = common dso_local global i64 0, align 8
@I40E_PFINT_CEQCTL_CAUSE_ENA_MASK = common dso_local global i64 0, align 8
@I40E_PFINT_CEQCTL_MSIX_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_PFINT_CEQCTL_ITR_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_QUEUE_END_OF_LIST = common dso_local global i64 0, align 8
@I40E_PFINT_CEQCTL_NEXTQ_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_PFINT_AEQCTL_CAUSE_ENA_MASK = common dso_local global i64 0, align 8
@I40E_PFINT_AEQCTL_MSIX_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_PFINT_AEQCTL_ITR_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_PFINT_AEQCTL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_info*, %struct.i40e_client*, %struct.i40e_qvlist_info*)* @i40e_client_setup_qvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_client_setup_qvlist(%struct.i40e_info* %0, %struct.i40e_client* %1, %struct.i40e_qvlist_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_info*, align 8
  %6 = alloca %struct.i40e_client*, align 8
  %7 = alloca %struct.i40e_qvlist_info*, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca %struct.i40e_qv_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.i40e_info* %0, %struct.i40e_info** %5, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %6, align 8
  store %struct.i40e_qvlist_info* %2, %struct.i40e_qvlist_info** %7, align 8
  %15 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %16 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %15, i32 0, i32 1
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %8, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 2
  store %struct.i40e_hw* %19, %struct.i40e_hw** %9, align 8
  %20 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %21 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %24 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %7, align 8
  %25 = getelementptr inbounds %struct.i40e_qvlist_info, %struct.i40e_qvlist_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %26, 1
  %28 = call i32 @struct_size(%struct.TYPE_4__* %22, %struct.i40e_qv_info* %23, i64 %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.TYPE_4__* @kzalloc(i32 %28, i32 %29)
  %31 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %31, i32 0, i32 0
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %32, align 8
  %33 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %181

40:                                               ; preds = %3
  %41 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %7, align 8
  %42 = getelementptr inbounds %struct.i40e_qvlist_info, %struct.i40e_qvlist_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %45 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %166, %40
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %7, align 8
  %51 = getelementptr inbounds %struct.i40e_qvlist_info, %struct.i40e_qvlist_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %169

54:                                               ; preds = %48
  %55 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %7, align 8
  %56 = getelementptr inbounds %struct.i40e_qvlist_info, %struct.i40e_qvlist_info* %55, i32 0, i32 1
  %57 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %57, i64 %58
  store %struct.i40e_qv_info* %59, %struct.i40e_qv_info** %10, align 8
  %60 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %61 = icmp ne %struct.i40e_qv_info* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %166

63:                                               ; preds = %54
  %64 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %65 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %70, %73
  %75 = icmp uge i64 %67, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %63
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %63
  br label %172

83:                                               ; preds = %76
  %84 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %85 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %88, i64 %89
  %91 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %92 = bitcast %struct.i40e_qv_info* %90 to i8*
  %93 = bitcast %struct.i40e_qv_info* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 32, i1 false)
  %94 = load i64, i64* %11, align 8
  %95 = sub i64 %94, 1
  %96 = call i64 @I40E_PFINT_LNKLSTN(i64 %95)
  store i64 %96, i64* %13, align 8
  %97 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %98 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @I40E_QUEUE_INVALID_IDX, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %83
  %103 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK, align 8
  %106 = call i32 @wr32(%struct.i40e_hw* %103, i64 %104, i64 %105)
  br label %143

107:                                              ; preds = %83
  %108 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %109 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK, align 8
  %112 = and i64 %110, %111
  %113 = load i64, i64* @I40E_QUEUE_TYPE_PE_CEQ, align 8
  %114 = load i64, i64* @I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT, align 8
  %115 = shl i64 %113, %114
  %116 = or i64 %112, %115
  store i64 %116, i64* %14, align 8
  %117 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %14, align 8
  %120 = call i32 @wr32(%struct.i40e_hw* %117, i64 %118, i64 %119)
  %121 = load i64, i64* @I40E_PFINT_CEQCTL_CAUSE_ENA_MASK, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* @I40E_PFINT_CEQCTL_MSIX_INDX_SHIFT, align 8
  %124 = shl i64 %122, %123
  %125 = or i64 %121, %124
  %126 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %127 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @I40E_PFINT_CEQCTL_ITR_INDX_SHIFT, align 8
  %130 = shl i64 %128, %129
  %131 = or i64 %125, %130
  %132 = load i64, i64* @I40E_QUEUE_END_OF_LIST, align 8
  %133 = load i64, i64* @I40E_PFINT_CEQCTL_NEXTQ_INDX_SHIFT, align 8
  %134 = shl i64 %132, %133
  %135 = or i64 %131, %134
  store i64 %135, i64* %14, align 8
  %136 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %137 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %138 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @I40E_PFINT_CEQCTL(i64 %139)
  %141 = load i64, i64* %14, align 8
  %142 = call i32 @wr32(%struct.i40e_hw* %136, i64 %140, i64 %141)
  br label %143

143:                                              ; preds = %107, %102
  %144 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %145 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @I40E_QUEUE_INVALID_IDX, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %143
  %150 = load i64, i64* @I40E_PFINT_AEQCTL_CAUSE_ENA_MASK, align 8
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @I40E_PFINT_AEQCTL_MSIX_INDX_SHIFT, align 8
  %153 = shl i64 %151, %152
  %154 = or i64 %150, %153
  %155 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %10, align 8
  %156 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @I40E_PFINT_AEQCTL_ITR_INDX_SHIFT, align 8
  %159 = shl i64 %157, %158
  %160 = or i64 %154, %159
  store i64 %160, i64* %14, align 8
  %161 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %162 = load i64, i64* @I40E_PFINT_AEQCTL, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i32 @wr32(%struct.i40e_hw* %161, i64 %162, i64 %163)
  br label %165

165:                                              ; preds = %149, %143
  br label %166

166:                                              ; preds = %165, %62
  %167 = load i64, i64* %12, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %12, align 8
  br label %48

169:                                              ; preds = %48
  %170 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %171 = call i32 @i40e_flush(%struct.i40e_hw* %170)
  store i32 0, i32* %4, align 4
  br label %181

172:                                              ; preds = %82
  %173 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %174 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = call i32 @kfree(%struct.TYPE_4__* %175)
  %177 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %178 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %177, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %178, align 8
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %172, %169, %37
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.TYPE_4__*, %struct.i40e_qv_info*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @I40E_PFINT_LNKLSTN(i64) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i64, i64) #1

declare dso_local i64 @I40E_PFINT_CEQCTL(i64) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
