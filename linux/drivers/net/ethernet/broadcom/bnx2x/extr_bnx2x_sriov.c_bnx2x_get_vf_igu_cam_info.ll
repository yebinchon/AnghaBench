; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_get_vf_igu_cam_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_get_vf_igu_cam_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IGU_REG_MAPPING_MEMORY_SIZE = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY = common dso_local global i64 0, align 8
@IGU_REG_MAPPING_MEMORY_VALID = common dso_local global i32 0, align 4
@IGU_REG_MAPPING_MEMORY_FID = common dso_local global i32 0, align 4
@IGU_FID_ENCODE_IS_PF = common dso_local global i32 0, align 4
@IGU_FID_PF_NUM_MASK = common dso_local global i32 0, align 4
@IGU_FID_VF_NUM_MASK = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s[%d], igu_sb_id=%d, msix=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"PF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"VF\00", align 1
@IGU_REG_MAPPING_MEMORY_VECTOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"vf_sbs_pool is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_get_vf_igu_cam_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_vf_igu_cam_info(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %76, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IGU_REG_MAPPING_MEMORY_SIZE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %79

11:                                               ; preds = %7
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = load i64, i64* @IGU_REG_MAPPING_MEMORY, align 8
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i32 @REG_RD(%struct.bnx2x* %12, i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IGU_REG_MAPPING_MEMORY_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %76

24:                                               ; preds = %11
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IGU_REG_MAPPING_MEMORY_FID, align 4
  %27 = call i32 @GET_FIELD(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IGU_FID_ENCODE_IS_PF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IGU_FID_PF_NUM_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %49

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %39 = call i32 @BP_FUNC(%struct.bnx2x* %38)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IGU_FID_VF_NUM_MASK, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @bnx2x_vf_set_igu_info(%struct.bnx2x* %42, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %41, %36
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @IGU_FID_ENCODE_IS_PF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @IGU_FID_ENCODE_IS_PF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @IGU_FID_PF_NUM_MASK, align 4
  %64 = and i32 %62, %63
  br label %69

65:                                               ; preds = %49
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @IGU_FID_VF_NUM_MASK, align 4
  %68 = and i32 %66, %67
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i32 [ %64, %61 ], [ %68, %65 ]
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @IGU_REG_MAPPING_MEMORY_VECTOR, align 4
  %74 = call i32 @GET_FIELD(i32 %72, i32 %73)
  %75 = call i32 (i32, i8*, ...) @DP(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %70, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %69, %23
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %7

79:                                               ; preds = %7
  %80 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %81 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %82 = call %struct.TYPE_2__* @BP_VFDB(%struct.bnx2x* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @DP(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %87 = call %struct.TYPE_2__* @BP_VFDB(%struct.bnx2x* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  ret i32 %89
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_vf_set_igu_info(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @BP_VFDB(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
