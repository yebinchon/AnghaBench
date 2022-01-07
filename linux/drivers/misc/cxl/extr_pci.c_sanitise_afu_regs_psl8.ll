; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_sanitise_afu_regs_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_sanitise_afu_regs_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (%struct.cxl_afu*)* }
%struct.cxl_afu = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@CXL_AFU_Cntl_An = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_ES_MASK = common dso_local global i32 0, align 4
@CXL_AFU_Cntl_An_ES_Disabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WARNING: AFU was not disabled: %#016llx\0A\00", align 1
@cxl_ops = common dso_local global %struct.TYPE_8__* null, align 8
@EIO = common dso_local global i32 0, align 4
@CXL_PSL_SPAP_An = common dso_local global i32 0, align 4
@CXL_PSL_IVTE_Limit_An = common dso_local global i32 0, align 4
@CXL_PSL_IVTE_Offset_An = common dso_local global i32 0, align 4
@CXL_PSL_AMBAR_An = common dso_local global i32 0, align 4
@CXL_PSL_SPOffset_An = common dso_local global i32 0, align 4
@CXL_HAURP_An = common dso_local global i32 0, align 4
@CXL_CSRP_An = common dso_local global i32 0, align 4
@CXL_AURP1_An = common dso_local global i32 0, align 4
@CXL_AURP0_An = common dso_local global i32 0, align 4
@CXL_SSTP1_An = common dso_local global i32 0, align 4
@CXL_SSTP0_An = common dso_local global i32 0, align 4
@CXL_PSL_DSISR_An = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"AFU had pending DSISR: %#016llx\0A\00", align 1
@CXL_PSL_DSISR_TRANS = common dso_local global i32 0, align 4
@CXL_PSL_TFC_An = common dso_local global i32 0, align 4
@CXL_PSL_TFC_An_AE = common dso_local global i32 0, align 4
@CXL_PSL_TFC_An_A = common dso_local global i32 0, align 4
@CXL_PSL_SERR_An = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"AFU had pending SERR: %#016llx\0A\00", align 1
@CXL_PSL_ErrStat_An = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"AFU had pending error status: %#016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @sanitise_afu_regs_psl8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitise_afu_regs_psl8(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %5 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %6 = load i32, i32* @CXL_AFU_Cntl_An, align 4
  %7 = call i32 @cxl_p2n_read(%struct.cxl_afu* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CXL_AFU_Cntl_An_ES_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @CXL_AFU_Cntl_An_ES_Disabled, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %15 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cxl_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64 (%struct.cxl_afu*)*, i64 (%struct.cxl_afu*)** %19, align 8
  %21 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %22 = call i64 %20(%struct.cxl_afu* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %150

27:                                               ; preds = %13
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %29 = call i64 @cxl_afu_disable(%struct.cxl_afu* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %150

34:                                               ; preds = %27
  %35 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %36 = call i64 @cxl_psl_purge(%struct.cxl_afu* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %150

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %44 = load i32, i32* @CXL_PSL_SPAP_An, align 4
  %45 = call i32 @cxl_p1n_write(%struct.cxl_afu* %43, i32 %44, i32 0)
  %46 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %47 = load i32, i32* @CXL_PSL_IVTE_Limit_An, align 4
  %48 = call i32 @cxl_p1n_write(%struct.cxl_afu* %46, i32 %47, i32 0)
  %49 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %50 = load i32, i32* @CXL_PSL_IVTE_Offset_An, align 4
  %51 = call i32 @cxl_p1n_write(%struct.cxl_afu* %49, i32 %50, i32 0)
  %52 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %53 = load i32, i32* @CXL_PSL_AMBAR_An, align 4
  %54 = call i32 @cxl_p1n_write(%struct.cxl_afu* %52, i32 %53, i32 0)
  %55 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %56 = load i32, i32* @CXL_PSL_SPOffset_An, align 4
  %57 = call i32 @cxl_p1n_write(%struct.cxl_afu* %55, i32 %56, i32 0)
  %58 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %59 = load i32, i32* @CXL_HAURP_An, align 4
  %60 = call i32 @cxl_p1n_write(%struct.cxl_afu* %58, i32 %59, i32 0)
  %61 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %62 = load i32, i32* @CXL_CSRP_An, align 4
  %63 = call i32 @cxl_p2n_write(%struct.cxl_afu* %61, i32 %62, i32 0)
  %64 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %65 = load i32, i32* @CXL_AURP1_An, align 4
  %66 = call i32 @cxl_p2n_write(%struct.cxl_afu* %64, i32 %65, i32 0)
  %67 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %68 = load i32, i32* @CXL_AURP0_An, align 4
  %69 = call i32 @cxl_p2n_write(%struct.cxl_afu* %67, i32 %68, i32 0)
  %70 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %71 = load i32, i32* @CXL_SSTP1_An, align 4
  %72 = call i32 @cxl_p2n_write(%struct.cxl_afu* %70, i32 %71, i32 0)
  %73 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %74 = load i32, i32* @CXL_SSTP0_An, align 4
  %75 = call i32 @cxl_p2n_write(%struct.cxl_afu* %73, i32 %74, i32 0)
  %76 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %77 = load i32, i32* @CXL_PSL_DSISR_An, align 4
  %78 = call i32 @cxl_p2n_read(%struct.cxl_afu* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %42
  %82 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %83 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %82, i32 0, i32 0
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @dev_warn(i32* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @CXL_PSL_DSISR_TRANS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %92 = load i32, i32* @CXL_PSL_TFC_An, align 4
  %93 = load i32, i32* @CXL_PSL_TFC_An_AE, align 4
  %94 = call i32 @cxl_p2n_write(%struct.cxl_afu* %91, i32 %92, i32 %93)
  br label %100

95:                                               ; preds = %81
  %96 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %97 = load i32, i32* @CXL_PSL_TFC_An, align 4
  %98 = load i32, i32* @CXL_PSL_TFC_An_A, align 4
  %99 = call i32 @cxl_p2n_write(%struct.cxl_afu* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  br label %101

101:                                              ; preds = %100, %42
  %102 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %103 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %101
  %113 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %114 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %115 = call i32 @cxl_p1n_read(%struct.cxl_afu* %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  %120 = and i32 %119, -65536
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %124 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %123, i32 0, i32 0
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @dev_warn(i32* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %122, %118
  %128 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %129 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %130 = load i32, i32* %4, align 4
  %131 = and i32 %130, -65536
  %132 = call i32 @cxl_p1n_write(%struct.cxl_afu* %128, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %127, %112
  br label %134

134:                                              ; preds = %133, %101
  %135 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %136 = load i32, i32* @CXL_PSL_ErrStat_An, align 4
  %137 = call i32 @cxl_p2n_read(%struct.cxl_afu* %135, i32 %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %142 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %141, i32 0, i32 0
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @dev_warn(i32* %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %146 = load i32, i32* @CXL_PSL_ErrStat_An, align 4
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @cxl_p2n_write(%struct.cxl_afu* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %140, %134
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %38, %31, %24
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @cxl_p2n_read(%struct.cxl_afu*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @cxl_afu_disable(%struct.cxl_afu*) #1

declare dso_local i64 @cxl_psl_purge(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_p2n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_p1n_read(%struct.cxl_afu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
