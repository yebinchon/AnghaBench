; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_vnics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_vnics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_vnic_info* }
%struct.bnxt_vnic_info = type { i32, i8*, i8**, i8* }

@INVALID_HW_RING_ID = common dso_local global i8* null, align 8
@BNXT_MAX_CTX_PER_VNIC = common dso_local global i32 0, align 4
@HW_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_init_vnics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_init_vnics(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_vnic_info*, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %73, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %76

12:                                               ; preds = %6
  %13 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 1
  %15 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %15, i64 %17
  store %struct.bnxt_vnic_info* %18, %struct.bnxt_vnic_info** %4, align 8
  %19 = load i8*, i8** @INVALID_HW_RING_ID, align 8
  %20 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %21 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %34, %12
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @BNXT_MAX_CTX_PER_VNIC, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i8*, i8** @INVALID_HW_RING_ID, align 8
  %28 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %27, i8** %33, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load i8*, i8** @INVALID_HW_RING_ID, align 8
  %39 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %40 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 1
  %43 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %43, i64 %45
  %47 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %37
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %55 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @HW_HASH_KEY_SIZE, align 4
  %58 = call i32 @prandom_bytes(i32 %56, i32 %57)
  br label %71

59:                                               ; preds = %50
  %60 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %61 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %64 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %63, i32 0, i32 1
  %65 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %64, align 8
  %66 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %65, i64 0
  %67 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @HW_HASH_KEY_SIZE, align 4
  %70 = call i32 @memcpy(i32 %62, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %53
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %6

76:                                               ; preds = %6
  ret void
}

declare dso_local i32 @prandom_bytes(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
