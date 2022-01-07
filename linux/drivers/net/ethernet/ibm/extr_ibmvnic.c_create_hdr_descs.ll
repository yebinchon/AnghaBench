; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_create_hdr_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_create_hdr_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sub_crq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_3__ = type { i32*, i32, i32, i8* }

@IBMVNIC_CRQ_CMD = common dso_local global i8* null, align 8
@IBMVNIC_HDR_EXT_DESC = common dso_local global i32 0, align 4
@IBMVNIC_HDR_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, %union.sub_crq*)* @create_hdr_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_hdr_descs(i32 %0, i32* %1, i32 %2, i32* %3, %union.sub_crq* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %union.sub_crq*, align 8
  %11 = alloca %union.sub_crq, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %union.sub_crq* %4, %union.sub_crq** %10, align 8
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %94, %5
  %19 = load i32, i32* %12, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %109

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32* %29, i32** %15, align 8
  %30 = call i32 @memset(%union.sub_crq* %11, i32 0, i32 40)
  %31 = load i32*, i32** %15, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %21
  %35 = bitcast %union.sub_crq* %11 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %14, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 29
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ 29, %40 ], [ %42, %41 ]
  store i32 %44, i32* %16, align 4
  %45 = load i8*, i8** @IBMVNIC_CRQ_CMD, align 8
  %46 = bitcast %union.sub_crq* %11 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @IBMVNIC_HDR_EXT_DESC, align 4
  %49 = bitcast %union.sub_crq* %11 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %16, align 4
  %52 = bitcast %union.sub_crq* %11 to %struct.TYPE_3__*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %94

54:                                               ; preds = %21
  %55 = bitcast %union.sub_crq* %11 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %14, align 8
  %58 = load i32, i32* %12, align 4
  %59 = icmp sgt i32 %58, 24
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ 24, %60 ], [ %62, %61 ]
  store i32 %64, i32* %16, align 4
  %65 = load i8*, i8** @IBMVNIC_CRQ_CMD, align 8
  %66 = bitcast %union.sub_crq* %11 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @IBMVNIC_HDR_DESC, align 4
  %69 = bitcast %union.sub_crq* %11 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %16, align 4
  %72 = bitcast %union.sub_crq* %11 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = bitcast %union.sub_crq* %11 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cpu_to_be16(i32 %81)
  %83 = bitcast %union.sub_crq* %11 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = bitcast %union.sub_crq* %11 to %struct.TYPE_4__*
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %90, 1
  %92 = bitcast %union.sub_crq* %11 to %struct.TYPE_4__*
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %63, %43
  %95 = load i32*, i32** %14, align 8
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @memcpy(i32* %95, i32* %96, i32 %97)
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load %union.sub_crq*, %union.sub_crq** %10, align 8
  %103 = bitcast %union.sub_crq* %102 to i8*
  %104 = bitcast %union.sub_crq* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 40, i1 false)
  %105 = load %union.sub_crq*, %union.sub_crq** %10, align 8
  %106 = getelementptr inbounds %union.sub_crq, %union.sub_crq* %105, i32 1
  store %union.sub_crq* %106, %union.sub_crq** %10, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %18

109:                                              ; preds = %18
  %110 = load i32, i32* %13, align 4
  ret i32 %110
}

declare dso_local i32 @memset(%union.sub_crq*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
