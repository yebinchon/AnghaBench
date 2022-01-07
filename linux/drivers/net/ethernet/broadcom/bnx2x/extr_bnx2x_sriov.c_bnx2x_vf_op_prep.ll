; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_op_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_op_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64 }
%struct.bnx2x_virtf = type { i32 }
%struct.pf_vf_bulletin_content = type { i32 }

@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"PF is down - can't utilize iov-related functionality\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"sriov is disabled - can't utilize iov-related functionality\0A\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"VF is uninitialized - can't utilize iov-related functionality. vfidx was %d BNX2X_NR_VIRTFN was %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to get VF structure for vfidx %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [88 x i8] c"vfqs struct is null. Was this invoked before dynamically enabling SR-IOV? vfidx was %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Bulletin Board struct is null for vfidx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, %struct.bnx2x_virtf**, %struct.pf_vf_bulletin_content**, i32)* @bnx2x_vf_op_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vf_op_prep(%struct.bnx2x* %0, i32 %1, %struct.bnx2x_virtf** %2, %struct.pf_vf_bulletin_content** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x_virtf**, align 8
  %10 = alloca %struct.pf_vf_bulletin_content**, align 8
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.bnx2x_virtf** %2, %struct.bnx2x_virtf*** %9, align 8
  store %struct.pf_vf_bulletin_content** %3, %struct.pf_vf_bulletin_content*** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %82

21:                                               ; preds = %5
  %22 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %23 = call i32 @IS_SRIOV(%struct.bnx2x* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %82

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %32 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %31)
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %37 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %36)
  %38 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %82

41:                                               ; preds = %29
  %42 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x* %42, i32 %43)
  %45 = load %struct.bnx2x_virtf**, %struct.bnx2x_virtf*** %9, align 8
  store %struct.bnx2x_virtf* %44, %struct.bnx2x_virtf** %45, align 8
  %46 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x* %46, i32 %47)
  %49 = load %struct.pf_vf_bulletin_content**, %struct.pf_vf_bulletin_content*** %10, align 8
  store %struct.pf_vf_bulletin_content* %48, %struct.pf_vf_bulletin_content** %49, align 8
  %50 = load %struct.bnx2x_virtf**, %struct.bnx2x_virtf*** %9, align 8
  %51 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %50, align 8
  %52 = icmp ne %struct.bnx2x_virtf* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %82

58:                                               ; preds = %41
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.bnx2x_virtf**, %struct.bnx2x_virtf*** %9, align 8
  %63 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %62, align 8
  %64 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %82

72:                                               ; preds = %61, %58
  %73 = load %struct.pf_vf_bulletin_content**, %struct.pf_vf_bulletin_content*** %10, align 8
  %74 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %73, align 8
  %75 = icmp ne %struct.pf_vf_bulletin_content* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %82

81:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %76, %67, %53, %34, %25, %17
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_NR_VIRTFN(%struct.bnx2x*) #1

declare dso_local %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x*, i32) #1

declare dso_local %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
