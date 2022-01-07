; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c___ena_com_submit_admin_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c___ena_com_submit_admin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i32, i32, %struct.ena_admin_acq_entry*, i64, i32 }
%struct.ena_com_admin_queue = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ena_admin_aq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.ena_admin_acq_entry = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"admin queue is full.\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@ENA_ADMIN_AQ_COMMON_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENA_CMD_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ena_comp_ctx* (%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i64, %struct.ena_admin_acq_entry*, i64)* @__ena_com_submit_admin_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ena_comp_ctx* @__ena_com_submit_admin_cmd(%struct.ena_com_admin_queue* %0, %struct.ena_admin_aq_entry* %1, i64 %2, %struct.ena_admin_acq_entry* %3, i64 %4) #0 {
  %6 = alloca %struct.ena_comp_ctx*, align 8
  %7 = alloca %struct.ena_com_admin_queue*, align 8
  %8 = alloca %struct.ena_admin_aq_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ena_admin_acq_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ena_comp_ctx*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %7, align 8
  store %struct.ena_admin_aq_entry* %1, %struct.ena_admin_aq_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ena_admin_acq_entry* %3, %struct.ena_admin_acq_entry** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %18 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 1
  store i64 %20, i64* %15, align 8
  %21 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %22 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %15, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %13, align 8
  %27 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %28 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %27, i32 0, i32 4
  %29 = call i64 @atomic_read(i32* %28)
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %32 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %5
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %38 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.ena_comp_ctx* @ERR_PTR(i32 %43)
  store %struct.ena_comp_ctx* %44, %struct.ena_comp_ctx** %6, align 8
  br label %159

45:                                               ; preds = %5
  %46 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %47 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %14, align 8
  %49 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %50 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ENA_ADMIN_AQ_COMMON_DESC_PHASE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %56 = getelementptr inbounds %struct.ena_admin_aq_entry, %struct.ena_admin_aq_entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK, align 8
  %62 = and i64 %60, %61
  %63 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %64 = getelementptr inbounds %struct.ena_admin_aq_entry, %struct.ena_admin_aq_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %62
  store i64 %67, i64* %65, align 8
  %68 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue* %68, i64 %69, i32 1)
  store %struct.ena_comp_ctx* %70, %struct.ena_comp_ctx** %12, align 8
  %71 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %72 = icmp ne %struct.ena_comp_ctx* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %45
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  %80 = call %struct.ena_comp_ctx* @ERR_PTR(i32 %79)
  store %struct.ena_comp_ctx* %80, %struct.ena_comp_ctx** %6, align 8
  br label %159

81:                                               ; preds = %45
  %82 = load i32, i32* @ENA_CMD_SUBMITTED, align 4
  %83 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %84 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %87 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %10, align 8
  %89 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %90 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %89, i32 0, i32 2
  store %struct.ena_admin_acq_entry* %88, %struct.ena_admin_acq_entry** %90, align 8
  %91 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %92 = getelementptr inbounds %struct.ena_admin_aq_entry, %struct.ena_admin_aq_entry* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %96 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  %98 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %97, i32 0, i32 0
  %99 = call i32 @reinit_completion(i32* %98)
  %100 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %101 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @memcpy(i32* %105, %struct.ena_admin_aq_entry* %106, i64 %107)
  %109 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %110 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  %113 = load i64, i64* %15, align 8
  %114 = and i64 %112, %113
  %115 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %116 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %118 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %123 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %128 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = and i64 %130, %131
  %133 = icmp eq i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %81
  %138 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %139 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %146 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 8
  br label %148

148:                                              ; preds = %137, %81
  %149 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %150 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %154 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @writel(i64 %152, i32 %156)
  %158 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %12, align 8
  store %struct.ena_comp_ctx* %158, %struct.ena_comp_ctx** %6, align 8
  br label %159

159:                                              ; preds = %148, %77, %35
  %160 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %6, align 8
  ret %struct.ena_comp_ctx* %160
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.ena_comp_ctx* @ERR_PTR(i32) #1

declare dso_local %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.ena_admin_aq_entry*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
