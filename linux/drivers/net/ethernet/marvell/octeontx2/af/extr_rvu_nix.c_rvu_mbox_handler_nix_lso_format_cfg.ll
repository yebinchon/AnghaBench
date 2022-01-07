; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_lso_format_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_lso_format_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.nix_lso_format_cfg = type { i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nix_lso_format_cfg_rsp = type { i32 }
%struct.nix_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rvu_pfvf = type { i32 }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIX_LSO_FIELD_MAX = common dso_local global i32 0, align 4
@NIX_AF_ERR_LSO_CFG_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_lso_format_cfg(%struct.rvu* %0, %struct.nix_lso_format_cfg* %1, %struct.nix_lso_format_cfg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_lso_format_cfg*, align 8
  %7 = alloca %struct.nix_lso_format_cfg_rsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nix_hw*, align 8
  %10 = alloca %struct.rvu_pfvf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_lso_format_cfg* %1, %struct.nix_lso_format_cfg** %6, align 8
  store %struct.nix_lso_format_cfg_rsp* %2, %struct.nix_lso_format_cfg_rsp** %7, align 8
  %15 = load %struct.nix_lso_format_cfg*, %struct.nix_lso_format_cfg** %6, align 8
  %16 = getelementptr inbounds %struct.nix_lso_format_cfg, %struct.nix_lso_format_cfg* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.rvu*, %struct.rvu** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %19, i32 %20)
  store %struct.rvu_pfvf* %21, %struct.rvu_pfvf** %10, align 8
  %22 = load %struct.rvu*, %struct.rvu** %5, align 8
  %23 = load i32, i32* @BLKTYPE_NIX, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @rvu_get_blkaddr(%struct.rvu* %22, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %27 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %3
  %34 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %34, i32* %4, align 4
  br label %148

35:                                               ; preds = %30
  %36 = load %struct.rvu*, %struct.rvu** %5, align 8
  %37 = getelementptr inbounds %struct.rvu, %struct.rvu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.nix_hw* @get_nix_hw(i32 %38, i32 %39)
  store %struct.nix_hw* %40, %struct.nix_hw** %9, align 8
  %41 = load %struct.nix_hw*, %struct.nix_hw** %9, align 8
  %42 = icmp ne %struct.nix_hw* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %148

46:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %90, %46
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.nix_hw*, %struct.nix_hw** %9, align 8
  %50 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %81, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @NIX_LSO_FIELD_MAX, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load %struct.rvu*, %struct.rvu** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @NIX_AF_LSO_FORMATX_FIELDX(i32 %62, i32 %63)
  %65 = call i32 @rvu_read64(%struct.rvu* %60, i32 %61, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.nix_lso_format_cfg*, %struct.nix_lso_format_cfg** %6, align 8
  %67 = getelementptr inbounds %struct.nix_lso_format_cfg, %struct.nix_lso_format_cfg* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.nix_lso_format_cfg*, %struct.nix_lso_format_cfg** %6, align 8
  %75 = getelementptr inbounds %struct.nix_lso_format_cfg, %struct.nix_lso_format_cfg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %84

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %55

84:                                               ; preds = %79, %55
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @NIX_LSO_FIELD_MAX, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %93

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %47

93:                                               ; preds = %88, %47
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.nix_hw*, %struct.nix_hw** %9, align 8
  %96 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.nix_lso_format_cfg_rsp*, %struct.nix_lso_format_cfg_rsp** %7, align 8
  %103 = getelementptr inbounds %struct.nix_lso_format_cfg_rsp, %struct.nix_lso_format_cfg_rsp* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %4, align 4
  br label %148

104:                                              ; preds = %93
  %105 = load %struct.nix_hw*, %struct.nix_hw** %9, align 8
  %106 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nix_hw*, %struct.nix_hw** %9, align 8
  %110 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* @NIX_AF_ERR_LSO_CFG_FAIL, align 4
  store i32 %115, i32* %4, align 4
  br label %148

116:                                              ; preds = %104
  %117 = load %struct.nix_hw*, %struct.nix_hw** %9, align 8
  %118 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.nix_lso_format_cfg_rsp*, %struct.nix_lso_format_cfg_rsp** %7, align 8
  %123 = getelementptr inbounds %struct.nix_lso_format_cfg_rsp, %struct.nix_lso_format_cfg_rsp* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 4
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %144, %116
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @NIX_LSO_FIELD_MAX, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = load %struct.rvu*, %struct.rvu** %5, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.nix_lso_format_cfg_rsp*, %struct.nix_lso_format_cfg_rsp** %7, align 8
  %132 = getelementptr inbounds %struct.nix_lso_format_cfg_rsp, %struct.nix_lso_format_cfg_rsp* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @NIX_AF_LSO_FORMATX_FIELDX(i32 %133, i32 %134)
  %136 = load %struct.nix_lso_format_cfg*, %struct.nix_lso_format_cfg** %6, align 8
  %137 = getelementptr inbounds %struct.nix_lso_format_cfg, %struct.nix_lso_format_cfg* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @rvu_write64(%struct.rvu* %129, i32 %130, i32 %135, i32 %142)
  br label %144

144:                                              ; preds = %128
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %124

147:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %114, %100, %43, %33
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local %struct.nix_hw* @get_nix_hw(i32, i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @NIX_AF_LSO_FORMATX_FIELDX(i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
