; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npa.c_npa_lf_hwctx_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npa.c_npa_lf_hwctx_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.hwctx_disable_req = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.rvu_pfvf = type { i64*, i64*, %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.npa_aq_enq_req = type { i64, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@NPA_AF_ERR_AQ_ENQUEUE = common dso_local global i32 0, align 4
@NPA_AQ_CTYPE_POOL = common dso_local global i64 0, align 8
@NPA_AQ_CTYPE_AURA = common dso_local global i64 0, align 8
@NPA_AQ_INSTOP_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to disable %s:%d context\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Aura\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Pool\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.hwctx_disable_req*)* @npa_lf_hwctx_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npa_lf_hwctx_disable(%struct.rvu* %0, %struct.hwctx_disable_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.hwctx_disable_req*, align 8
  %6 = alloca %struct.rvu_pfvf*, align 8
  %7 = alloca %struct.npa_aq_enq_req, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store %struct.hwctx_disable_req* %1, %struct.hwctx_disable_req** %5, align 8
  %13 = load %struct.rvu*, %struct.rvu** %4, align 8
  %14 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %15 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %13, i32 %17)
  store %struct.rvu_pfvf* %18, %struct.rvu_pfvf** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %20 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %19, i32 0, i32 3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %25 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %24, i32 0, i32 2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @NPA_AF_ERR_AQ_ENQUEUE, align 4
  store i32 %29, i32* %3, align 4
  br label %120

30:                                               ; preds = %23
  %31 = call i32 @memset(%struct.npa_aq_enq_req* %7, i32 0, i32 56)
  %32 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %33 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.npa_aq_enq_req, %struct.npa_aq_enq_req* %7, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %39 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NPA_AQ_CTYPE_POOL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.npa_aq_enq_req, %struct.npa_aq_enq_req* %7, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.npa_aq_enq_req, %struct.npa_aq_enq_req* %7, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %49 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %48, i32 0, i32 3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %54 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  store i64* %55, i64** %8, align 8
  br label %76

56:                                               ; preds = %30
  %57 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %58 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NPA_AQ_CTYPE_AURA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.npa_aq_enq_req, %struct.npa_aq_enq_req* %7, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.npa_aq_enq_req, %struct.npa_aq_enq_req* %7, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %68 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %67, i32 0, i32 2
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %73 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %8, align 8
  br label %75

75:                                               ; preds = %62, %56
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %78 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.npa_aq_enq_req, %struct.npa_aq_enq_req* %7, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = load i32, i32* @NPA_AQ_INSTOP_WRITE, align 4
  %82 = getelementptr inbounds %struct.npa_aq_enq_req, %struct.npa_aq_enq_req* %7, i32 0, i32 2
  store i32 %81, i32* %82, align 4
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %115, %76
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = load i64*, i64** %8, align 8
  %90 = call i32 @test_bit(i32 %88, i64* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %115

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = getelementptr inbounds %struct.npa_aq_enq_req, %struct.npa_aq_enq_req* %7, i32 0, i32 1
  store i32 %94, i32* %95, align 8
  %96 = load %struct.rvu*, %struct.rvu** %4, align 8
  %97 = call i32 @rvu_npa_aq_enq_inst(%struct.rvu* %96, %struct.npa_aq_enq_req* %7, i32* null)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %93
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %11, align 4
  %102 = load %struct.rvu*, %struct.rvu** %4, align 8
  %103 = getelementptr inbounds %struct.rvu, %struct.rvu* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %106 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NPA_AQ_CTYPE_AURA, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %111, i32 %112)
  br label %114

114:                                              ; preds = %100, %93
  br label %115

115:                                              ; preds = %114, %92
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %83

118:                                              ; preds = %83
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %28
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @memset(%struct.npa_aq_enq_req*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @rvu_npa_aq_enq_inst(%struct.rvu*, %struct.npa_aq_enq_req*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
