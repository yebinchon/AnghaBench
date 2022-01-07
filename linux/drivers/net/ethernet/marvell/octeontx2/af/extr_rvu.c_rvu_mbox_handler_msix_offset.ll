; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_mbox_handler_msix_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_mbox_handler_msix_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32* }
%struct.msg_req = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.msix_offset_rsp = type { i32, i32, i32, i32, i8**, i8**, i8**, i8**, i8*, i8* }
%struct.rvu_pfvf = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BLKADDR_NPA = common dso_local global i64 0, align 8
@BLKADDR_NIX0 = common dso_local global i64 0, align 8
@BLKADDR_SSO = common dso_local global i64 0, align 8
@BLKADDR_SSOW = common dso_local global i64 0, align 8
@BLKADDR_TIM = common dso_local global i64 0, align 8
@BLKADDR_CPT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.msg_req*, %struct.msix_offset_rsp*)* @rvu_mbox_handler_msix_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_mbox_handler_msix_offset(%struct.rvu* %0, %struct.msg_req* %1, %struct.msix_offset_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.msg_req*, align 8
  %7 = alloca %struct.msix_offset_rsp*, align 8
  %8 = alloca %struct.rvu_hwinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rvu_pfvf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.msg_req* %1, %struct.msg_req** %6, align 8
  store %struct.msix_offset_rsp* %2, %struct.msix_offset_rsp** %7, align 8
  %13 = load %struct.rvu*, %struct.rvu** %5, align 8
  %14 = getelementptr inbounds %struct.rvu, %struct.rvu* %13, i32 0, i32 0
  %15 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %14, align 8
  store %struct.rvu_hwinfo* %15, %struct.rvu_hwinfo** %8, align 8
  %16 = load %struct.msg_req*, %struct.msg_req** %6, align 8
  %17 = getelementptr inbounds %struct.msg_req, %struct.msg_req* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %20, i32 %21)
  store %struct.rvu_pfvf* %22, %struct.rvu_pfvf** %10, align 8
  %23 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %24 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %204

29:                                               ; preds = %3
  %30 = load %struct.rvu*, %struct.rvu** %5, align 8
  %31 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %32 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @BLKADDR_NPA, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @rvu_get_lf(%struct.rvu* %30, i32* %35, i32 %36, i32 0)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.rvu*, %struct.rvu** %5, align 8
  %39 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %40 = load i64, i64* @BLKADDR_NPA, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @rvu_get_msix_offset(%struct.rvu* %38, %struct.rvu_pfvf* %39, i64 %40, i32 %41)
  %43 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %44 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load %struct.rvu*, %struct.rvu** %5, align 8
  %46 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %47 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @BLKADDR_NIX0, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @rvu_get_lf(%struct.rvu* %45, i32* %50, i32 %51, i32 0)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.rvu*, %struct.rvu** %5, align 8
  %54 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %55 = load i64, i64* @BLKADDR_NIX0, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i8* @rvu_get_msix_offset(%struct.rvu* %53, %struct.rvu_pfvf* %54, i64 %55, i32 %56)
  %58 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %59 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %61 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %64 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %92, %29
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %68 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %65
  %72 = load %struct.rvu*, %struct.rvu** %5, align 8
  %73 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %74 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @BLKADDR_SSO, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @rvu_get_lf(%struct.rvu* %72, i32* %77, i32 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.rvu*, %struct.rvu** %5, align 8
  %82 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %83 = load i64, i64* @BLKADDR_SSO, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i8* @rvu_get_msix_offset(%struct.rvu* %81, %struct.rvu_pfvf* %82, i64 %83, i32 %84)
  %86 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %87 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %86, i32 0, i32 7
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %85, i8** %91, align 8
  br label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %65

95:                                               ; preds = %65
  %96 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %97 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %100 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %128, %95
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %104 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %101
  %108 = load %struct.rvu*, %struct.rvu** %5, align 8
  %109 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %110 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @BLKADDR_SSOW, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @rvu_get_lf(%struct.rvu* %108, i32* %113, i32 %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load %struct.rvu*, %struct.rvu** %5, align 8
  %118 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %119 = load i64, i64* @BLKADDR_SSOW, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i8* @rvu_get_msix_offset(%struct.rvu* %117, %struct.rvu_pfvf* %118, i64 %119, i32 %120)
  %122 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %123 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %122, i32 0, i32 6
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %121, i8** %127, align 8
  br label %128

128:                                              ; preds = %107
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %101

131:                                              ; preds = %101
  %132 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %133 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %136 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %164, %131
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %140 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %167

143:                                              ; preds = %137
  %144 = load %struct.rvu*, %struct.rvu** %5, align 8
  %145 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %146 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @BLKADDR_TIM, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @rvu_get_lf(%struct.rvu* %144, i32* %149, i32 %150, i32 %151)
  store i32 %152, i32* %11, align 4
  %153 = load %struct.rvu*, %struct.rvu** %5, align 8
  %154 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %155 = load i64, i64* @BLKADDR_TIM, align 8
  %156 = load i32, i32* %11, align 4
  %157 = call i8* @rvu_get_msix_offset(%struct.rvu* %153, %struct.rvu_pfvf* %154, i64 %155, i32 %156)
  %158 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %159 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %158, i32 0, i32 5
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  store i8* %157, i8** %163, align 8
  br label %164

164:                                              ; preds = %143
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %137

167:                                              ; preds = %137
  %168 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %169 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %172 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %200, %167
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %176 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %173
  %180 = load %struct.rvu*, %struct.rvu** %5, align 8
  %181 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %182 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @BLKADDR_CPT0, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @rvu_get_lf(%struct.rvu* %180, i32* %185, i32 %186, i32 %187)
  store i32 %188, i32* %11, align 4
  %189 = load %struct.rvu*, %struct.rvu** %5, align 8
  %190 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %191 = load i64, i64* @BLKADDR_CPT0, align 8
  %192 = load i32, i32* %11, align 4
  %193 = call i8* @rvu_get_msix_offset(%struct.rvu* %189, %struct.rvu_pfvf* %190, i64 %191, i32 %192)
  %194 = load %struct.msix_offset_rsp*, %struct.msix_offset_rsp** %7, align 8
  %195 = getelementptr inbounds %struct.msix_offset_rsp, %struct.msix_offset_rsp* %194, i32 0, i32 4
  %196 = load i8**, i8*** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  store i8* %193, i8** %199, align 8
  br label %200

200:                                              ; preds = %179
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %173

203:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %203, %28
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, i32*, i32, i32) #1

declare dso_local i8* @rvu_get_msix_offset(%struct.rvu*, %struct.rvu_pfvf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
