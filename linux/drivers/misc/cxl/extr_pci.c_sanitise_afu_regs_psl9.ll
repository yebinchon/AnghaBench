; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_sanitise_afu_regs_psl9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_sanitise_afu_regs_psl9.c"
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
@CXL_PSL_AMBAR_An = common dso_local global i32 0, align 4
@CXL_PSL_DSISR_An = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"AFU had pending DSISR: %#016llx\0A\00", align 1
@CXL_PSL9_DSISR_An_TF = common dso_local global i32 0, align 4
@CXL_PSL_TFC_An = common dso_local global i32 0, align 4
@CXL_PSL_TFC_An_AE = common dso_local global i32 0, align 4
@CXL_PSL_TFC_An_A = common dso_local global i32 0, align 4
@CXL_PSL_SERR_An = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"AFU had pending SERR: %#016llx\0A\00", align 1
@CXL_PSL_ErrStat_An = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"AFU had pending error status: %#016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @sanitise_afu_regs_psl9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitise_afu_regs_psl9(%struct.cxl_afu* %0) #0 {
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
  br label %123

27:                                               ; preds = %13
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %29 = call i64 @cxl_afu_disable(%struct.cxl_afu* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %123

34:                                               ; preds = %27
  %35 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %36 = call i64 @cxl_psl_purge(%struct.cxl_afu* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %123

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %44 = load i32, i32* @CXL_PSL_SPAP_An, align 4
  %45 = call i32 @cxl_p1n_write(%struct.cxl_afu* %43, i32 %44, i32 0)
  %46 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %47 = load i32, i32* @CXL_PSL_AMBAR_An, align 4
  %48 = call i32 @cxl_p1n_write(%struct.cxl_afu* %46, i32 %47, i32 0)
  %49 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %50 = load i32, i32* @CXL_PSL_DSISR_An, align 4
  %51 = call i32 @cxl_p2n_read(%struct.cxl_afu* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %42
  %55 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %56 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %55, i32 0, i32 0
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dev_warn(i32* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @CXL_PSL9_DSISR_An_TF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %65 = load i32, i32* @CXL_PSL_TFC_An, align 4
  %66 = load i32, i32* @CXL_PSL_TFC_An_AE, align 4
  %67 = call i32 @cxl_p2n_write(%struct.cxl_afu* %64, i32 %65, i32 %66)
  br label %73

68:                                               ; preds = %54
  %69 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %70 = load i32, i32* @CXL_PSL_TFC_An, align 4
  %71 = load i32, i32* @CXL_PSL_TFC_An_A, align 4
  %72 = call i32 @cxl_p2n_write(%struct.cxl_afu* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %42
  %75 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %76 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %74
  %86 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %87 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %88 = call i32 @cxl_p1n_read(%struct.cxl_afu* %86, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %85
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, -2147483648
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %97 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %96, i32 0, i32 0
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @dev_warn(i32* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %91
  %101 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %102 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, -65536
  %105 = call i32 @cxl_p1n_write(%struct.cxl_afu* %101, i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %100, %85
  br label %107

107:                                              ; preds = %106, %74
  %108 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %109 = load i32, i32* @CXL_PSL_ErrStat_An, align 4
  %110 = call i32 @cxl_p2n_read(%struct.cxl_afu* %108, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %115 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %114, i32 0, i32 0
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @dev_warn(i32* %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %119 = load i32, i32* @CXL_PSL_ErrStat_An, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @cxl_p2n_write(%struct.cxl_afu* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %107
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %38, %31, %24
  %124 = load i32, i32* %2, align 4
  ret i32 %124
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
