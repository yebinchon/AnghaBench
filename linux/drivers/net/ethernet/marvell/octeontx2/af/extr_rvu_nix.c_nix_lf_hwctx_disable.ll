; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_lf_hwctx_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_lf_hwctx_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.hwctx_disable_req = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.rvu_pfvf = type { i64*, i64*, i64*, %struct.TYPE_13__*, %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.nix_aq_enq_req = type { i64, i32, i32, %struct.TYPE_12__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@NIX_AF_ERR_AQ_ENQUEUE = common dso_local global i32 0, align 4
@NIX_AQ_CTYPE_CQ = common dso_local global i64 0, align 8
@NIX_AQ_CTYPE_SQ = common dso_local global i64 0, align 8
@NIX_AQ_CTYPE_RQ = common dso_local global i64 0, align 8
@NIX_AQ_INSTOP_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to disable %s:%d context\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"CQ\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RQ\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.hwctx_disable_req*)* @nix_lf_hwctx_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_lf_hwctx_disable(%struct.rvu* %0, %struct.hwctx_disable_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.hwctx_disable_req*, align 8
  %6 = alloca %struct.rvu_pfvf*, align 8
  %7 = alloca %struct.nix_aq_enq_req, align 8
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
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %13, i32 %17)
  store %struct.rvu_pfvf* %18, %struct.rvu_pfvf** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %20 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %19, i32 0, i32 5
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = icmp ne %struct.TYPE_18__* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %25 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %24, i32 0, i32 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = icmp ne %struct.TYPE_21__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %30 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %29, i32 0, i32 3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %23, %2
  %34 = load i32, i32* @NIX_AF_ERR_AQ_ENQUEUE, align 4
  store i32 %34, i32* %3, align 4
  br label %152

35:                                               ; preds = %28
  %36 = call i32 @memset(%struct.nix_aq_enq_req* %7, i32 0, i32 72)
  %37 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %38 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %44 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NIX_AQ_CTYPE_CQ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %54 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %53, i32 0, i32 5
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %59 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  store i64* %60, i64** %8, align 8
  br label %61

61:                                               ; preds = %48, %35
  %62 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %63 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NIX_AQ_CTYPE_SQ, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %73 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %72, i32 0, i32 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %78 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  store i64* %79, i64** %8, align 8
  br label %80

80:                                               ; preds = %67, %61
  %81 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %82 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NIX_AQ_CTYPE_RQ, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %92 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %91, i32 0, i32 3
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  %96 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %97 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  store i64* %98, i64** %8, align 8
  br label %99

99:                                               ; preds = %86, %80
  %100 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %101 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = load i32, i32* @NIX_AQ_INSTOP_WRITE, align 4
  %105 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %147, %99
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %150

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = load i64*, i64** %8, align 8
  %113 = call i32 @test_bit(i32 %111, i64* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %147

116:                                              ; preds = %110
  %117 = load i32, i32* %9, align 4
  %118 = getelementptr inbounds %struct.nix_aq_enq_req, %struct.nix_aq_enq_req* %7, i32 0, i32 1
  store i32 %117, i32* %118, align 8
  %119 = load %struct.rvu*, %struct.rvu** %4, align 8
  %120 = call i32 @rvu_nix_aq_enq_inst(%struct.rvu* %119, %struct.nix_aq_enq_req* %7, i32* null)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %116
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %11, align 4
  %125 = load %struct.rvu*, %struct.rvu** %4, align 8
  %126 = getelementptr inbounds %struct.rvu, %struct.rvu* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %129 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NIX_AQ_CTYPE_CQ, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %142

134:                                              ; preds = %123
  %135 = load %struct.hwctx_disable_req*, %struct.hwctx_disable_req** %5, align 8
  %136 = getelementptr inbounds %struct.hwctx_disable_req, %struct.hwctx_disable_req* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @NIX_AQ_CTYPE_RQ, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  br label %142

142:                                              ; preds = %134, %133
  %143 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %133 ], [ %141, %134 ]
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %116
  br label %147

147:                                              ; preds = %146, %115
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %106

150:                                              ; preds = %106
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %33
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @memset(%struct.nix_aq_enq_req*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @rvu_nix_aq_enq_inst(%struct.rvu*, %struct.nix_aq_enq_req*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
