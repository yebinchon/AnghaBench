; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_validate_e1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_validate_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i32, %struct.bnx2x_mcast_obj* }
%struct.bnx2x_mcast_obj = type { i32 (%struct.bnx2x_mcast_obj*)*, i64, i32, i32 (%struct.bnx2x_mcast_obj*, i64)* }

@BNX2X_MCAST_CMD_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't use `set' command on e1!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Command %d, p->mcast_list_len=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Can't configure more than %d multicast MACs on 57710\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"p->mcast_list_len=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32)* @bnx2x_mcast_validate_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_mcast_validate_e1(%struct.bnx2x* %0, %struct.bnx2x_mcast_ramrod_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_mcast_obj*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_mcast_ramrod_params* %1, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %10, i32 0, i32 1
  %12 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %11, align 8
  store %struct.bnx2x_mcast_obj* %12, %struct.bnx2x_mcast_obj** %8, align 8
  %13 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %14 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %13, i32 0, i32 0
  %15 = load i32 (%struct.bnx2x_mcast_obj*)*, i32 (%struct.bnx2x_mcast_obj*)** %14, align 8
  %16 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %17 = call i32 %15(%struct.bnx2x_mcast_obj* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @BNX2X_MCAST_CMD_SET, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %103

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %82 [
    i32 129, label %27
    i32 128, label %33
    i32 131, label %44
    i32 130, label %44
  ]

27:                                               ; preds = %25
  %28 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %29 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %28, i32 0, i32 3
  %30 = load i32 (%struct.bnx2x_mcast_obj*, i64)*, i32 (%struct.bnx2x_mcast_obj*, i64)** %29, align 8
  %31 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %32 = call i32 %30(%struct.bnx2x_mcast_obj* %31, i64 0)
  br label %33

33:                                               ; preds = %25, %27
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @BNX2X_MSG_SP, align 4
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, i64, ...) @DP(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %39, i32 %42)
  br label %87

44:                                               ; preds = %25, %25
  %45 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %46 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %50 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %55 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %103

60:                                               ; preds = %44
  %61 = load i32, i32* @BNX2X_MSG_SP, align 4
  %62 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %63 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = call i32 (i32, i8*, i64, ...) @DP(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %68 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %73 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %72, i32 0, i32 3
  %74 = load i32 (%struct.bnx2x_mcast_obj*, i64)*, i32 (%struct.bnx2x_mcast_obj*, i64)** %73, align 8
  %75 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %76 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %77 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = call i32 %74(%struct.bnx2x_mcast_obj* %75, i64 %79)
  br label %81

81:                                               ; preds = %71, %60
  br label %87

82:                                               ; preds = %25
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %103

87:                                               ; preds = %81, %33
  %88 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %89 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %94 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %97 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 8
  br label %102

102:                                              ; preds = %92, %87
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %82, %53, %21
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @DP(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
