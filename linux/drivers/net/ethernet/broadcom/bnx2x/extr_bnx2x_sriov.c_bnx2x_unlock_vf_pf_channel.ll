; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_unlock_vf_pf_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_unlock_vf_pf_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"VF was %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"lock mismatch: expected %d found %d\00", align 1
@CHANNEL_TLV_NONE = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"VF[%d]: vf pf channel unlocked by %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_unlock_vf_pf_channel(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %9 = icmp ne %struct.bnx2x_virtf* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %12 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.bnx2x_virtf* %11)
  br label %45

13:                                               ; preds = %3
  %14 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %15 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @bnx2x_tlv_supported(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %45

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @WARN(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load i32, i32* @CHANNEL_TLV_NONE, align 4
  %34 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %35 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %36, i32 0, i32 2
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %40 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %41 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @DP(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %21, %20, %10
  ret void
}

declare dso_local i32 @BNX2X_ERR(i8*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_tlv_supported(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
