; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_detach_rsrcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_detach_rsrcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rsrc_detach = type { i32, i32, i32, i32, i32, i32, i64 }

@BLK_COUNT = common dso_local global i32 0, align 4
@BLKADDR_NPA = common dso_local global i32 0, align 4
@BLKADDR_NIX0 = common dso_local global i32 0, align 4
@BLKADDR_SSO = common dso_local global i32 0, align 4
@BLKADDR_SSOW = common dso_local global i32 0, align 4
@BLKADDR_TIM = common dso_local global i32 0, align 4
@BLKADDR_CPT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.rsrc_detach*, i32)* @rvu_detach_rsrcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_detach_rsrcs(%struct.rvu* %0, %struct.rsrc_detach* %1, i32 %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.rsrc_detach*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvu_hwinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rvu_block*, align 8
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store %struct.rsrc_detach* %1, %struct.rsrc_detach** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rvu*, %struct.rvu** %4, align 8
  %12 = getelementptr inbounds %struct.rvu, %struct.rvu* %11, i32 0, i32 1
  %13 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %12, align 8
  store %struct.rvu_hwinfo* %13, %struct.rvu_hwinfo** %7, align 8
  store i32 1, i32* %8, align 4
  %14 = load %struct.rvu*, %struct.rvu** %4, align 8
  %15 = getelementptr inbounds %struct.rvu, %struct.rvu* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rsrc_detach*, %struct.rsrc_detach** %5, align 8
  %18 = icmp ne %struct.rsrc_detach* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.rsrc_detach*, %struct.rsrc_detach** %5, align 8
  %21 = getelementptr inbounds %struct.rsrc_detach, %struct.rsrc_detach* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %19, %3
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %122, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @BLK_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %125

30:                                               ; preds = %26
  %31 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %7, align 8
  %32 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %31, i32 0, i32 0
  %33 = load %struct.rvu_block*, %struct.rvu_block** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %33, i64 %35
  store %struct.rvu_block* %36, %struct.rvu_block** %9, align 8
  %37 = load %struct.rvu_block*, %struct.rvu_block** %9, align 8
  %38 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %122

43:                                               ; preds = %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %115, label %46

46:                                               ; preds = %43
  %47 = load %struct.rsrc_detach*, %struct.rsrc_detach** %5, align 8
  %48 = icmp ne %struct.rsrc_detach* %47, null
  br i1 %48, label %49, label %115

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @BLKADDR_NPA, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.rsrc_detach*, %struct.rsrc_detach** %5, align 8
  %55 = getelementptr inbounds %struct.rsrc_detach, %struct.rsrc_detach* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %122

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @BLKADDR_NIX0, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.rsrc_detach*, %struct.rsrc_detach** %5, align 8
  %65 = getelementptr inbounds %struct.rsrc_detach, %struct.rsrc_detach* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %122

69:                                               ; preds = %63, %59
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @BLKADDR_SSO, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.rsrc_detach*, %struct.rsrc_detach** %5, align 8
  %75 = getelementptr inbounds %struct.rsrc_detach, %struct.rsrc_detach* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %122

79:                                               ; preds = %73, %69
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @BLKADDR_SSOW, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.rsrc_detach*, %struct.rsrc_detach** %5, align 8
  %85 = getelementptr inbounds %struct.rsrc_detach, %struct.rsrc_detach* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %122

89:                                               ; preds = %83, %79
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @BLKADDR_TIM, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.rsrc_detach*, %struct.rsrc_detach** %5, align 8
  %95 = getelementptr inbounds %struct.rsrc_detach, %struct.rsrc_detach* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %122

99:                                               ; preds = %93, %89
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @BLKADDR_CPT0, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load %struct.rsrc_detach*, %struct.rsrc_detach** %5, align 8
  %105 = getelementptr inbounds %struct.rsrc_detach, %struct.rsrc_detach* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %122

109:                                              ; preds = %103, %99
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %46, %43
  %116 = load %struct.rvu*, %struct.rvu** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.rvu_block*, %struct.rvu_block** %9, align 8
  %119 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @rvu_detach_block(%struct.rvu* %116, i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %115, %108, %98, %88, %78, %68, %58, %42
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %26

125:                                              ; preds = %26
  %126 = load %struct.rvu*, %struct.rvu** %4, align 8
  %127 = getelementptr inbounds %struct.rvu, %struct.rvu* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rvu_detach_block(%struct.rvu*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
