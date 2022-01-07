; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c___rvu_mbox_up_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c___rvu_mbox_up_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu_work = type { %struct.rvu* }
%struct.rvu = type { i32, %struct.mbox_wq_info, %struct.mbox_wq_info }
%struct.mbox_wq_info = type { %struct.otx2_mbox, %struct.rvu_work* }
%struct.otx2_mbox = type { i32, %struct.otx2_mbox_dev* }
%struct.otx2_mbox_dev = type { i32, %struct.mbox_msghdr* }
%struct.mbox_msghdr = type { i32, i32, i64, i64, i32 }
%struct.mbox_hdr = type { i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"mbox up handler: num_msgs = 0\0A\00", align 1
@MBOX_MSG_ALIGN = common dso_local global i32 0, align 4
@MBOX_MSG_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Mbox msg with unknown ID 0x%x\0A\00", align 1
@OTX2_MBOX_RSP_SIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Mbox msg with wrong signature %x, ID 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Mbox msg response has err %d, ID 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu_work*, i32)* @__rvu_mbox_up_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rvu_mbox_up_handler(%struct.rvu_work* %0, i32 %1) #0 {
  %3 = alloca %struct.rvu_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.otx2_mbox_dev*, align 8
  %7 = alloca %struct.mbox_hdr*, align 8
  %8 = alloca %struct.mbox_msghdr*, align 8
  %9 = alloca %struct.mbox_wq_info*, align 8
  %10 = alloca %struct.otx2_mbox*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu_work* %0, %struct.rvu_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.rvu_work*, %struct.rvu_work** %3, align 8
  %15 = getelementptr inbounds %struct.rvu_work, %struct.rvu_work* %14, i32 0, i32 0
  %16 = load %struct.rvu*, %struct.rvu** %15, align 8
  store %struct.rvu* %16, %struct.rvu** %5, align 8
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %21
  ]

18:                                               ; preds = %2
  %19 = load %struct.rvu*, %struct.rvu** %5, align 8
  %20 = getelementptr inbounds %struct.rvu, %struct.rvu* %19, i32 0, i32 2
  store %struct.mbox_wq_info* %20, %struct.mbox_wq_info** %9, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.rvu*, %struct.rvu** %5, align 8
  %23 = getelementptr inbounds %struct.rvu, %struct.rvu* %22, i32 0, i32 1
  store %struct.mbox_wq_info* %23, %struct.mbox_wq_info** %9, align 8
  br label %25

24:                                               ; preds = %2
  br label %154

25:                                               ; preds = %21, %18
  %26 = load %struct.rvu_work*, %struct.rvu_work** %3, align 8
  %27 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %9, align 8
  %28 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %27, i32 0, i32 1
  %29 = load %struct.rvu_work*, %struct.rvu_work** %28, align 8
  %30 = ptrtoint %struct.rvu_work* %26 to i64
  %31 = ptrtoint %struct.rvu_work* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load %struct.mbox_wq_info*, %struct.mbox_wq_info** %9, align 8
  %36 = getelementptr inbounds %struct.mbox_wq_info, %struct.mbox_wq_info* %35, i32 0, i32 0
  store %struct.otx2_mbox* %36, %struct.otx2_mbox** %10, align 8
  %37 = load %struct.otx2_mbox*, %struct.otx2_mbox** %10, align 8
  %38 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %37, i32 0, i32 1
  %39 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %39, i64 %41
  store %struct.otx2_mbox_dev* %42, %struct.otx2_mbox_dev** %6, align 8
  %43 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %6, align 8
  %44 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %43, i32 0, i32 1
  %45 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %44, align 8
  %46 = load %struct.otx2_mbox*, %struct.otx2_mbox** %10, align 8
  %47 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %45, i64 %49
  %51 = bitcast %struct.mbox_msghdr* %50 to %struct.mbox_hdr*
  store %struct.mbox_hdr* %51, %struct.mbox_hdr** %7, align 8
  %52 = load %struct.mbox_hdr*, %struct.mbox_hdr** %7, align 8
  %53 = getelementptr inbounds %struct.mbox_hdr, %struct.mbox_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %25
  %57 = load %struct.rvu*, %struct.rvu** %5, align 8
  %58 = getelementptr inbounds %struct.rvu, %struct.rvu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %154

61:                                               ; preds = %25
  %62 = load %struct.otx2_mbox*, %struct.otx2_mbox** %10, align 8
  %63 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MBOX_MSG_ALIGN, align 4
  %66 = call i32 @ALIGN(i32 32, i32 %65)
  %67 = add nsw i32 %64, %66
  store i32 %67, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %147, %61
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.mbox_hdr*, %struct.mbox_hdr** %7, align 8
  %71 = getelementptr inbounds %struct.mbox_hdr, %struct.mbox_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %150

74:                                               ; preds = %68
  %75 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %6, align 8
  %76 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %75, i32 0, i32 1
  %77 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %77, i64 %79
  store %struct.mbox_msghdr* %80, %struct.mbox_msghdr** %8, align 8
  %81 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %82 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MBOX_MSG_MAX, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %74
  %87 = load %struct.rvu*, %struct.rvu** %5, align 8
  %88 = getelementptr inbounds %struct.rvu, %struct.rvu* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %91 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  br label %135

95:                                               ; preds = %74
  %96 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %97 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @OTX2_MBOX_RSP_SIG, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load %struct.rvu*, %struct.rvu** %5, align 8
  %103 = getelementptr inbounds %struct.rvu, %struct.rvu* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %106 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %109 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %107, i32 %110)
  br label %135

112:                                              ; preds = %95
  %113 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %114 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %117 [
    i32 130, label %116
  ]

116:                                              ; preds = %112
  br label %134

117:                                              ; preds = %112
  %118 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %119 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load %struct.rvu*, %struct.rvu** %5, align 8
  %124 = getelementptr inbounds %struct.rvu, %struct.rvu* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %127 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %130 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %128, i32 %131)
  br label %133

133:                                              ; preds = %122, %117
  br label %134

134:                                              ; preds = %133, %116
  br label %135

135:                                              ; preds = %134, %101, %86
  %136 = load %struct.otx2_mbox*, %struct.otx2_mbox** %10, align 8
  %137 = getelementptr inbounds %struct.otx2_mbox, %struct.otx2_mbox* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.mbox_msghdr*, %struct.mbox_msghdr** %8, align 8
  %140 = getelementptr inbounds %struct.mbox_msghdr, %struct.mbox_msghdr* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %138, %141
  store i32 %142, i32* %11, align 4
  %143 = load %struct.otx2_mbox_dev*, %struct.otx2_mbox_dev** %6, align 8
  %144 = getelementptr inbounds %struct.otx2_mbox_dev, %struct.otx2_mbox_dev* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %68

150:                                              ; preds = %68
  %151 = load %struct.otx2_mbox*, %struct.otx2_mbox** %10, align 8
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @otx2_mbox_reset(%struct.otx2_mbox* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %56, %24
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @otx2_mbox_reset(%struct.otx2_mbox*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
