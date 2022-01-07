; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_mbox_handler_attach_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_mbox_handler_attach_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rsrc_attach = type { i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msg_rsp = type { i32 }

@BLKTYPE_NPA = common dso_local global i32 0, align 4
@BLKTYPE_NIX = common dso_local global i32 0, align 4
@BLKTYPE_SSO = common dso_local global i32 0, align 4
@BLKTYPE_SSOW = common dso_local global i32 0, align 4
@BLKTYPE_TIM = common dso_local global i32 0, align 4
@BLKTYPE_CPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.rsrc_attach*, %struct.msg_rsp*)* @rvu_mbox_handler_attach_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_mbox_handler_attach_resources(%struct.rvu* %0, %struct.rsrc_attach* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.rsrc_attach*, align 8
  %6 = alloca %struct.msg_rsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store %struct.rsrc_attach* %1, %struct.rsrc_attach** %5, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %6, align 8
  %9 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %10 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %14 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load %struct.rvu*, %struct.rvu** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @rvu_detach_rsrcs(%struct.rvu* %18, i32* null, i32 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.rvu*, %struct.rvu** %4, align 8
  %23 = getelementptr inbounds %struct.rvu, %struct.rvu* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.rvu*, %struct.rvu** %4, align 8
  %26 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @rvu_check_rsrc_availability(%struct.rvu* %25, %struct.rsrc_attach* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %145

32:                                               ; preds = %21
  %33 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %34 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.rvu*, %struct.rvu** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @BLKTYPE_NPA, align 4
  %41 = call i32 @rvu_attach_block(%struct.rvu* %38, i32 %39, i32 %40, i32 1)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %44 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.rvu*, %struct.rvu** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @BLKTYPE_NIX, align 4
  %51 = call i32 @rvu_attach_block(%struct.rvu* %48, i32 %49, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %54 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %59 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.rvu*, %struct.rvu** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @BLKTYPE_SSO, align 4
  %66 = call i32 @rvu_detach_block(%struct.rvu* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.rvu*, %struct.rvu** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @BLKTYPE_SSO, align 4
  %71 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %72 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @rvu_attach_block(%struct.rvu* %68, i32 %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %67, %52
  %76 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %77 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %82 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.rvu*, %struct.rvu** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @BLKTYPE_SSOW, align 4
  %89 = call i32 @rvu_detach_block(%struct.rvu* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.rvu*, %struct.rvu** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @BLKTYPE_SSOW, align 4
  %94 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %95 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @rvu_attach_block(%struct.rvu* %91, i32 %92, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %90, %75
  %99 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %100 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %98
  %104 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %105 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.rvu*, %struct.rvu** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @BLKTYPE_TIM, align 4
  %112 = call i32 @rvu_detach_block(%struct.rvu* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.rvu*, %struct.rvu** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @BLKTYPE_TIM, align 4
  %117 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %118 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @rvu_attach_block(%struct.rvu* %114, i32 %115, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %113, %98
  %122 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %123 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %121
  %127 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %128 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.rvu*, %struct.rvu** %4, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @BLKTYPE_CPT, align 4
  %135 = call i32 @rvu_detach_block(%struct.rvu* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.rvu*, %struct.rvu** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @BLKTYPE_CPT, align 4
  %140 = load %struct.rsrc_attach*, %struct.rsrc_attach** %5, align 8
  %141 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @rvu_attach_block(%struct.rvu* %137, i32 %138, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %136, %121
  br label %145

145:                                              ; preds = %144, %31
  %146 = load %struct.rvu*, %struct.rvu** %4, align 8
  %147 = getelementptr inbounds %struct.rvu, %struct.rvu* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i32 @rvu_detach_rsrcs(%struct.rvu*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rvu_check_rsrc_availability(%struct.rvu*, %struct.rsrc_attach*, i32) #1

declare dso_local i32 @rvu_attach_block(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @rvu_detach_block(%struct.rvu*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
