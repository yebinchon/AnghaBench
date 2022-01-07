; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_ctx_validation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_ctx_validation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.eth_context = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"bad context pointer %p\0A\00", align 1
@CDU_REGION_NUMBER_UCM_AG = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@CDU_REGION_NUMBER_XCM_AG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_ctx_validation(%struct.bnx2x* %0, %struct.eth_context* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.eth_context*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.eth_context* %1, %struct.eth_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.eth_context*, %struct.eth_context** %5, align 8
  %8 = icmp ne %struct.eth_context* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load %struct.eth_context*, %struct.eth_context** %5, align 8
  %11 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.eth_context* %10)
  br label %31

12:                                               ; preds = %3
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @HW_CID(%struct.bnx2x* %13, i32 %14)
  %16 = load i32, i32* @CDU_REGION_NUMBER_UCM_AG, align 4
  %17 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %18 = call i8* @CDU_RSRVD_VALUE_TYPE_A(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.eth_context*, %struct.eth_context** %5, align 8
  %20 = getelementptr inbounds %struct.eth_context, %struct.eth_context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @HW_CID(%struct.bnx2x* %22, i32 %23)
  %25 = load i32, i32* @CDU_REGION_NUMBER_XCM_AG, align 4
  %26 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %27 = call i8* @CDU_RSRVD_VALUE_TYPE_A(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.eth_context*, %struct.eth_context** %5, align 8
  %29 = getelementptr inbounds %struct.eth_context, %struct.eth_context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  br label %31

31:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @BNX2X_ERR(i8*, %struct.eth_context*) #1

declare dso_local i8* @CDU_RSRVD_VALUE_TYPE_A(i32, i32, i32) #1

declare dso_local i32 @HW_CID(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
