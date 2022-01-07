; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_cp_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_cp_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.qed_iwarp_fpdu = type { i64, i64, i32*, i32, %struct.qed_iwarp_ll2_buff* }
%struct.unaligned_opaque_data = type { i32 }
%struct.qed_iwarp_ll2_buff = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [145 x i8] c"MPA ALIGN: Unexpected: buffer is not large enough for split fpdu buff_size = %d mpa_frag_len = %d, tcp_payload_size = %d, incomplete_bytes = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"MPA ALIGN Copying fpdu: [%p, %d] [%p, %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"MPA ALIGN: split fpdu buff_size = %d mpa_frag_len = %d, tcp_payload_size = %d, incomplete_bytes = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*, %struct.unaligned_opaque_data*, %struct.qed_iwarp_ll2_buff*, i64)* @qed_iwarp_cp_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_cp_pkt(%struct.qed_hwfn* %0, %struct.qed_iwarp_fpdu* %1, %struct.unaligned_opaque_data* %2, %struct.qed_iwarp_ll2_buff* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_iwarp_fpdu*, align 8
  %9 = alloca %struct.unaligned_opaque_data*, align 8
  %10 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_iwarp_fpdu* %1, %struct.qed_iwarp_fpdu** %8, align 8
  store %struct.unaligned_opaque_data* %2, %struct.unaligned_opaque_data** %9, align 8
  store %struct.qed_iwarp_ll2_buff* %3, %struct.qed_iwarp_ll2_buff** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %21 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %26 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = icmp sgt i64 %24, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %5
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %32 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %33 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %36 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %40 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @DP_ERR(%struct.qed_hwfn* %31, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str, i64 0, i64 0), i32* %34, i64 %37, i64 %38, i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %145

45:                                               ; preds = %5
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %47 = load i32, i32* @QED_MSG_RDMA, align 4
  %48 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %49 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %52 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %55 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %9, align 8
  %58 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = ptrtoint i32* %61 to i64
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %46, i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %50, i64 %53, i64 %62, i64 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %67 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %70 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @memcpy(i32* %65, i32* %68, i64 %71)
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %75 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %79 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %9, align 8
  %82 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @memcpy(i32* %77, i32* %85, i64 %86)
  %88 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %89 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %90 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %91 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %90, i32 0, i32 4
  %92 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %91, align 8
  %93 = call i32 @qed_iwarp_recycle_pkt(%struct.qed_hwfn* %88, %struct.qed_iwarp_fpdu* %89, %struct.qed_iwarp_ll2_buff* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %45
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %6, align 4
  br label %145

98:                                               ; preds = %45
  %99 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %100 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %104 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %11, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @memcpy(i32* %101, i32* %102, i64 %107)
  %109 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %110 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %111 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %110, i32 0, i32 4
  store %struct.qed_iwarp_ll2_buff* %109, %struct.qed_iwarp_ll2_buff** %111, align 8
  %112 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %113 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %116 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %118 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %121 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %120, i32 0, i32 2
  store i32* %119, i32** %121, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %124 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %129 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %133 = load i32, i32* @QED_MSG_RDMA, align 4
  %134 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %10, align 8
  %135 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %138 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %8, align 8
  %142 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %132, i32 %133, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32* %136, i64 %139, i64 %140, i64 %143)
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %98, %96, %30
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32*, i64, i64, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32*, i64, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @qed_iwarp_recycle_pkt(%struct.qed_hwfn*, %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_ll2_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
