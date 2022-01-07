; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c___rvu_mbox_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c___rvu_mbox_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu_work = type { %struct.rvu* }
%struct.rvu = type { i32, %struct.mbox_wq_info, %struct.mbox_wq_info }
%struct.mbox_wq_info = type { %struct.otx2_mbox, %struct.rvu_work* }
%struct.otx2_mbox = type { i32, %struct.otx2_mbox_dev* }
%struct.otx2_mbox_dev = type { %struct.mbox_msghdr* }
%struct.mbox_msghdr = type { i32, i32, i32, i32 }
%struct.mbox_hdr = type { i32, i32, i32, i32 }

@MBOX_MSG_ALIGN = common dso_local global i32 0, align 4
@RVU_PFVF_PF_MASK = common dso_local global i32 0, align 4
@RVU_PFVF_PF_SHIFT = common dso_local global i32 0, align 4
@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@RVU_PFVF_FUNC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Error %d when processing message %s (0x%x) from PF%d:VF%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Error %d when processing message %s (0x%x) from PF%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu_work*, i32)* @__rvu_mbox_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rvu_mbox_handler(%struct.rvu_work* %0, i32 %1) #0 {
  %3 = alloca %struct.rvu_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.otx2_mbox_dev*, align 8
  %11 = alloca %struct.mbox_hdr*, align 8
  %12 = alloca %struct.mbox_msghdr*, align 8
  %13 = alloca %struct.mbox_wq_info*, align 8
  %14 = alloca %struct.otx2_mbox*, align 8
  store %struct.rvu_work* %0, %struct.rvu_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.rvu_work*, %struct.rvu_work** %3, align 8
  %16 = getelementptr inbounds %struct.rvu_work, %struct.rvu_work* %15, i32 0, i32 0
  %17 = load %struct.rvu*, %struct.rvu** %16, align 8
  store %struct.rvu* %17, %struct.rvu** %5, align 8
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %25 [
    i32 129, label %19
    i32 128, label %22
  ]

19:                                               ; preds = %2
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = getelementptr inbounds %struct.rvu, %struct.rvu* %20, i32 0, i32 2
  store %struct.mbox_wq_info* %21, %struct.mbox_wq_info** %13, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.rvu*, %struct.rvu** %5, align 8
  %24 = getelementptr inbounds %struct.rvu, %struct.rvu* %23, i32 0, i32 1
  store %struct.mbox_wq_info* %24, %struct.mbox_wq_info** %13, align 8
  br label %26

25:                                               ; preds = %2
  br label %176

26:                                               ; preds = %22, %19
  %27 = load %struct.rvu_work*, %struct.rvu_work** %3, align 8
  %28 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %13, align 8
  %29 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %28, i32 0, i32 1
  %30 = load %struct.rvu_work*, %struct.rvu_work** %29, align 8
  %31 = ptrtoint %struct.rvu_work* %27 to i64
  %32 = ptrtoint %struct.rvu_work* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %13, align 8
  %37 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %36, i32 0, i32 0
  store %struct.otx2_mbox* %37, %struct.otx2_mbox** %14, align 8
  %38 = load %struct.otx2_mbox*, %struct.otx2_mbox** %14, align 8
  %39 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %38, i32 0, i32 1
  %40 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %40, i64 %42
  store %struct.otx2_mbox_dev* %43, %struct.otx2_mbox_dev** %10, align 8
  %44 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %10, align 8
  %45 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %44, i32 0, i32 0
  %46 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %45, align 8
  %47 = load %struct.otx2_mbox*, %struct.otx2_mbox** %14, align 8
  %48 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %46, i64 %50
  %52 = bitcast %struct.mbox_msghdr* %51 to %struct.mbox_hdr*
  store %struct.mbox_hdr* %52, %struct.mbox_hdr** %11, align 8
  %53 = load %struct.mbox_hdr*, %struct.mbox_hdr** %11, align 8
  %54 = getelementptr inbounds %struct.mbox_hdr, %struct.mbox_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %26
  br label %176

58:                                               ; preds = %26
  %59 = load %struct.otx2_mbox*, %struct.otx2_mbox** %14, align 8
  %60 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MBOX_MSG_ALIGN, align 4
  %63 = call i32 @ALIGN(i32 16, i32 %62)
  %64 = add nsw i32 %61, %63
  store i32 %64, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %169, %58
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.mbox_hdr*, %struct.mbox_hdr** %11, align 8
  %68 = getelementptr inbounds %struct.mbox_hdr, %struct.mbox_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %172

71:                                               ; preds = %65
  %72 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %10, align 8
  %73 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %72, i32 0, i32 0
  %74 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %74, i64 %76
  store %struct.mbox_msghdr* %77, %struct.mbox_msghdr** %12, align 8
  %78 = load i32, i32* %4, align 4
  switch i32 %78, label %112 [
    i32 129, label %79
    i32 128, label %95
  ]

79:                                               ; preds = %71
  %80 = load i32, i32* @RVU_PFVF_PF_MASK, align 4
  %81 = load i32, i32* @RVU_PFVF_PF_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %85 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @RVU_PFVF_PF_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %92 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %112

95:                                               ; preds = %71
  %96 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %97 = load i32, i32* @RVU_PFVF_FUNC_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %101 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @RVU_PFVF_FUNC_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = add nsw i32 %106, 1
  %108 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %109 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %71, %95, %79
  %113 = load %struct.otx2_mbox*, %struct.otx2_mbox** %14, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %116 = call i32 @rvu_process_mbox_msg(%struct.otx2_mbox* %113, i32 %114, %struct.mbox_msghdr* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %112
  %120 = load %struct.otx2_mbox*, %struct.otx2_mbox** %14, align 8
  %121 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %124 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %122, %125
  store i32 %126, i32* %6, align 4
  br label %169

127:                                              ; preds = %112
  %128 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %129 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %127
  %135 = load %struct.rvu*, %struct.rvu** %5, align 8
  %136 = getelementptr inbounds %struct.rvu, %struct.rvu* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %140 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @otx2_mbox_id2name(i32 %141)
  %143 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %144 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %148 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %151 = and i32 %149, %150
  %152 = sub nsw i32 %151, 1
  %153 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_warn(i32 %137, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %142, i32 %145, i32 %146, i32 %152)
  br label %168

154:                                              ; preds = %127
  %155 = load %struct.rvu*, %struct.rvu** %5, align 8
  %156 = getelementptr inbounds %struct.rvu, %struct.rvu* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %160 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @otx2_mbox_id2name(i32 %161)
  %163 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %12, align 8
  %164 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_warn(i32 %157, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %162, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %154, %134
  br label %169

169:                                              ; preds = %168, %119
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %65

172:                                              ; preds = %65
  %173 = load %struct.otx2_mbox*, %struct.otx2_mbox** %14, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @otx2_mbox_msg_send(%struct.otx2_mbox* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %57, %25
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @rvu_process_mbox_msg(%struct.otx2_mbox*, i32, %struct.mbox_msghdr*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @otx2_mbox_id2name(i32) #1

declare dso_local i32 @otx2_mbox_msg_send(%struct.otx2_mbox*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
