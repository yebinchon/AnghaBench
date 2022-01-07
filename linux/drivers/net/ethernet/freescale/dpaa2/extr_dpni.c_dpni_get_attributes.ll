; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_attr = type { i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_rsp_get_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DPNI_CMDID_GET_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_get_attributes(%struct.fsl_mc_io* %0, i32 %1, i32 %2, %struct.dpni_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpni_attr*, align 8
  %10 = alloca %struct.fsl_mc_command, align 8
  %11 = alloca %struct.dpni_rsp_get_attr*, align 8
  %12 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dpni_attr* %3, %struct.dpni_attr** %9, align 8
  %13 = bitcast %struct.fsl_mc_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPNI_CMDID_GET_ATTR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %20 = call i32 @mc_send_command(%struct.fsl_mc_io* %19, %struct.fsl_mc_command* %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %82

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.dpni_rsp_get_attr*
  store %struct.dpni_rsp_get_attr* %28, %struct.dpni_rsp_get_attr** %11, align 8
  %29 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %30 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %34 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %36 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %39 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %41 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %44 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %46 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %49 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %51 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %54 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %56 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %59 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %61 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le16_to_cpu(i32 %62)
  %64 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %65 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %67 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %70 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %72 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %75 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.dpni_rsp_get_attr*, %struct.dpni_rsp_get_attr** %11, align 8
  %77 = getelementptr inbounds %struct.dpni_rsp_get_attr, %struct.dpni_rsp_get_attr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le16_to_cpu(i32 %78)
  %80 = load %struct.dpni_attr*, %struct.dpni_attr** %9, align 8
  %81 = getelementptr inbounds %struct.dpni_attr, %struct.dpni_attr* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %25, %23
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
