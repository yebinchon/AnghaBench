; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_release_sgt_members.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_release_sgt_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_sg_entry = type { i64 }
%struct.dpaa_bp = type { i32 }
%struct.bm_buffer = type { i32 }

@DPAA_BUFF_RELEASE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_sg_entry*)* @dpaa_release_sgt_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_release_sgt_members(%struct.qm_sg_entry* %0) #0 {
  %2 = alloca %struct.qm_sg_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dpaa_bp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qm_sg_entry* %0, %struct.qm_sg_entry** %2, align 8
  %9 = load i32, i32* @DPAA_BUFF_RELEASE_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca %struct.bm_buffer, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %13 = mul nuw i64 4, %10
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(%struct.bm_buffer* %12, i32 0, i32 %14)
  br label %16

16:                                               ; preds = %81, %1
  %17 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %2, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %17, i64 %19
  %21 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.dpaa_bp* @dpaa_bpid2pool(i64 %22)
  store %struct.dpaa_bp* %23, %struct.dpaa_bp** %5, align 8
  %24 = load %struct.dpaa_bp*, %struct.dpaa_bp** %5, align 8
  %25 = icmp ne %struct.dpaa_bp* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %91

27:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %75, %27
  %29 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %2, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %29, i64 %31
  %33 = call i32 @qm_sg_entry_is_ext(%struct.qm_sg_entry* %32)
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %12, i64 %36
  %38 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %38, i64 %40
  %42 = call i32 @qm_sg_entry_get64(%struct.qm_sg_entry* %41)
  %43 = call i32 @bm_buffer_set64(%struct.bm_buffer* %37, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @ARRAY_SIZE(%struct.bm_buffer* %12)
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %53, i64 %56
  %58 = call i32 @qm_sg_entry_is_final(%struct.qm_sg_entry* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %52
  %61 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %61, i64 %64
  %66 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %68, i64 %70
  %72 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %67, %73
  br label %75

75:                                               ; preds = %60, %52, %48
  %76 = phi i1 [ false, %52 ], [ false, %48 ], [ %74, %60 ]
  br i1 %76, label %28, label %77

77:                                               ; preds = %75
  %78 = load %struct.dpaa_bp*, %struct.dpaa_bp** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @dpaa_bman_release(%struct.dpaa_bp* %78, %struct.bm_buffer* %12, i32 %79)
  br label %81

81:                                               ; preds = %77
  %82 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.qm_sg_entry, %struct.qm_sg_entry* %82, i64 %85
  %87 = call i32 @qm_sg_entry_is_final(%struct.qm_sg_entry* %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br i1 %89, label %16, label %90

90:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %26
  %92 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %8, align 4
  switch i32 %93, label %95 [
    i32 0, label %94
    i32 1, label %94
  ]

94:                                               ; preds = %91, %91
  ret void

95:                                               ; preds = %91
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.bm_buffer*, i32, i32) #2

declare dso_local %struct.dpaa_bp* @dpaa_bpid2pool(i64) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @qm_sg_entry_is_ext(%struct.qm_sg_entry*) #2

declare dso_local i32 @bm_buffer_set64(%struct.bm_buffer*, i32) #2

declare dso_local i32 @qm_sg_entry_get64(%struct.qm_sg_entry*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.bm_buffer*) #2

declare dso_local i32 @qm_sg_entry_is_final(%struct.qm_sg_entry*) #2

declare dso_local i32 @dpaa_bman_release(%struct.dpaa_bp*, %struct.bm_buffer*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
